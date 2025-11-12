-- Triggers

-- One-Way rental location update trigger
-- When a one-way rental is completed, the system automatically updates the vehicle's branch to the dropoff branch

IF OBJECT_ID('Rental.trg_UpdateVehicleBranchOnOneWayReturn', 'TR') IS NOT NULL
    DROP TRIGGER Rental.trg_UpdateVehicleBranchOnOneWayReturn;
GO

CREATE TRIGGER Rental.trg_UpdateVehicleBranchOnOneWayReturn
ON Rental.Rental
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Only process if rental status changed to 'Completed'
    IF UPDATE(rental_status)
    BEGIN
        -- Update vehicle branch for one-way rentals
        UPDATE v
        SET 
            v.branch_id = r.dropoff_branch_id,
            v.updated_at = GETDATE()
        FROM Vehicle.Vehicle v
        INNER JOIN inserted i ON v.vehicle_vin = i.vehicle_vin
        INNER JOIN Rental.Reservation r ON i.reservation_id = r.reservation_id
        WHERE 
            i.rental_status = 'Completed'                    
            AND r.pickup_branch_id != r.dropoff_branch_id    -- One-way trip
            AND v.branch_id != r.dropoff_branch_id;          -- Branch needs updating

        -- Log the update
        BEGIN
            PRINT CONCAT(
                'Vehicle branch/location updated for one-way rental(s) completed at ', 
                GETDATE()
            );
        END
    END
END;
GO