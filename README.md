<div align="center">

# 🏅 Global Olympic Sports Performance Analysis

![Project banner](images/project_banner.png)

**An exploratory data-analytics project using Tableau to investigate Olympic medals, athlete participation, country performance, sport categories, regional efficiency, host nations, and sports-investment patterns.**

[![Tool](https://img.shields.io/badge/Visualization-Tableau-blue)](https://www.tableau.com/)
[![Project](https://img.shields.io/badge/Project-Data%20Analytics-0A7EA4)](#project-overview)
[![Period](https://img.shields.io/badge/Period-1992%E2%80%932026-orange)](#data-scope-and-caveats)

</div>

---

## Table of contents

- [Project overview](#project-overview)
- [Problem statement](#problem-statement)
- [Objectives](#objectives)
- [Stakeholder scenarios](#stakeholder-scenarios)
- [Dashboards and visualizations](#dashboards-and-visualizations)
- [Visual previews](#visual-previews)
- [Data workflow](#data-workflow)
- [Example metrics from the project brief](#example-metrics-from-the-project-brief)
- [Tools and technologies](#tools-and-technologies)
- [Repository structure](#repository-structure)
- [Open the Tableau workbook](#open-the-tableau-workbook)
- [Data quality, limitations, and responsible interpretation](#data-quality-limitations-and-responsible-interpretation)
- [Future improvements](#future-improvements)
- [References](#references)
- [Author](#author)

## Project overview

The Olympic Games provide a global setting in which countries compete across many sports and events. Understanding Olympic performance is more complex than reading a medal table: outcomes can vary by sport, athlete participation, Games edition, region, host nation, and the resources invested in sports development.

This project uses Tableau dashboards and visual storytelling to explore historical Olympic performance. It is designed to help a viewer compare medal outcomes across countries and sports, inspect changes across Olympic years, and formulate questions about athlete development and investment strategies.

The project brief describes a study period of **1992–2026** and identifies the following analytical areas:

- Medal performance by country and Olympic year.
- Athlete participation and medal outcomes.
- Sport-category comparisons, including average medals per athlete.
- Regional medal distribution and efficiency.
- Medal totals for Olympic host nations.
- The relationship between sports-investment indicators and medal output.

> **Data note:** The stated date range and the example figures below come from the supplied project brief. Confirm the available years, field definitions, and values against the workbook’s embedded extracts before treating any figure as a verified result.

## Problem statement

Historical Olympic data can be wide-ranging and difficult to compare consistently. A single total-medal ranking does not explain which sports contribute to national performance, whether participation patterns have changed, how regional results differ, or whether investment indicators align with medal outcomes.

The project addresses this challenge by organizing several views into interactive Tableau worksheets and dashboards. The intention is to make comparisons easier and provide a clear starting point for evidence-led discussions—not to prove that any single factor causes Olympic success.

## Objectives

1. Compare countries by recorded medal performance.
2. Examine medal trends over the Olympic years represented in the data.
3. Compare sports and categories using the metrics available in the workbook.
4. Explore regional differences in medal distribution and efficiency.
5. Review medal totals for host nations.
6. Investigate possible associations between investment indicators and medal outcomes.
7. Present findings through clear charts, dashboard views, and stakeholder-oriented stories.
8. Document data-quality questions and avoid unsupported causal claims.

## Stakeholder scenarios

### Scenario 1 — Priya, National Olympic Committee Performance Strategist

Priya needs to decide which sports categories deserve additional support before the next Olympic cycle. She can review the **Average Medals per Athlete by Sport Category** view, then compare her country’s overall performance with other nations. The goal is to identify promising areas for deeper evaluation—not to make funding decisions from one metric alone.

**Questions to investigate**
- Which categories have the highest recorded average medals per athlete?
- How does the country compare with leading medal-winning nations?
- Do the category results remain consistent across Olympic editions and seasons?

### Scenario 2 — Carlos, Sports Investment Analyst

Carlos evaluates grant proposals for national sports programmes. He can compare investment indicators with medal outcomes and review how regional-efficiency metrics vary. This can help identify candidates for further investigation, including nations that appear to achieve comparatively strong results with modest investment indicators.

**Questions to investigate**
- Is there an association between investment scores and medal totals?
- Which countries appear to perform above or below the overall pattern?
- Are regional comparisons based on comparable definitions and sample sizes?

### Scenario 3 — William Robert, Broadcast Journalist and Data Storyteller

William is preparing a documentary about how Olympic competition has evolved. He can explore the medal trend, compare host nations, and inspect how the regional distribution changes in the available dataset.

**Questions to investigate**
- How do recorded medal totals vary by Olympic year?
- Which host nations have high totals in the supplied dataset?
- How do medal contributions differ across regions and sports?

## Dashboards and visualizations

The packaged workbook includes seven analytical worksheets and three dashboards/pages: a project overview with stakeholder scenarios, an Olympic performance dashboard, and a regional-efficiency dashboard.

| View | Chart type / purpose | Main question |
|---|---|---|
| Average Medals per Athlete by Category | Horizontal bar chart | Which listed categories have higher average medals per athlete? |
| Global Performance by Country | Country ranking bar chart | Which countries have the highest recorded medal totals? |
| Trend of Total Medals Awarded | Line chart | How do recorded medal totals vary over time? |
| Sports Investment vs Medal Performance | Bubble/scatter-style comparison | How do investment indicators align with medal outcomes? |
| Average Medal Efficiency by Region | Regional comparison | How does the defined efficiency metric vary by region? |
| Medals Across Olympic Hosts | Bar chart | What medal totals are recorded for host nations? |
| Medal Distribution by Region | Regional distribution chart | How are recorded medals distributed across regions? |

### Solution architecture

![Solution architecture](images/solution_architecture.png)

### Data workflow

![Data workflow](images/data_flow.png)

## Visual previews

These figures illustrate the metrics named in the project brief. They are included as README visuals and **are not screenshots exported from Tableau**. Some are drawn from example values stated in the brief; cross-check them against the packaged extracts before presenting them as validated analytical results.

### 1. Average medals per athlete by sport category

![Average medals per athlete by sport category](images/avg_medals_by_sport_category.png)

The supplied brief lists Rowing at **6.916** and Shooting at **6.731** for this metric. Before interpreting the ranking, confirm the calculation’s denominator and whether the metric means medals per unique athlete, per athlete record, or another unit.

### 2. Selected Olympic-year medal trend

![Selected medal trend years](images/selected_medal_trend.png)

The project narrative cites totals of 305 for 2000, 363 for 2020, and 334 for 2026. These are selected values, not a complete time series; confirm year coverage and season definitions in the source data.

### 3. Medal totals across host nations

![Medal totals for host nations](images/host_nation_medals.png)

The project narrative cites Japan at 105, the United States at 100, and China at 93. Verify that these figures use the same definition of host, Games edition, and medal counting before drawing conclusions about home advantage.

### 4. Regional medal efficiency

![Regional medal efficiency](images/regional_medal_efficiency.png)

The supplied narrative cites South America at 49.64% and Europe/Asia at 45.98%. Efficiency percentages should only be compared after confirming the numerator, denominator, aggregation level, and regional mapping.

## Data workflow

The intended analysis workflow is:

1. **Load** the available athlete, country-ranking, Games-summary, and medal-result extracts packaged with the Tableau workbook.
2. **Inspect** field names, data types, missing values, duplicated rows, and year coverage.
3. **Standardize** country/region labels, sport categories, Games years, and season labels where necessary.
4. **Aggregate** values at the correct level for each chart—for example country, sport category, region, host nation, and year.
5. **Visualize** the metrics in Tableau worksheets and dashboards.
6. **Validate** the figures against the underlying records and check that charts use consistent definitions.
7. **Interpret** patterns carefully, noting confounding factors and data limitations.

### Data and metric checks recommended before final submission

- Confirm that each medal/result record is counted only as intended.
- Make sure team events and multiple athletes from the same medal-winning team do not inflate medal totals unless that is the chosen definition.
- Confirm the workbook’s available Olympic years and whether Summer and Winter Games are combined or analyzed separately.
- Validate the definition of “average medals per athlete” and “medal efficiency percentage.”
- Check the mapping of National Olympic Committees to countries and regions.
- Check for missing or inconsistent investment values before interpreting an investment-versus-medal chart.

## Example metrics from the project brief

| Metric | Example value supplied in the brief | Validation needed |
|---|---:|---|
| Average medals per athlete — Rowing | 6.916 | Verify formula and source rows |
| Average medals per athlete — Shooting | 6.731 | Verify formula and source rows |
| United States total medals | 735 | Verify aggregation and date coverage |
| China total medals | 696 | Verify aggregation and date coverage |
| Medal total — 2000 | 305 | Verify year/season definition |
| Medal total — 2020 | 363 | Verify year/season definition |
| Medal total — 2026 | 334 | Verify year/season definition and extract coverage |
| Japan as host nation | 105 | Verify included Games and host rule |
| United States as host nation | 100 | Verify included Games and host rule |
| China as host nation | 93 | Verify included Games and host rule |
| South America efficiency | 49.64% | Verify metric formula and regions |
| Europe/Asia efficiency | 45.98% | Verify metric formula and regions |

These values are transcribed from the supplied project description and are provided for traceability. They should not be described as independently confirmed until reproduced from the workbook’s data.

## Tools and technologies

- **Tableau Desktop / Tableau Public** — workbook authoring and visualization.
- **Packaged Tableau workbook (`.twbx`)** — workbook structure and embedded analytical extracts.
- **GitHub** — project versioning, documentation, and sharing.
- **PNG charts and diagrams** — documentation visuals for this repository.

## Repository structure

```text
Olympic_Tableau_GitHub_Repository/
├── README.md
├── images/
│   ├── project_banner.png
│   ├── solution_architecture.png
│   ├── data_flow.png
│   ├── problem_solution_fit.png
│   ├── planned_burndown.png
│   ├── avg_medals_by_sport_category.png
│   ├── selected_medal_trend.png
│   ├── host_nation_medals.png
│   └── regional_medal_efficiency.png
├── tableau/
│   └── Global_Olympic_Sports_Performance_Analysis.twbx
└── docs/
    └── DATA_VALIDATION_NOTES.md
```

## Open the Tableau workbook

1. Download or clone this repository.
2. Open Tableau Desktop or Tableau Public Desktop on your computer.
3. Choose **File → Open**.
4. Open `tableau/Global_Olympic_Sports_Performance_Analysis.twbx`.
5. Start with **Project Overview & Scenarios**, then open **Olympic Performance Dashboard** and **Regional Efficiency Dashboard**.
6. Check that the packaged extracts load and that each worksheet renders successfully.

> Tableau Public publishing makes the workbook and its data publicly accessible. Review the contents and data permissions before publishing. The Tableau Public service is distinct from a local `.twbx` file.

## Data quality, limitations, and responsible interpretation

- The figures in the brief have not been independently verified against each underlying record in this repository.
- The project’s stated period is 1992–2026; validate the actual periods available in the extracts.
- Medal totals depend on the counting rule, particularly for team events and athlete-level versus event-level records.
- The “investment versus medal performance” view can show an association but cannot prove that investment caused a medal outcome.
- Host-country totals alone cannot prove a home advantage. A stronger analysis would compare host results with pre-host and post-host performance while accounting for the number and type of events.
- Regional efficiency is meaningful only if the efficiency formula and regional mapping are consistent.
- Dashboard visual previews in `images/` are illustrative project documentation, not direct screenshots of Tableau rendering.

## Future improvements

- Add clear definitions and tooltips for every calculated metric.
- Add filters for Games year, season, country, region, and sport category.
- Compare Summer and Winter Games separately where appropriate.
- Recalculate figures from the raw data and add an audit table to the repository.
- Include data lineage and a data dictionary describing every key field.
- Evaluate investment relationships using a documented method and disclose confounding factors.
- Export final dashboard screenshots from the verified Tableau workbook and replace the illustrative README chart previews.
- Add a reproducible validation notebook or script once the source data and its license are confirmed.

## References

- **Reference GitHub project:** [ManasGeedkar / Global-Olympic-Sports-Performance-Analysis](https://github.com/ManasGeedkar/Global-Olympic-Sports-Performance-Analysis)
- **Dataset cited by the reference project:** [Olympic Games Performance and Medal History (1992–2026) — Kaggle](https://www.kaggle.com/datasets/meruvakodandasuraj/olympic-games-performance-and-medal-history-199226)
- **Reference Tableau Public dashboard:** [Global Olympic Sports Performance Analysis](https://public.tableau.com/app/profile/manas.geedkar/viz/GlobalOlympicSportsPerformanceAnalysis/OlympicStory)
- **Reference demonstration video:** [Google Drive demo video](https://drive.google.com/file/d/16cYlP0-HJqdKLURIMIJ88-U61SnViFC7/view?usp=sharing)
- **Tableau:** [Tableau Public](https://public.tableau.com/)

The dataset and reference assets retain their original ownership and licensing terms. Review the source terms before redistributing the dataset or republishing derived work.

## Author

**Keshav Trivedi**  
Project: *Global Olympic Sports Performance Analysis*  
Learning context: SkillWallet — Data Analytics with Tableau

---

*Made for learning and portfolio documentation. Verify all metrics against the workbook data before using them in formal reports or funding decisions.*
