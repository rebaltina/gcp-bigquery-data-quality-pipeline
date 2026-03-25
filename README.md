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
* Range validation
* Business rule consistency

## Tech Stack

* Google BigQuery
* SQL
* Looker Studio (for quality dashboard)

## Outcome

The curated dataset acts as a trusted data source (golden layer) for downstream analytics and ML use cases.
