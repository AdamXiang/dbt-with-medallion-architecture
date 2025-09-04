# dbt with Medallion Architecture and CI/CD

This project demonstrates how to build a **scalable and reliable data transformation pipeline** using **dbt** with the **Medallion Architecture (Bronze → Silver → Gold)**, integrated with **CI/CD** practices.

## 🚀 Project Overview

The repository provides an end-to-end example of how dbt can be applied to manage data workflows, enforce testing, and streamline deployment in a modern data stack.

## 🔧 Key Features

1. **Medallion Architecture with dbt**

   - Implemented the Bronze, Silver, and Gold layers for structured data transformation.

2. **Analyses for Validation**

   - Leveraged `analyses/` to run SQL queries and validate transformation outputs.

3. **Reusable Macros**

   - Created custom macros to simplify logic and enable reusability across models.

4. **Source Configuration**

   - Defined `sources/` to connect dbt models directly with **Databricks**.

5. **Seeds for Reference Tables**

   - Used `seeds/` to load and manage static mapping tables.

6. **Comprehensive dbt Tests**

   - Applied **singular**, **generic**, and **custom generic** tests to validate business rules and ensure data quality.

7. **Continuous Deployment**

   - Configured target environment variables (`target`) to support CI/CD pipelines.

8. **Virtual Environment with uv**
   - Managed dependencies and isolation using **uv** for reproducibility.

## 📂 Project Structure
```bash
.
├── analyses/ # Custom SQL queries for validation
├── macros/ # Reusable functions for dbt models
├── models/ # Core dbt models (Bronze/Silver/Gold)
├── seeds/ # Static mapping tables
├── sources/ # Source references for Databricks
├── tests/ # Singular, generic, and custom tests
└── README.md # Project documentation
```

```bash

## ⚙️ Getting Started

### Prerequisites
- Python 3.10+
- [uv](https://github.com/astral-sh/uv) for virtual environment management
- [dbt](https://docs.getdbt.com/) installed

### Setup
```bash
# Create virtual environment
uv venv

# Activate environment
source .venv/bin/activate   # Linux / MacOS
.venv\Scripts\activate      # Windows

# Install dependencies
uv pip install -r requirements.txt
```

### Run dbt

```bash
# Run all models
dbt run

# Test models
dbt test

# Run specific model
dbt run --select my_model

```

### Deployment

CI/CD pipelines are configured to build against the correct target environment using the target variable.

## ✅ Outcomes

- End-to-end dbt implementation with Medallion Architecture.
- Automated testing for data quality.
- CI/CD-ready with environment-specific deployments.
- Scalable and maintainable project structure.

## Resources:

- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices

