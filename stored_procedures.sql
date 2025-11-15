-- Stored Procedures

-- Returns all rentals, payments, and refunds for that customer.
-- Purpose: It makes it easier to view customer history by pulling all the important transaction data in just one request. 
-- This helps keep the data consistent and reduces mistakes or differences that can happen when running several manual queries or using extra logic in the app.

IF OBJECT_ID('dbo.usp_GetCustomerRentalHistory') IS NOT NULL
    DROP PROCEDURE dbo.usp_GetCustomerRentalHistory;
GO

CREATE PROCEDURE dbo.usp_GetCustomerRentalHistory
    @CustomerID INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        r.rental_id,
        r.reservation_id,
        r.rental_start,
        r.rental_end,
        r.rental_status,
        r.rental_total,
        r.security_deposit,
        v.make,
        v.model,
        v.year,
        v.color,
        v.mileage
    FROM Rental.Rental AS r
    JOIN Vehicle.Vehicle AS v
        ON r.vehicle_id = v.vehicle_id
    WHERE r.customer_id = @CustomerID
    ORDER BY r.rental_start DESC;
END;
GO

-- Test Example
EXEC dbo.usp_GetCustomerRentalHistory @CustomerID = 15;


