-- 1 Top 5 Funds by AUM
SELECT scheme_name,aum_crore
FROM fact_performance
ORDER BY aum_crore DESC
LIMIT 5;

-- 2 Average NAV by Month
SELECT strftime('%Y-%m',date) AS month,
AVG(nav)
FROM fact_nav
GROUP BY month;

-- 3 SIP Transactions YoY
SELECT strftime('%Y',transaction_date),
COUNT(*)
FROM fact_transactions
WHERE transaction_type='SIP'
GROUP BY 1;

-- 4 Transactions by State
SELECT state,COUNT(*)
FROM fact_transactions
GROUP BY state;

-- 5 Expense Ratio < 1%
SELECT scheme_name,expense_ratio_pct
FROM fact_performance
WHERE expense_ratio_pct < 1;

-- 6 Top 10 Fund Houses by AUM
SELECT fund_house,SUM(aum_crore)
FROM fact_performance
GROUP BY fund_house;

-- 7 Average Return by Category
SELECT category,
AVG(return_3yr_pct)
FROM fact_performance
GROUP BY category;

-- 8 Highest Sharpe Ratio
SELECT scheme_name,sharpe_ratio
FROM fact_performance
ORDER BY sharpe_ratio DESC;

-- 9 Risk Grade Distribution
SELECT risk_grade,COUNT(*)
FROM fact_performance
GROUP BY risk_grade;

-- 10 Average Transaction Amount
SELECT transaction_type,
AVG(amount_inr)
FROM fact_transactions
GROUP BY transaction_type;
