# BigQuery Data Quality Pipeline

## Overview

This project implements a layered data architecture and automated data quality framework on Google BigQuery using a public ecommerce dataset.

The architecture follows governance and data management best practices inspired by DAMA DMBOK principles.

## Architecture

Raw → Staging → Data Quality → Curated → Analytics

## Data Quality Checks Implemented

* Duplicate primary key validation
* Null checks
* Referential integrity validation
* Business rule consistency

## Tech Stack

* Google BigQuery
* SQL
* Looker Studio (for quality dashboard)

## Outcome

The curated dataset acts as a trusted data source (golden layer) for downstream analytics and ML use cases.

# Install DBT
# crea un virtual environment (opzionale ma consigliato)
python3 -m venv dbt-env
source dbt-env/bin/activate  

# installa dbt-bigquery
python3 -m venv dbt-env
source dbt-env/bin/activate
pip install dbt-bigquery

## Overview
End-to-end data pipeline using GA4 data:
- Raw ingestion from BigQuery public dataset
- Staging layer with cleaned and typed data
- Data quality tests (dbt tests)
- Business marts for analytics

## KPIs
- Revenue
- Conversion Rate
- Funnel (page_view → purchase)

## Tech stack
- dbt
- BigQuery