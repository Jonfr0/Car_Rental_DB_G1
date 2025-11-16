DECLARE @audit VARCHAR(500);

DECLARE rental_cursor CURSOR FOR
SELECT 
    'CustomerID: ' + CAST(customer_id AS VARCHAR(20)) +
    ' RentalID: ' + CAST(rental_id AS VARCHAR(20)) +
    ' Start: ' + CAST(rental_start AS VARCHAR(30)) +
    ' End: ' + CAST(rental_end AS VARCHAR(30)) +
    ' Status: ' + rental_status +
    ' Total: ' + CAST(rental_total AS VARCHAR(20))
FROM Rental.Rental
ORDER BY customer_id, rental_id;

OPEN rental_cursor;

FETCH NEXT FROM rental_cursor INTO @audit;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT @audit;
    FETCH NEXT FROM rental_cursor INTO @audit;
END

CLOSE rental_cursor;
DEALLOCATE rental_cursor; 

