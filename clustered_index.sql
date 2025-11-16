-- Drops default Clusted Index
ALTER TABLE Customer.Customer_Address
DROP CONSTRAINT [PK__Customer]

-- Changes original clustered index to a non-clustered index
ALTER TABLE Customer.Customer_Address
ADD CONSTRAINT PK_address_id
PRIMARY KEY NONCLUSTERED (customer_address_id)
 
-- Creates a new clustered index
CREATE CLUSTERED INDEX IX_Customer_Address ON Customer.Customer_Address(customer_address_id, street_address)