-- Clustered Index Deliverable
-- Creates a sample table to manually add a clustered index to it,then searches db for every clustered index and selects them

Use CarRentalDB;
-- Creates a table to show how to add a clustered index automatically

CREATE TABLE ClusteredIndexExample
(
    IndexID int NOT NULL,
    attribute1 varchar(10),
    attribute2 varchar(10)

);
-- Creates a clustered index on Example table

CREATE CLUSTERED INDEX IX_ClusteredIndexExample
on ClusteredIndexExample(IndexID)



-- Selects every clustered index in the DB
SELECT
    T.name AS TableName,
    I.name AS IndexName,
    I.type_desc AS IndexType
FROM sys.indexes I
JOIN sys.tables T ON I.object_id = T.object_id
WHERE I.type_desc = 'CLUSTERED'
ORDER BY T.name;
GO
