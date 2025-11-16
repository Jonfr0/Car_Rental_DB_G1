-- Pivots

-- Uses a Pivot to display the number of vehicles by type per branch
-- Business Purpose: Summarizes the number of vehicles by type at each branch.
-- Helps management analyze the vehicle distribution across locations and support inventory allocation decisions

SELECT branch_name as BranchName, [Crossover], [Sedan], [SUV], [Truck], [Van]
FROM
(
	SELECT B.branch_name, VT.vehicle_Type_Name, V.vehicle_type_id
	FROM Vehicle.Vehicle as V
	INNER JOIN Vehicle.Vehicle_Type as VT
	ON V.vehicle_type_id = VT.vehicle_type_id
	INNER JOIN Operation.Branch as B
	ON B.branch_id = V.branch_id
) as PivotData

PIVOT
(
	COUNT(vehicle_type_ID)
	FOR vehicle_type_name in ([Crossover], [Sedan], [SUV], [Truck], [Van])
) AS PivotTable
ORDER BY BranchName





-- Uses a pivot to display the Vehicle Availability status per branch
-- Purpose: Displays number of vehicles by current status (Available, Rented, Maintenance, etc.)
-- Used by operations to monitor vehicle availability per branch.

SELECT branch_name as BranchName, [Reserved], [Available], [Rented], [Maintenance]
FROM
(
	SELECT B.branch_name, V.status
	FROM Vehicle.Vehicle as V
	INNER JOIN Operation.Branch as B
	ON B.branch_id = V.branch_id
) as PivotData

PIVOT
(
	COUNT(status)
	FOR status in ([Reserved], [Available], [Rented], [Maintenance])
) AS PivotTable
ORDER BY BranchName



