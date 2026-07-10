# RTB House — Data Analyst Technical Challenge

Analysis of one year of campaign performance data (January–November 2025) for one
of RTB House's clients, covering metric calculations, performance trends, and SQL
querying against the provided schema.

> **Context:** This was a take-home technical challenge for a **Senior Data Analyst**
> role at **RTB House**. It is shared here as a portfolio piece.

---

## The Challenge

Analyse a client's campaign performance across the year: calculate the core
performance metrics, explain what drove the trends, and answer a set of SQL
questions against the campaign database. The findings were delivered as a PDF
presentation, backed by a reproducible analysis and documented SQL.

---

## Key Findings

**This is a budget story, not a performance story.** RTB investment was cut in
half over the year, but the channel kept delivering — efficiency held steady while
volume simply followed the money.

1. **Investment dropped 53%** (R$ 326K in January to R$ 152K in November), and RTB
   conversions and clicks fell with it. Volume tracked budget directly.
2. **ROAS stayed stable at ~15** the whole period (15.85 → 15.51, only 2.2%
   variation). The channel remained efficient despite lower spend.
3. **The site grew independently of RTB.** Site traffic rose 41% and total site
   conversions grew 27% while RTB investment was cut — the two operate separately
   (minimal correlation).
4. **RTB Share declined 50%, but that's a mathematical outcome, not a problem.**
   As investment fell and total site conversions grew, share dropped naturally.
   The real question is what the channel delivered with the budget it had.
5. **CTR fell 29.8%** (1.87% → 1.24%) with minimal correlation to investment — the
   available data doesn't explain the cause, so it's flagged for further
   investigation rather than given a false explanation.
6. **Clear seasonal and weekly patterns.** Consumer Day (+109%), Father's Day
   (+77%) and Black Friday (+79%) drove the strongest RTB conversion peaks;
   Wednesday–Saturday are peak days, while Monday and Sunday consistently
   underperform.

---

## Repository Structure

```
rtb-data-analyst-test/
├── README.md
├── requirements.txt
├── docker-compose.yml              # PostgreSQL local environment
├── notebooks/
│   ├── rtb_analysis_process.ipynb  # Q1 & Q2 — metric calculations and analysis
│   └── sql_case_solutions.ipynb    # Q4, Q5 & Q6 — SQL queries
├── presentation/
│   └── rtb_house_performance_analysis.pdf   # Q2 — insights as a PDF deck
├── data/                           # Source data files
└── database/                       # Schema and setup
```

## Questions Addressed

| File | Questions |
| --- | --- |
| `rtb_analysis_process.ipynb` | 1 — Metric calculations (CTR, CPC, CR, ROAS, AOV, Share) · 2 — Performance analysis and insights |
| `sql_case_solutions.ipynb` | 4, 5 and 6 — SQL queries |
| `rtb_house_performance_analysis.pdf` | 2 — Insights presented as a PDF deck |

## How to Run

```bash
# Dependencies
pip install -r requirements.txt

# Database (PostgreSQL via Docker)
docker-compose up -d
```

Then open and run the notebooks in order:
- `rtb_analysis_process.ipynb` — data analysis and visualizations
- `sql_case_solutions.ipynb` — SQL queries using the provided schema

## Tech Stack

Python · pandas · matplotlib · seaborn · SQLAlchemy · psycopg2 · PostgreSQL 13 ·
Docker · Jupyter Notebook

## Notes

- Data covers January to November 2025. December is not included in the dataset.
- All monetary values are in BRL.
- SQL queries were written and tested against the provided schema.
- PostgreSQL runs locally via Docker Compose — make sure Docker is running before
  executing the SQL notebook.

## Author

**Denerson Silva** — [github.com/ddenerson](https://github.com/ddenerson)
