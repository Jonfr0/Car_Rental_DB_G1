-- Pivots

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

