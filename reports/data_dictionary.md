# Data Dictionary

## Project: Mutual Fund Analytics Platform

This document describes the datasets used in the project, including column names, data types, business definitions, and source references.

---

# Dataset: fund_master_clean.csv

Source: 01_fund_master.csv

| Column Name        | Data Type | Business Definition                                |
| ------------------ | --------- | -------------------------------------------------- |
| amfi_code          | INTEGER   | Unique AMFI scheme identifier                      |
| fund_house         | TEXT      | Asset Management Company (AMC) managing the scheme |
| scheme_name        | TEXT      | Name of the mutual fund scheme                     |
| category           | TEXT      | Broad fund category such as Equity or Debt         |
| sub_category       | TEXT      | Detailed category classification                   |
| plan               | TEXT      | Direct or Regular plan                             |
| launch_date        | DATE      | Scheme launch date                                 |
| benchmark          | TEXT      | Benchmark index used for comparison                |
| expense_ratio_pct  | FLOAT     | Annual management fee charged by the fund          |
| exit_load_pct      | FLOAT     | Fee charged on early redemption                    |
| min_sip_amount     | INTEGER   | Minimum SIP investment amount                      |
| min_lumpsum_amount | INTEGER   | Minimum lump sum investment amount                 |
| fund_manager       | TEXT      | Fund manager responsible for the scheme            |
| risk_category      | TEXT      | Risk level assigned to the scheme                  |
| sebi_category_code | TEXT      | SEBI classification code                           |

---

# Dataset: nav_history_clean.csv

Source: 02_nav_history.csv

| Column Name | Data Type | Business Definition      |
| ----------- | --------- | ------------------------ |
| amfi_code   | INTEGER   | Unique AMFI scheme code  |
| date        | DATE      | NAV reporting date       |
| nav         | FLOAT     | Net Asset Value per unit |

---

# Dataset: aum_by_fund_house_clean.csv

Source: 03_aum_by_fund_house.csv

| Column Name    | Data Type | Business Definition                   |
| -------------- | --------- | ------------------------------------- |
| date           | DATE      | Reporting date                        |
| fund_house     | TEXT      | Asset Management Company              |
| aum_lakh_crore | FLOAT     | Assets Under Management in lakh crore |
| aum_crore      | INTEGER   | Assets Under Management in crore      |
| num_schemes    | INTEGER   | Number of schemes managed             |

---

# Dataset: monthly_sip_inflows_clean.csv

Source: 04_monthly_sip_inflows.csv

| Column Name               | Data Type | Business Definition                |
| ------------------------- | --------- | ---------------------------------- |
| month                     | DATE      | Reporting month                    |
| sip_inflow_crore          | INTEGER   | Monthly SIP inflow amount in crore |
| active_sip_accounts_crore | FLOAT     | Active SIP accounts in crore       |
| new_sip_accounts_lakh     | FLOAT     | New SIP accounts opened in lakh    |
| sip_aum_lakh_crore        | FLOAT     | SIP assets under management        |
| yoy_growth_pct            | FLOAT     | Year-over-year growth percentage   |

---

# Dataset: category_inflows_clean.csv

Source: 05_category_inflows.csv

| Column Name      | Data Type | Business Definition        |
| ---------------- | --------- | -------------------------- |
| month            | DATE      | Reporting month            |
| category         | TEXT      | Mutual fund category       |
| net_inflow_crore | FLOAT     | Net inflow amount in crore |

---

# Dataset: industry_folio_count_clean.csv

Source: 06_industry_folio_count.csv

| Column Name         | Data Type | Business Definition        |
| ------------------- | --------- | -------------------------- |
| month               | DATE      | Reporting month            |
| total_folios_crore  | FLOAT     | Total folio count in crore |
| equity_folios_crore | FLOAT     | Equity folio count         |
| debt_folios_crore   | FLOAT     | Debt folio count           |
| hybrid_folios_crore | FLOAT     | Hybrid fund folio count    |
| others_folios_crore | FLOAT     | Other category folio count |

---

# Dataset: scheme_performance_clean.csv

Source: 07_scheme_performance.csv

| Column Name        | Data Type | Business Definition                |
| ------------------ | --------- | ---------------------------------- |
| amfi_code          | INTEGER   | Unique AMFI scheme code            |
| scheme_name        | TEXT      | Mutual fund scheme name            |
| fund_house         | TEXT      | Asset Management Company           |
| category           | TEXT      | Fund category                      |
| plan               | TEXT      | Direct or Regular plan             |
| return_1yr_pct     | FLOAT     | One-year return percentage         |
| return_3yr_pct     | FLOAT     | Three-year return percentage       |
| return_5yr_pct     | FLOAT     | Five-year return percentage        |
| benchmark_3yr_pct  | FLOAT     | Benchmark return percentage        |
| alpha              | FLOAT     | Risk-adjusted excess return        |
| beta               | FLOAT     | Volatility relative to benchmark   |
| sharpe_ratio       | FLOAT     | Risk-adjusted performance measure  |
| sortino_ratio      | FLOAT     | Downside-risk adjusted return      |
| std_dev_ann_pct    | FLOAT     | Annualized volatility              |
| max_drawdown_pct   | FLOAT     | Maximum historical loss percentage |
| aum_crore          | INTEGER   | Assets Under Management            |
| expense_ratio_pct  | FLOAT     | Annual expense ratio               |
| morningstar_rating | INTEGER   | Morningstar fund rating            |
| risk_grade         | TEXT      | Risk classification                |

---

# Dataset: investor_transactions_clean.csv

Source: 08_investor_transactions.csv

| Column Name        | Data Type | Business Definition            |
| ------------------ | --------- | ------------------------------ |
| investor_id        | TEXT      | Unique investor identifier     |
| transaction_date   | DATE      | Transaction date               |
| amfi_code          | INTEGER   | Mutual fund scheme code        |
| transaction_type   | TEXT      | SIP, Lumpsum, or Redemption    |
| amount_inr         | FLOAT     | Transaction amount in INR      |
| state              | TEXT      | Investor state                 |
| city               | TEXT      | Investor city                  |
| city_tier          | TEXT      | B30 or T30 city classification |
| age_group          | TEXT      | Investor age bracket           |
| gender             | TEXT      | Investor gender                |
| annual_income_lakh | FLOAT     | Annual income in lakh rupees   |
| payment_mode       | TEXT      | Mode of payment                |
| kyc_status         | TEXT      | KYC verification status        |

---

# Dataset: portfolio_holdings_clean.csv

Source: 09_portfolio_holdings.csv

| Column Name       | Data Type | Business Definition             |
| ----------------- | --------- | ------------------------------- |
| amfi_code         | INTEGER   | Mutual fund scheme code         |
| stock_symbol      | TEXT      | Stock ticker symbol             |
| stock_name        | TEXT      | Company name                    |
| sector            | TEXT      | Industry sector                 |
| weight_pct        | FLOAT     | Portfolio allocation percentage |
| market_value_cr   | FLOAT     | Market value in crore           |
| current_price_inr | FLOAT     | Current stock price             |
| portfolio_date    | DATE      | Portfolio reporting date        |

---

# Dataset: benchmark_indices_clean.csv

Source: 10_benchmark_indices.csv

| Column Name | Data Type | Business Definition  |
| ----------- | --------- | -------------------- |
| date        | DATE      | Market trading date  |
| index_name  | TEXT      | Benchmark index name |
| close_value | FLOAT     | Closing index value  |
