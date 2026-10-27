-- Global Olympic Sports Performance Analysis
-- Reference only. The supplied project currently contains Tableau Hyper extracts.
-- Assumptions: source tables and columns below must be created/renamed to match the loaded data.
-- This script has NOT been executed against a Snowflake account.

-- 1) Data completeness checks
SELECT COUNT(*) AS total_rows,
       COUNT_IF(COUNTRY IS NULL OR TRIM(COUNTRY) = '') AS missing_country,
       COUNT_IF(TOTAL_MEDALS IS NULL) AS missing_total_medals
FROM RAW.MEDAL_RESULTS;

-- 2) Exact duplicate check (confirm whether all selected columns define a duplicate)
SELECT COUNTRY, REGION, INVESTMENT_SCORE, TOTAL_MEDALS,
       MEDAL_EFFICIENCY_PCT, HOST_ADVANTAGE, COUNT(*) AS copies
FROM RAW.MEDAL_RESULTS
GROUP BY COUNTRY, REGION, INVESTMENT_SCORE, TOTAL_MEDALS,
         MEDAL_EFFICIENCY_PCT, HOST_ADVANTAGE
HAVING COUNT(*) > 1;

-- 3) Clean/standardize the medal-result view
CREATE OR REPLACE VIEW STG.MEDAL_RESULTS_CLEAN AS
SELECT NULLIF(TRIM(COUNTRY), '') AS COUNTRY,
       UPPER(NULLIF(TRIM(REGION), '')) AS REGION,
       TRY_TO_NUMBER(INVESTMENT_SCORE) AS INVESTMENT_SCORE,
       TRY_TO_NUMBER(TOTAL_MEDALS) AS TOTAL_MEDALS,
       TRY_TO_DOUBLE(MEDAL_EFFICIENCY_PCT) AS MEDAL_EFFICIENCY_PCT,
       UPPER(NULLIF(TRIM(HOST_ADVANTAGE), '')) AS HOST_ADVANTAGE
FROM RAW.MEDAL_RESULTS;

-- 4) Regional mart for dashboard comparison
CREATE OR REPLACE VIEW MART.REGION_MEDAL_EFFICIENCY AS
SELECT REGION,
       AVG(MEDAL_EFFICIENCY_PCT) AS AVG_MEDAL_EFFICIENCY_PCT,
       SUM(TOTAL_MEDALS) AS TOTAL_MEDALS
FROM STG.MEDAL_RESULTS_CLEAN
WHERE REGION IS NOT NULL
GROUP BY REGION;

-- 5) Country ranking summary (assuming source table fields exist)
SELECT COUNTRY, OVERALL_RANK, TOTAL_MEDALS
FROM RAW.COUNTRY_RANKINGS
ORDER BY OVERALL_RANK;

-- 6) Games trend summary (assuming source table fields exist)
SELECT YEAR, SUM(TOTAL_MEDALS_AWARDED) AS TOTAL_MEDALS_AWARDED
FROM RAW.GAMES_SUMMARY
GROUP BY YEAR
ORDER BY YEAR;
