-- Subqueries

-- Use a subquery to find customers whose total rental spending is above the average customer spending.
-- The business purpose: Identifies customers who spend more than average on rentals.
-- This is useful for marketing target, loyalty programs, and maximizing revenue from high-value clients

SELECT customer_id, SUM(rental_total) AS total_spent
FROM Rental.Rental
GROUP BY customer_id
HAVING SUM(rental_total) > (
    SELECT AVG(customer_total)
    FROM (
        SELECT SUM(rental_total) AS customer_total
        FROM Rental.Rental
        GROUP BY customer_id
    ) AS totals
)
ORDER BY total_spent DESC;