# RTB House | Senior Data Analyst Case Study

Analysis of one year of campaign performance data (January–November 2025), combining business analysis, 
performance metrics,SQL querying, and executive storytelling.

---

# 📌 Project Context

This project was developed as part of the technical assessment for a **Senior Data Analyst** position at **RTB House**.
The objective was to analyze one year of campaign performance, answer business questions using SQL, identify the main 
business drivers behind the results,and communicate findings through an executive presentation.

The complete solution was delivered as reproducible Python notebooks, SQL queries, and a presentation summarizing the business insights.

---

# 📈 Project Outcome

This case study was successfully presented during the interview process and resulted in a formal job offer for the **Senior Data Analyst** position.

Although I ultimately chose another opportunity that was already in its final hiring stage and better aligned with my long-term professional goals,
I decided to share this project as part of my portfolio because it represents my approach to solving real business problems through data.

---

# 🎯 Business Challenge

The assessment consisted of:

- Calculating key digital marketing performance metrics.
- Explaining campaign performance throughout the year.
- Identifying the business drivers behind the observed trends.
- Solving SQL challenges using the provided PostgreSQL database.
- Presenting the findings in an executive-friendly format.

---

# 💡 Key Findings

## Budget reduction, not performance degradation

RTB investment decreased by **53%** (R$326K → R$152K), and campaign volume followed the budget reduction.

## Stable efficiency

Despite the investment cuts, **ROAS remained remarkably stable (~15)** throughout the year, indicating that campaign efficiency was preserved.

## Independent site growth

Website traffic increased by **41%**, while total site conversions grew **27%**, suggesting that the company's overall growth was not directly dependent on RTB investment.

## RTB Share

The reduction in RTB Share was primarily a mathematical consequence of lower investment combined with higher total site conversions.

## CTR

CTR decreased by **29.8%**, but no significant relationship with investment could be identified using the available data. 
The potential causes were documented as opportunities for further investigation rather than assumptions.

## Seasonality

Consumer Day, Father's Day and Black Friday generated the strongest conversion peaks.

Wednesday through Saturday consistently delivered the highest campaign performance.

---

# 📁 Repository Structure

```text
rtb-data-analyst-test/
├── README.md
├── requirements.txt
├── docker-compose.yml
├── notebooks/
│   ├── rtb_analysis_process.ipynb
│   └── sql_case_solutions.ipynb
├── presentation/
│   └── rtb_house_performance_analysis.pdf
├── data/
└── database/
```

---

# 📦 Project Deliverables

| Deliverable | Description |
|------------|-------------|
| Performance Analysis Notebook | KPI calculations, trend analysis and business insights |
| SQL Notebook | SQL solutions for the assessment |
| Executive Presentation | Final business presentation with recommendations |

---

# 🛠 Tech Stack

## Languages

- Python
- SQL

## Libraries

- pandas
- matplotlib
- seaborn
- SQLAlchemy
- psycopg2

## Database

- PostgreSQL

## Environment

- Docker
- Jupyter Notebook

---

# ▶️ Running the Project

Install dependencies

```bash
pip install -r requirements.txt
```

Start PostgreSQL

```bash
docker-compose up -d
```

Run the notebooks in the following order:

1. `rtb_analysis_process.ipynb`
2. `sql_case_solutions.ipynb`

---

# 📚 Lessons Learned

This project reinforced the importance of combining technical analysis with business storytelling.

Rather than simply calculating metrics, the objective was to understand the business context behind 
the numbers and communicate insights that support decision-making.

---

# 📝 Notes

- Dataset covers January - November 2025.
- December is not included in the original dataset.
- All monetary values are expressed in BRL.
- SQL queries were developed and validated using the provided PostgreSQL schema.
  
## Author

**Denerson Silva** — [github.com/ddenerson](https://github.com/ddenerson)
