# Airbnb Analytics Pipeline: Unlocking Insights with dbt & Snowflake

## Problem Statement

The Airbnb marketplace generates vast amounts of data related to listings, hosts, and reviews. However, **raw data is often inconsistent, unstructured, and difficult to analyze**.  
Key challenges include:
- **Data Quality Issues**: Incomplete, duplicate, or inconsistent records.
- **Lack of Standardized Metrics**: Users struggle to derive actionable insights.
- **Inefficient Query Performance**: Large datasets slow down analysis.
- **Limited Data Documentation & Version Control**: Difficult to track transformations.

## Solution: dbt + Snowflake + Preset

To address these challenges, we build a **robust analytics pipeline** that:
✅ **Cleans & structures Airbnb data** in Snowflake using dbt.  
✅ **Applies transformations** (joins, aggregations, calculated fields) to create analytics-ready tables.  
✅ **Ensures data integrity** with automated tests and version control.  
✅ **Enables BI & Data Science** via a structured warehouse and visualization in Preset.

## Tech Stack
- **dbt (Data Build Tool)** - Data transformations & testing.
- **Snowflake** - Cloud data warehouse.
- **Preset (Apache Superset)** - Business intelligence & dashboarding.
- **GitHub** - Version control.

## Quick Start 🚀
1. **Clone the repo:**
   ```bash
   git clone git@github.com:ssp964/airbnb-analytics-pipeline.git
   cd airbnb-analytics-pipeline
