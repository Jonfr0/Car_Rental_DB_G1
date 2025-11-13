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
        INNER JOIN inserted i ON v.vehicle_id = i.vehicle_id
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



-- Trigger to automatically place vehicles in 'Maintenance' status if they have 
-- moderate/severe damage or if the total repair cost is more than $999

IF OBJECT_ID('Vehicle.trg_AutoMaintenanceOnDamage', 'TR') IS NOT NULL
    DROP TRIGGER Vehicle.trg_AutoMaintenanceOnDamage;
GO

CREATE TRIGGER Vehicle.trg_AutoMaintenanceOnDamage
ON Vehicle.Damage
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    
    DECLARE @VehicleID INT; 
    DECLARE @TotalRepairCost DECIMAL(10,2);
    DECLARE @HasSevereDamage BIT;
    DECLARE @MaintenanceReason VARCHAR(200);
    
    -- Cursor to process each damaged vehicle 
    DECLARE damage_cursor CURSOR FOR
    SELECT DISTINCT v.vehicle_id  
    FROM Vehicle.Vehicle v
    INNER JOIN Vehicle.Inspection i ON v.vehicle_id = i.vehicle_id 
    INNER JOIN inserted ins ON i.inspection_id = ins.inspection_id;
    
    OPEN damage_cursor;
    
    FETCH NEXT FROM damage_cursor INTO @VehicleID;
    
    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Calculate total repair cost for this vehicle
        SELECT @TotalRepairCost = ISNULL(SUM(d.estimated_repair_cost), 0) 
        FROM Vehicle.Damage d
        INNER JOIN Vehicle.Inspection i ON d.inspection_id = i.inspection_id
        WHERE i.vehicle_id = @VehicleID
        AND d.damage_status IN ('Unresolved', 'Under Repair');
        
        -- Check if there's any moderate to severe damaged vehicles
        SELECT @HasSevereDamage = CASE 
            WHEN COUNT(*) > 0 THEN 1 
            ELSE 0 
        END
        FROM Vehicle.Damage d
        INNER JOIN Vehicle.Inspection i ON d.inspection_id = i.inspection_id
        WHERE i.vehicle_id = @VehicleID
        AND d.damage_status IN ('Unresolved', 'Under Repair')
        AND d.damage_severity IN ('Moderate', 'Severe');
        
        -- Send to maintenance if repair cost exceed $999 OR severity is moderate/severe
        IF @TotalRepairCost > 999 OR @HasSevereDamage = 1
        BEGIN
            UPDATE Vehicle.Vehicle
            SET status = 'Maintenance',
                updated_at = GETDATE()
            WHERE vehicle_id = @VehicleID
            AND status != 'Maintenance';
        END
        
        IF @TotalRepairCost > 999
        BEGIN
            SET @MaintenanceReason = CONCAT('damage costs: ', @TotalRepairCost);
        END
        ELSE IF @HasSevereDamage = 1
        BEGIN
            SET @MaintenanceReason = CONCAT('damage severity: ', (SELECT damage_severity FROM Vehicle.Damage WHERE inspection_id = @VehicleID));
        END
        
        PRINT CONCAT('Vehicle ', @VehicleID, ' moved to maintenance due to ', @MaintenanceReason);

        FETCH NEXT FROM damage_cursor INTO @VehicleID;  
    END
    
    CLOSE damage_cursor;
    DEALLOCATE damage_cursor;
END;
GO