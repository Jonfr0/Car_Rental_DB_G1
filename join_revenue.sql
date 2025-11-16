-- JOINS
-- Using a JOIN statement, show the rental revenue collected by each branch.
-- Allows the company to keep track of the performance of each branch


SELECT B.Branch_Name, SUM(RENP.payment_amount - ISNULL(REF.refund_amount, 0)) as Rental_Revenue
FROM Operation.Branch as B
INNER JOIN Rental.Reservation as RE
ON B.branch_id = RE.pickup_branch_id
INNER JOIN Rental.Rental as REN
ON RE.reservation_id = REN.reservation_id
INNER JOIN Finance.Rental_Payment as RENP
ON REN.rental_id = RENP.rental_id
LEFT JOIN Finance.Refund as REF
ON RENP.payment_id = REF.payment_id
GROUP BY B.branch_name
ORDER BY SUM(RENP.payment_amount - ISNULL(REF.refund_amount, 0)) DESC