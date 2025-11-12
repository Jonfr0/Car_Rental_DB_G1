--UDF
--Purpose: Calculates the total number of days a customer has rented vehicles in our car rental system
--This function helps provide insight into a customers usage patterns by tracking how long they have rented vehicles in total. 
IF OBJECT_ID(N'dbo.fn_GetCustomerTotalRentalDays', N'FN') IS NOT NULL
    DROP FUNCTION dbo.fn_GetCustomerTotalRentalDays;
GO

CREATE FUNCTION dbo.fn_GetCustomerTotalRentalDays
    (@CustomerID INT)
RETURNS INT
AS
BEGIN
    DECLARE @TotalDays INT;

    SELECT @TotalDays = SUM(DATEDIFF(DAY, r.rental_start, r.rental_end))
    FROM Rental.Rental r
    WHERE r.customer_id = @CustomerID;

    IF @TotalDays IS NULL
    BEGIN
        SET @TotalDays = 0;
    END

    RETURN @TotalDays;
END;
GO

SELECT dbo.fn_GetCustomerTotalRentalDays(1) AS TotalRentalDays;
