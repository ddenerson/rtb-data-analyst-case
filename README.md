# RTB House — Data Analyst Technical Challenge

This repository contains my solution to the RTB House Data Analyst technical challenge.
The analysis covers campaign performance data from one of RTB House's clients,
spanning January to November 2025.

---



## Repository Structure

    notebooks/
    ├── rtb_analysis_process.ipynb       # Questions 1 and 2 — metric calculations and performance analysis
    └── sql_case_solutions.ipynb         # Questions 4, 5 and 6 — SQL queries
    presentation/
    └── rtb_house_performance_analysis.pdf  # Question 2 — insights and findings presented as PDF
    data/                                # Source data files
    database/                            # Database schema and setup
    docker-compose.yml                   # PostgreSQL local environment
    requirements.txt
    README.md

## Questions Addressed

| File | Questions |
|------|-----------|
| `rtb_analysis_process.ipynb` | 1 — Metric calculations (CTR, CPC, CR, ROAS, AOV, Share) and 2 — Performance analysis and insights |
| `sql_case_solutions.ipynb` | 4, 5 and 6 — SQL queries |
| `rtb_house_performance_analysis.pdf` | 2 — Insights presented as pdf |

---

## How to Run

**Requirements**
pip install -r requirements.txt

**Database setup**
docker-compose up -d

**Notebooks**
Open and run the notebooks in order:
1. rtb_analysis_process.ipynb — data analysis and visualizations
2. sql_case_solutions.ipynb — SQL queries using the provided schema

---

## Tech Stack

Python · pandas · matplotlib · seaborn · SQLAlchemy · psycopg2 · PostgreSQL 13 · Docker · Jupyter Notebook

---

## Notes

- Data covers January to November 2025. December is not included in the dataset.
- All monetary values are in BRL.
- SQL queries were written and tested against the schema provided in the database tab.
- PostgreSQL runs locally via Docker Compose. Make sure Docker is running before executing the SQL notebook.
