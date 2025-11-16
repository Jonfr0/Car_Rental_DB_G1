-- Inserted 5 employees with admin-level role
-- These employees are at Branch 1 (headquarters)

-- Employee for CEO role
INSERT INTO Operation.Employee (branch_id, employee_role_id, first_name, middle_name, last_name, email, phone_number, date_of_birth, gender, hire_date, status)
VALUES (1, 11, 'Michael', 'James', 'Bennett', 'michael.bennett@carrental.com', '507-555-9901', '1975-03-15', 'Male', '2010-01-15', 'Active');

-- Employee for CFO role
INSERT INTO Operation.Employee (branch_id, employee_role_id, first_name, middle_name, last_name, email, phone_number, date_of_birth, gender, hire_date, status)
VALUES (1, 12, 'Angela', 'Marie', 'Smith', 'angela.smith@carrental.com', '507-555-9902', '1978-07-22', 'Female', '2012-03-01', 'Active');

-- Employee for VP of Finance role
INSERT INTO Operation.Employee (branch_id, employee_role_id, first_name, middle_name, last_name, email, phone_number, date_of_birth, gender, hire_date, status)
VALUES (1, 13, 'Jorge', 'Luis', 'Garcia', 'jorge.garcia@carrental.com', '507-555-9903', '1980-11-08', 'Male', '2014-06-15', 'Active');

-- Employee for VP of Operations role (Admin but no revenue access)
INSERT INTO Operation.Employee (branch_id, employee_role_id, first_name, middle_name, last_name, email, phone_number, date_of_birth, gender, hire_date, status)
VALUES (1, 14, 'Sarah', 'Elizabeth', 'Chen', 'sarah.chen@carrental.com', '507-555-9904', '1982-05-19', 'Female', '2015-09-01', 'Active');

-- Employee for IT Administrator role (Admin but no revenue access)
INSERT INTO Operation.Employee (branch_id, employee_role_id, first_name, middle_name, last_name, email, phone_number, date_of_birth, gender, hire_date, status)
VALUES (1, 17, 'David', 'Robert', 'Williams', 'david.williams@carrental.com', '507-555-9905', '1976-12-03', 'Male', '2011-04-20', 'Active');


-- Password set during employee activation via one-time setup link

-- User account for CEO (Michael Bennett)
INSERT INTO Operation.[User] (employee_id, username, password, account_status)
VALUES (49, 'ceo_mbennett', '', 'Active'); 

-- User account for CFO (Angela Smith)
INSERT INTO Operation.[User] (employee_id, username, password, account_status)
VALUES (50, 'cfo_asmith', '', 'Active');

-- User account for VP of Finance (Jorge Garcia)
INSERT INTO Operation.[User] (employee_id, username, password, account_status)
VALUES (51, 'vpfin_jgarcia', '', 'Active'); 

-- User account for VP of Operations (Sarah Chen) - Admin access but NO revenue reporting
INSERT INTO Operation.[User] (employee_id, username, password, account_status)
VALUES (52, 'vpops_schen', '', 'Active');

-- User account for IT Administrator (David Williams) - Admin access but NO revenue reporting
INSERT INTO Operation.[User] (employee_id, username, password, account_status)
VALUES (53, 'itadmin_dwilliams', '', 'Active');