-- CTE
-- Uses a CTE to rank customers by total rental spending (top 10 high-value customers).
-- Allows business to see which customers contribute most to revenue, 

USE CarRentalDB;
GO

WITH CustomerRevenue AS
(
SELECT C.Customer_ID, CONCAT(C.first_name, ' ' , ISNULL(C.middle_name + ' ', ''), c.last_name) as Name ,SUM(RP.payment_amount) as Amount
FROM Customer.Customer as C
INNER JOIN Customer.Customer_Payment_Method as PM
ON PM.customer_id = C.customer_id
INNER JOIN Finance.Rental_Payment as RP
ON RP.payment_method_id = PM.payment_method_id
GROUP BY C.customer_id, c.last_name, c.first_name, c.middle_name
)

SELECT TOP(10) CR.Customer_ID, CR.Name, CR.Amount
FROM CustomerRevenue as CR
ORDER BY AMOUNT DESC

