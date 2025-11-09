-- CTEs

-- Use a CTE to calculate each branch’s monthly revenue.
-- Business purpose: To summarize how much revenue each branch generates every month. 
-- This helps track branch performance on a monthly basis, supports budgeting, and identifies trends or branches needing attention.

WITH DailyRevenue AS (
    SELECT
        branch_id,
        CAST(invoice_date AS DATE) AS revenue_date,
        SUM(total_amount) AS daily_revenue
    FROM Finance.Invoice
    GROUP BY branch_id, CAST(invoice_date AS DATE)
)
SELECT
    branch_id,
    revenue_date,
    daily_revenue
FROM DailyRevenue
ORDER BY branch_id, revenue_date;