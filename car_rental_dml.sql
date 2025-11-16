Use CarRentalDB;
GO

--------------------------------------------------------
-- Insert Sample Data into Operations.Branch - 16 records
--------------------------------------------------------
INSERT INTO Operation.Branch (branch_name, branch_type, phone_number, email, branch_status)
VALUES
('Minneapolis Downtown', 'City', '612-555-1020', 'mpls_downtown@carrental.com', 'Active'),
('Los Angeles Intl Airport', 'Airport', '310-555-2234', 'la_airport@carrental.com', 'Active'),
('New York JFK Airport', 'Airport', '718-555-3412', 'ny_jfk@carrental.com', 'Active'),
('Chicago O''Hare Airport', 'Airport', '773-555-0198', 'chi_ohare@carrental.com', 'Active'),
('Dallas Love Field', 'Airport', '214-555-0912', 'dal_lovefield@carrental.com', 'Active'),
('Houston Downtown', 'City', '713-555-8821', 'houston_city@carrental.com', 'Active'),
('Miami Intl Airport', 'Airport', '305-555-7612', 'mia_airport@carrental.com', 'Active'),
('Orlando Suburban', 'Suburban', '407-555-6620', 'orl_suburban@carrental.com', 'Active'),
('Seattle Downtown', 'City', '206-555-1934', 'sea_downtown@carrental.com', 'Active'),
('Denver Airport', 'Airport', '303-555-7721', 'den_airport@carrental.com', 'Active'),
('San Francisco Intl', 'Airport', '415-555-2341', 'sfo_airport@carrental.com', 'Active'),
('Boston Logan Airport', 'Airport', '617-555-9034', 'bos_logan@carrental.com', 'Active'),
('Las Vegas Strip', 'City', '702-555-2211', 'vegas_strip@carrental.com', 'Active'),
('Phoenix Downtown', 'City', '602-555-1203', 'phx_downtown@carrental.com', 'Active'),
('Atlanta Hartsfield Airport', 'Airport', '404-555-3234', 'atl_airport@carrental.com', 'Active'),
('Tampa Suburban', 'Suburban', '813-555-7890', 'tampa_suburban@carrental.com', 'Active');
GO

--------------------------------------------------------
-- Insert Sample Data into Customer.Customer - 200 records
--------------------------------------------------------
INSERT INTO Customer.Customer (first_name, middle_name, last_name, phone_number, email, date_of_birth, gender)
VALUES
('James', NULL, 'Anderson', '612-555-1001', 'james.anderson@email.com', '1985-03-12', 'Male'),
('Sophia', 'Marie', 'Johnson', '651-555-2301', 'sophia.johnson@email.com', '1992-07-08', 'Female'),
('Liam', NULL, 'Thompson', '763-555-4802', 'liam.thompson@email.com', '1998-11-21', 'Male'),
('Olivia', 'Grace', 'Brown', '507-555-1120', 'olivia.brown@email.com', '1989-02-15', 'Female'),
('Noah', NULL, 'Miller', '952-555-3344', 'noah.miller@email.com', '1996-04-18', 'Male'),
('Emma', 'Rose', 'Davis', '320-555-9970', 'emma.davis@email.com', '1991-12-09', 'Female'),
('Aiden', NULL, 'Wilson', '612-555-5612', 'aiden.wilson@email.com', '2000-08-22', 'Male'),
('Isabella', 'Lynn', 'Taylor', '763-555-4421', 'isabella.taylor@email.com', '1987-01-05', 'Female'),
('Lucas', NULL, 'White', '651-555-6542', 'lucas.white@email.com', '1995-09-28', 'Male'),
('Mia', NULL, 'Martinez', '952-555-7765', 'mia.martinez@email.com', '1993-05-14', 'Female'),
('Ethan', 'James', 'Clark', '507-555-9898', 'ethan.clark@email.com', '1984-06-03', 'Male'),
('Ava', NULL, 'Lewis', '320-555-7712', 'ava.lewis@email.com', '1990-10-26', 'Female'),
('Mason', 'Lee', 'Hall', '763-555-9132', 'mason.hall@email.com', '1998-03-19', 'Male'),
('Charlotte', 'Anne', 'Allen', '952-555-6211', 'charlotte.allen@email.com', '1986-08-07', 'Female'),
('Logan', NULL, 'Young', '612-555-7510', 'logan.young@email.com', '1999-09-30', 'Male'),
('Amelia', 'Kate', 'Hernandez', '507-555-2209', 'amelia.hernandez@email.com', '1997-12-17', 'Female'),
('Elijah', NULL, 'King', '651-555-1342', 'elijah.king@email.com', '1994-07-23', 'Male'),
('Harper', 'May', 'Wright', '320-555-8751', 'harper.wright@email.com', '1991-05-11', 'Female'),
('Benjamin', NULL, 'Lopez', '763-555-1943', 'benjamin.lopez@email.com', '1988-11-01', 'Male'),
('Evelyn', 'Grace', 'Scott', '952-555-9154', 'evelyn.scott@email.com', '1992-09-09', 'Female'),
('William', NULL, 'Green', '612-555-8433', 'william.green@email.com', '1983-02-14', 'Male'),
('Abigail', 'Lynn', 'Adams', '507-555-2265', 'abigail.adams@email.com', '1999-01-08', 'Female'),
('Alexander', NULL, 'Nelson', '651-555-1299', 'alexander.nelson@email.com', '1995-03-22', 'Male'),
('Ella', 'Rose', 'Baker', '320-555-3307', 'ella.baker@email.com', '1989-04-19', 'Female'),
('Daniel', NULL, 'Hill', '952-555-6202', 'daniel.hill@email.com', '1990-06-06', 'Male'),
('Scarlett', 'Jane', 'Rivera', '763-555-4431', 'scarlett.rivera@email.com', '1996-07-13', 'Female'),
('Henry', NULL, 'Campbell', '612-555-9201', 'henry.campbell@email.com', '1985-11-25', 'Male'),
('Emily', NULL, 'Mitchell', '507-555-7719', 'emily.mitchell@email.com', '1993-03-17', 'Female'),
('Jack', NULL, 'Perez', '651-555-1180', 'jack.perez@email.com', '1997-12-29', 'Male'),
('Grace', 'Marie', 'Roberts', '320-555-9821', 'grace.roberts@email.com', '1994-01-03', 'Female'),
('Michael', NULL, 'Rodriguez', '763-555-8834', 'michael.rodriguez@email.com', '1987-09-15', 'Male'),
('Victoria', 'Ann', 'Cooper', '952-555-4567', 'victoria.cooper@email.com', '1991-04-28', 'Female'),
('Samuel', NULL, 'Ward', '612-555-3421', 'samuel.ward@email.com', '1986-12-10', 'Male'),
('Lily', 'Faith', 'Turner', '507-555-9876', 'lily.turner@email.com', '1995-08-05', 'Female'),
('David', 'Paul', 'Phillips', '651-555-2143', 'david.phillips@email.com', '1992-02-22', 'Male'),
('Zoe', NULL, 'Parker', '320-555-5678', 'zoe.parker@email.com', '1998-06-14', 'Female'),
('Christopher', NULL, 'Evans', '763-555-7890', 'christopher.evans@email.com', '1984-11-09', 'Male'),
('Nora', 'Elizabeth', 'Edwards', '952-555-1357', 'nora.edwards@email.com', '1996-03-26', 'Female'),
('Ryan', NULL, 'Collins', '612-555-2468', 'ryan.collins@email.com', '1989-07-18', 'Male'),
('Hannah', 'Joy', 'Stewart', '507-555-3691', 'hannah.stewart@email.com', '1993-10-12', 'Female'),
('Brandon', NULL, 'Sanchez', '651-555-4815', 'brandon.sanchez@email.com', '1990-05-07', 'Male'),
('Chloe', 'Marie', 'Morris', '320-555-5926', 'chloe.morris@email.com', '1997-01-31', 'Female'),
('Tyler', 'James', 'Rogers', '763-555-6037', 'tyler.rogers@email.com', '1985-12-23', 'Male'),
('Natalie', NULL, 'Reed', '952-555-7148', 'natalie.reed@email.com', '1994-09-16', 'Female'),
('Austin', NULL, 'Cook', '612-555-8259', 'austin.cook@email.com', '1988-04-02', 'Male'),
('Madison', 'Rose', 'Bailey', '507-555-9361', 'madison.bailey@email.com', '1999-08-29', 'Female'),
('Jonathan', NULL, 'Rivera', '651-555-1472', 'jonathan.rivera@email.com', '1991-06-11', 'Male'),
('Leah', 'Nicole', 'Cox', '320-555-2583', 'leah.cox@email.com', '1996-11-04', 'Female'),
('Caleb', NULL, 'Ward', '763-555-3694', 'caleb.ward@email.com', '1987-03-21', 'Male'),
('Rachel', 'Dawn', 'Flores', '952-555-4705', 'rachel.flores@email.com', '1993-08-14', 'Female'),
('Kevin', NULL, 'Washington', '612-555-5816', 'kevin.washington@email.com', '1986-05-28', 'Male'),
('Sarah', 'Michelle', 'Butler', '507-555-6927', 'sarah.butler@email.com', '1990-12-07', 'Female'),
('Jeremy', NULL, 'Simmons', '651-555-8038', 'jeremy.simmons@email.com', '1995-02-19', 'Male'),
('Kimberly', 'Rose', 'Foster', '320-555-9149', 'kimberly.foster@email.com', '1988-09-25', 'Female'),
('Matthew', NULL, 'Gonzales', '763-555-1250', 'matthew.gonzales@email.com', '1992-04-13', 'Male'),
('Amanda', 'Sue', 'Bryant', '952-555-2361', 'amanda.bryant@email.com', '1989-11-30', 'Female'),
('Nicholas', NULL, 'Alexander', '612-555-3472', 'nicholas.alexander@email.com', '1996-07-08', 'Male'),
('Jessica', 'Lynn', 'Russell', '507-555-4583', 'jessica.russell@email.com', '1994-01-22', 'Female'),
('Anthony', NULL, 'Griffin', '651-555-5694', 'anthony.griffin@email.com', '1985-10-16', 'Male'),
('Ashley', 'Marie', 'Diaz', '320-555-6805', 'ashley.diaz@email.com', '1991-06-03', 'Female'),
('Jacob', NULL, 'Hayes', '763-555-7916', 'jacob.hayes@email.com', '1998-03-27', 'Male'),
('Stephanie', 'Nicole', 'Myers', '952-555-8127', 'stephanie.myers@email.com', '1987-12-14', 'Female'),
('Joshua', NULL, 'Ford', '612-555-9238', 'joshua.ford@email.com', '1993-05-01', 'Male'),
('Melissa', 'Kay', 'Hamilton', '507-555-1349', 'melissa.hamilton@email.com', '1990-08-18', 'Female'),
('Andrew', NULL, 'Graham', '651-555-2450', 'andrew.graham@email.com', '1986-11-11', 'Male'),
('Megan', 'Elizabeth', 'Sullivan', '320-555-3561', 'megan.sullivan@email.com', '1995-04-24', 'Female'),
('Eric', NULL, 'Wallace', '763-555-4672', 'eric.wallace@email.com', '1988-09-07', 'Male'),
('Lauren', 'Grace', 'Woods', '952-555-5783', 'lauren.woods@email.com', '1992-02-15', 'Female'),
('Steven', NULL, 'Cole', '612-555-6894', 'steven.cole@email.com', '1984-07-29', 'Male'),
('Nicole', 'Ann', 'West', '507-555-7905', 'nicole.west@email.com', '1997-01-12', 'Female'),
('Brian', NULL, 'Jordan', '651-555-8916', 'brian.jordan@email.com', '1989-10-05', 'Male'),
('Amber', 'Faith', 'Owens', '320-555-9027', 'amber.owens@email.com', '1994-03-18', 'Female'),
('Justin', NULL, 'Reynolds', '763-555-1138', 'justin.reynolds@email.com', '1991-12-31', 'Male'),
('Heather', 'Lynn', 'Fisher', '952-555-2249', 'heather.fisher@email.com', '1987-06-23', 'Female'),
('Adam', NULL, 'Ellis', '612-555-3350', 'adam.ellis@email.com', '1996-09-16', 'Male'),
('Danielle', 'Rose', 'Harrison', '507-555-4461', 'danielle.harrison@email.com', '1993-04-09', 'Female'),
('Robert', NULL, 'Gibson', '651-555-5572', 'robert.gibson@email.com', '1985-11-02', 'Male'),
('Crystal', 'Marie', 'McDonald', '320-555-6683', 'crystal.mcdonald@email.com', '1990-08-25', 'Female'),
('Mark', NULL, 'Cruz', '763-555-7794', 'mark.cruz@email.com', '1988-01-17', 'Male'),
('Tiffany', 'Nicole', 'Marshall', '952-555-8805', 'tiffany.marshall@email.com', '1995-06-10', 'Female'),
('Connor', NULL, 'Williams', '612-555-9001', 'connor.williams@email.com', '1989-03-14', 'Male'),
('Isabella', 'Grace', 'Davis', '763-555-9002', 'isabella.davis@email.com', '1994-08-27', 'Female'),
('Mason', 'Lee', 'Johnson', '651-555-9003', 'mason.johnson@email.com', '1986-12-05', 'Male'),
('Sophia', NULL, 'Brown', '507-555-9004', 'sophia.brown@email.com', '1991-07-18', 'Female'),
('Ethan', 'Michael', 'Jones', '952-555-9005', 'ethan.jones@email.com', '1988-01-22', 'Male'),
('Olivia', 'Rose', 'Miller', '320-555-9006', 'olivia.miller@email.com', '1993-05-16', 'Female'),
('Liam', NULL, 'Wilson', '612-555-9007', 'liam.wilson@email.com', '1985-09-30', 'Male'),
('Emma', 'Faith', 'Moore', '763-555-9008', 'emma.moore@email.com', '1996-02-14', 'Female'),
('Noah', NULL, 'Taylor', '651-555-9009', 'noah.taylor@email.com', '1990-11-07', 'Male'),
('Ava', 'Marie', 'Anderson', '507-555-9010', 'ava.anderson@email.com', '1987-04-21', 'Female'),
('Jacob', NULL, 'Thomas', '952-555-9011', 'jacob.thomas@email.com', '1992-08-03', 'Male'),
('Mia', 'Elizabeth', 'Jackson', '320-555-9012', 'mia.jackson@email.com', '1989-12-16', 'Female'),
('William', 'James', 'White', '612-555-9013', 'william.white@email.com', '1984-06-29', 'Male'),
('Charlotte', NULL, 'Harris', '763-555-9014', 'charlotte.harris@email.com', '1995-03-12', 'Female'),
('Benjamin', NULL, 'Martin', '651-555-9015', 'benjamin.martin@email.com', '1987-10-25', 'Male'),
('Amelia', 'Grace', 'Thompson', '507-555-9016', 'amelia.thompson@email.com', '1991-01-08', 'Female'),
('James', 'Robert', 'Garcia', '952-555-9017', 'james.garcia@email.com', '1988-07-14', 'Male'),
('Harper', NULL, 'Martinez', '320-555-9018', 'harper.martinez@email.com', '1993-04-27', 'Female'),
('Alexander', NULL, 'Robinson', '612-555-9019', 'alexander.robinson@email.com', '1986-11-10', 'Male'),
('Evelyn', 'Rose', 'Clark', '763-555-9020', 'evelyn.clark@email.com', '1994-09-23', 'Female'),
('Michael', NULL, 'Rodriguez', '651-555-9021', 'michael.rodriguez2@email.com', '1989-05-06', 'Male'),
('Abigail', 'Lynn', 'Lewis', '507-555-9022', 'abigail.lewis@email.com', '1990-12-19', 'Female'),
('Elijah', NULL, 'Lee', '952-555-9023', 'elijah.lee@email.com', '1985-08-02', 'Male'),
('Emily', 'Kate', 'Walker', '320-555-9024', 'emily.walker@email.com', '1996-02-15', 'Female'),
('Daniel', NULL, 'Hall', '612-555-9025', 'daniel.hall@email.com', '1987-09-28', 'Male'),
('Elizabeth', 'Marie', 'Allen', '763-555-9026', 'elizabeth.allen@email.com', '1992-06-11', 'Female'),
('Matthew', NULL, 'Young', '651-555-9027', 'matthew.young@email.com', '1984-03-24', 'Male'),
('Sofia', NULL, 'Hernandez', '507-555-9028', 'sofia.hernandez@email.com', '1995-10-07', 'Female'),
('Anthony', 'David', 'King', '952-555-9029', 'anthony.king@email.com', '1988-01-20', 'Male'),
('Avery', 'Grace', 'Wright', '320-555-9030', 'avery.wright@email.com', '1993-07-03', 'Female'),
('Joshua', NULL, 'Lopez', '612-555-9031', 'joshua.lopez@email.com', '1986-12-16', 'Male'),
('Ella', 'Rose', 'Hill', '763-555-9032', 'ella.hill@email.com', '1991-04-29', 'Female'),
('Andrew', NULL, 'Scott', '651-555-9033', 'andrew.scott@email.com', '1989-11-12', 'Male'),
('Scarlett', 'Faith', 'Green', '507-555-9034', 'scarlett.green@email.com', '1994-08-25', 'Female'),
('Christopher', NULL, 'Adams', '952-555-9035', 'christopher.adams@email.com', '1987-05-08', 'Male'),
('Victoria', 'Lynn', 'Baker', '320-555-9036', 'victoria.baker@email.com', '1990-02-21', 'Female'),
('Joseph', NULL, 'Gonzalez', '612-555-9037', 'joseph.gonzalez@email.com', '1985-09-04', 'Male'),
('Grace', 'Elizabeth', 'Nelson', '763-555-9038', 'grace.nelson@email.com', '1996-06-17', 'Female'),
('David', 'Michael', 'Carter', '651-555-9039', 'david.carter@email.com', '1988-03-30', 'Male'),
('Chloe', NULL, 'Mitchell', '507-555-9040', 'chloe.mitchell@email.com', '1993-10-13', 'Female'),
('Samuel', NULL, 'Perez', '952-555-9041', 'samuel.perez@email.com', '1986-07-26', 'Male'),
('Zoey', 'Marie', 'Roberts', '320-555-9042', 'zoey.roberts@email.com', '1991-04-09', 'Female'),
('John', NULL, 'Turner', '612-555-9043', 'john.turner@email.com', '1989-01-22', 'Male'),
('Penelope', 'Grace', 'Phillips', '763-555-9044', 'penelope.phillips@email.com', '1994-08-05', 'Female'),
('Luke', NULL, 'Campbell', '651-555-9045', 'luke.campbell@email.com', '1987-12-18', 'Male'),
('Layla', 'Rose', 'Parker', '507-555-9046', 'layla.parker@email.com', '1992-09-01', 'Female'),
('Ryan', NULL, 'Evans', '952-555-9047', 'ryan.evans@email.com', '1985-05-14', 'Male'),
('Nora', 'Faith', 'Edwards', '320-555-9048', 'nora.edwards@email.com', '1996-02-27', 'Female'),
('Nathan', NULL, 'Collins', '612-555-9049', 'nathan.collins@email.com', '1988-11-10', 'Male'),
('Hazel', 'Lynn', 'Stewart', '763-555-9050', 'hazel.stewart@email.com', '1993-06-23', 'Female'),
('Caleb', NULL, 'Sanchez', '651-555-9051', 'caleb.sanchez@email.com', '1990-03-06', 'Male'),
('Aria', 'Elizabeth', 'Morris', '507-555-9052', 'aria.morris@email.com', '1987-10-19', 'Female'),
('Isaiah', NULL, 'Rogers', '952-555-9053', 'isaiah.rogers@email.com', '1994-07-02', 'Male'),
('Violet', 'Marie', 'Reed', '320-555-9054', 'violet.reed@email.com', '1989-04-15', 'Female'),
('Thomas', NULL, 'Cook', '612-555-9055', 'thomas.cook@email.com', '1986-01-28', 'Male'),
('Luna', 'Grace', 'Bailey', '763-555-9056', 'luna.bailey@email.com', '1995-08-11', 'Female'),
('Jordan', NULL, 'Rivera', '651-555-9057', 'jordan.rivera@email.com', '1988-05-24', 'Male'),
('Stella', 'Rose', 'Cooper', '507-555-9058', 'stella.cooper@email.com', '1991-02-06', 'Female'),
('Jeremiah', NULL, 'Richardson', '952-555-9059', 'jeremiah.richardson@email.com', '1987-09-19', 'Male'),
('Aurora', 'Faith', 'Cox', '320-555-9060', 'aurora.cox@email.com', '1993-06-02', 'Female'),
('Cameron', NULL, 'Ward', '612-555-9061', 'cameron.ward@email.com', '1985-12-15', 'Male'),
('Savannah', 'Lynn', 'Torres', '763-555-9062', 'savannah.torres@email.com', '1996-03-28', 'Female'),
('Adrian', NULL, 'Peterson', '651-555-9063', 'adrian.peterson@email.com', '1989-10-11', 'Male'),
('Brooklyn', 'Elizabeth', 'Gray', '507-555-9064', 'brooklyn.gray@email.com', '1992-07-24', 'Female'),
('Wyatt', NULL, 'Ramirez', '952-555-9065', 'wyatt.ramirez@email.com', '1984-04-07', 'Male'),
('Bella', 'Marie', 'James', '320-555-9066', 'bella.james@email.com', '1994-01-20', 'Female'),
('Hunter', NULL, 'Watson', '612-555-9067', 'hunter.watson@email.com', '1987-08-03', 'Male'),
('Claire', 'Grace', 'Brooks', '763-555-9068', 'claire.brooks@email.com', '1990-05-16', 'Female'),
('Jack', NULL, 'Kelly', '651-555-9069', 'jack.kelly@email.com', '1986-02-28', 'Male'),
('Skylar', 'Rose', 'Sanders', '507-555-9070', 'skylar.sanders@email.com', '1995-11-12', 'Female'),
('Owen', NULL, 'Price', '952-555-9071', 'owen.price@email.com', '1988-08-25', 'Male'),
('Addison', 'Faith', 'Bennett', '320-555-9072', 'addison.bennett@email.com', '1991-05-08', 'Female'),
('Grayson', NULL, 'Wood', '612-555-9073', 'grayson.wood@email.com', '1989-02-21', 'Male'),
('Lillian', 'Lynn', 'Barnes', '763-555-9074', 'lillian.barnes@email.com', '1993-09-04', 'Female'),
('Eli', NULL, 'Ross', '651-555-9075', 'eli.ross@email.com', '1987-06-17', 'Male'),
('Natalie', 'Elizabeth', 'Henderson', '507-555-9076', 'natalie.henderson@email.com', '1994-03-30', 'Female'),
('Aaron', NULL, 'Coleman', '952-555-9077', 'aaron.coleman@email.com', '1985-12-13', 'Male'),
('Leah', 'Marie', 'Jenkins', '320-555-9078', 'leah.jenkins@email.com', '1996-09-26', 'Female'),
('Lucas', 'James', 'Perry', '612-555-9079', 'lucas.perry@email.com', '1988-06-09', 'Male'),
('Hannah', 'Grace', 'Powell', '763-555-9080', 'hannah.powell@email.com', '1990-03-22', 'Female'),
('Henry', NULL, 'Long', '651-555-9081', 'henry.long@email.com', '1987-10-05', 'Male'),
('Zoe', 'Rose', 'Patterson', '507-555-9082', 'zoe.patterson@email.com', '1992-07-18', 'Female'),
('Sebastian', NULL, 'Hughes', '952-555-9083', 'sebastian.hughes@email.com', '1984-04-01', 'Male'),
('Aubrey', 'Faith', 'Flores', '320-555-9084', 'aubrey.flores@email.com', '1995-01-14', 'Female'),
('Christian', NULL, 'Washington', '612-555-9085', 'christian.washington@email.com', '1989-08-27', 'Male'),
('Anna', 'Lynn', 'Butler', '763-555-9086', 'anna.butler@email.com', '1991-05-10', 'Female'),
('Jaxon', NULL, 'Simmons', '651-555-9087', 'jaxon.simmons@email.com', '1986-02-23', 'Male'),
('Maya', 'Elizabeth', 'Foster', '507-555-9088', 'maya.foster@email.com', '1993-11-06', 'Female'),
('Ian', NULL, 'Gonzales', '952-555-9089', 'ian.gonzales@email.com', '1988-08-19', 'Male'),
('Naomi', 'Marie', 'Bryant', '320-555-9090', 'naomi.bryant@email.com', '1994-05-02', 'Female'),
('Cooper', NULL, 'Alexander', '612-555-9091', 'cooper.alexander@email.com', '1987-02-15', 'Male'),
('Audrey', 'Grace', 'Russell', '763-555-9092', 'audrey.russell@email.com', '1990-09-28', 'Female'),
('Colton', NULL, 'Griffin', '651-555-9093', 'colton.griffin@email.com', '1985-06-11', 'Male'),
('Samantha', 'Rose', 'Diaz', '507-555-9094', 'samantha.diaz@email.com', '1996-03-24', 'Female'),
('Parker', NULL, 'Hayes', '952-555-9095', 'parker.hayes@email.com', '1988-12-07', 'Male'),
('Sarah', 'Faith', 'Myers', '320-555-9096', 'sarah.myers2@email.com', '1991-09-20', 'Female'),
('Blake', NULL, 'Ford', '612-555-9097', 'blake.ford@email.com', '1989-06-03', 'Male'),
('Aaliyah', 'Lynn', 'Hamilton', '763-555-9098', 'aaliyah.hamilton@email.com', '1992-03-16', 'Female'),
('Xavier', NULL, 'Graham', '651-555-9099', 'xavier.graham@email.com', '1984-10-29', 'Male'),
('Allison', 'Elizabeth', 'Sullivan', '507-555-9100', 'allison.sullivan@email.com', '1995-07-12', 'Female'),
('Jason', NULL, 'Wallace', '952-555-9101', 'jason.wallace@email.com', '1987-04-25', 'Male'),
('Maria', 'Marie', 'Woods', '320-555-9102', 'maria.woods@email.com', '1990-01-08', 'Female'),
('Easton', NULL, 'Cole', '612-555-9103', 'easton.cole@email.com', '1986-08-21', 'Male'),
('Madelyn', 'Grace', 'West', '763-555-9104', 'madelyn.west@email.com', '1993-05-04', 'Female'),
('Jose', NULL, 'Jordan', '651-555-9105', 'jose.jordan@email.com', '1988-02-17', 'Male'),
('Kaylee', 'Rose', 'Owens', '507-555-9106', 'kaylee.owens@email.com', '1994-11-30', 'Female'),
('Lincoln', NULL, 'Reynolds', '952-555-9107', 'lincoln.reynolds@email.com', '1989-09-13', 'Male'),
('Gabriella', 'Faith', 'Fisher', '320-555-9108', 'gabriella.fisher@email.com', '1991-06-26', 'Female'),
('Carter', NULL, 'Ellis', '612-555-9109', 'carter.ellis@email.com', '1985-03-09', 'Male'),
('Ariana', 'Lynn', 'Harrison', '763-555-9110', 'ariana.harrison@email.com', '1996-10-22', 'Female'),
('Gavin', NULL, 'Gibson', '651-555-9111', 'gavin.gibson@email.com', '1987-07-05', 'Male'),
('Genesis', 'Elizabeth', 'McDonald', '507-555-9112', 'genesis.mcdonald@email.com', '1992-04-18', 'Female'),
('Juan', NULL, 'Cruz', '952-555-9113', 'juan.cruz@email.com', '1984-01-01', 'Male'),
('Serenity', 'Marie', 'Marshall', '320-555-9114', 'serenity.marshall@email.com', '1995-08-14', 'Female'),
('Carson', NULL, 'Ortiz', '612-555-9115', 'carson.ortiz@email.com', '1988-05-27', 'Male'),
('Sadie', 'Grace', 'Gomez', '763-555-9116', 'sadie.gomez@email.com', '1990-02-09', 'Female'),
('Brody', NULL, 'Murray', '651-555-9117', 'brody.murray@email.com', '1986-09-22', 'Male'),
('Piper', 'Rose', 'Freeman', '507-555-9118', 'piper.freeman@email.com', '1993-06-05', 'Female'),
('Tristan', NULL, 'Wells', '952-555-9119', 'tristan.wells@email.com', '1989-03-18', 'Male'),
('Mackenzie', 'Faith', 'Webb', '320-555-9120', 'mackenzie.webb@email.com', '1994-12-01', 'Female');
GO


--------------------------------------------------------
-- Insert Sample Data into Vehicle.Vehicle_Purchase
--------------------------------------------------------
INSERT INTO Vehicle.Vehicle_Purchase (purchase_date, purchase_type, purchase_from, purchase_price)
VALUES
('2018-03-14', 'Outright', 'AutoNation Minneapolis', 24500.00),
('2018-06-09', 'Lease', 'Enterprise Fleet Services', 23000.00),
('2019-01-21', 'Auction', 'Manheim Auto Auction', 18500.00),
('2019-07-03', 'Outright', 'CarMax Denver', 27500.00),
('2020-02-15', 'Lease', 'Hertz Fleet Division', 26000.00),
('2020-09-12', 'Outright', 'AutoNation Dallas', 29500.00),
('2021-01-10', 'Auction', 'Copart Inc.', 17850.00),
('2021-04-25', 'Outright', 'Toyota of Los Angeles', 31000.00),
('2021-09-18', 'Lease', 'Avis Fleet Solutions', 28500.00),
('2022-02-09', 'Outright', 'Carvana Atlanta', 33000.00),
('2022-05-23', 'Outright', 'BMW of Houston North', 49000.00),
('2022-07-14', 'Lease', 'Enterprise Fleet Services', 27500.00),
('2022-10-30', 'Auction', 'IAAI Vehicle Auction', 22000.00),
('2023-01-06', 'Outright', 'Ford of Minneapolis', 31000.00),
('2023-03-12', 'Outright', 'Chevrolet of Seattle', 29500.00),
('2023-05-22', 'Lease', 'Hertz Fleet Division', 34000.00),
('2023-07-09', 'Outright', 'Honda of Orlando', 28500.00),
('2023-09-18', 'Auction', 'Manheim Auto Auction', 19800.00),
('2023-11-25', 'Outright', 'Tesla Store San Diego', 56000.00),
('2024-01-14', 'Outright', 'Carvana Houston', 37000.00),
('2024-03-02', 'Lease', 'Avis Fleet Solutions', 29000.00),
('2024-04-21', 'Outright', 'Subaru of Portland', 31500.00),
('2024-06-08', 'Auction', 'Copart Inc.', 20500.00),
('2024-08-15', 'Outright', 'Nissan of Miami', 29800.00),
('2024-09-27', 'Lease', 'Enterprise Fleet Services', 32000.00),
('2024-10-30', 'Outright', 'Ford of Chicago', 35500.00),
('2024-12-22', 'Outright', 'Audi of New York', 47500.00),
('2025-01-10', 'Auction', 'IAAI Vehicle Auction', 24500.00),
('2025-03-14', 'Lease', 'Hertz Fleet Division', 31500.00),
('2025-05-01', 'Outright', 'Tesla Store Los Angeles', 59000.00),
('2025-05-15', 'Auction', 'Manheim Auto Auction', 21750.00),
('2025-05-28', 'Lease', 'Enterprise Fleet Services', 33500.00),
('2025-06-12', 'Outright', 'Mazda of Denver', 26800.00),
('2025-06-25', 'Outright', 'Volkswagen of Boston', 29200.00),
('2025-07-08', 'Auction', 'Copart Inc.', 18900.00),
('2025-07-22', 'Lease', 'Hertz Fleet Division', 35000.00),
('2025-08-05', 'Outright', 'Lexus of Las Vegas', 52000.00),
('2025-08-18', 'Outright', 'Hyundai of Atlanta', 24500.00),
('2025-09-02', 'Auction', 'IAAI Vehicle Auction', 19800.00),
('2025-09-15', 'Lease', 'Avis Fleet Solutions', 30500.00),
('2025-09-28', 'Outright', 'GMC of Phoenix', 38000.00),
('2025-10-12', 'Outright', 'Acura of San Francisco', 41500.00),
('2025-10-25', 'Auction', 'Manheim Auto Auction', 23200.00),
('2025-11-08', 'Outright', 'Infiniti of Charlotte', 36800.00),
('2025-11-21', 'Lease', 'Enterprise Fleet Services', 32000.00),
('2020-02-18', 'Outright', 'Jeep of Detroit', 34500.00),
('2020-05-14', 'Auction', 'Copart Inc.', 16800.00),
('2020-08-29', 'Lease', 'Hertz Fleet Division', 28500.00),
('2020-11-16', 'Outright', 'Cadillac of Tampa', 48500.00),
('2021-02-03', 'Outright', 'Subaru of San Jose', 27900.00),
('2021-05-20', 'Auction', 'IAAI Vehicle Auction', 20100.00),
('2021-08-07', 'Lease', 'Avis Fleet Solutions', 31500.00),
('2021-11-24', 'Outright', 'Lincoln of Cincinnati', 43000.00),
('2022-01-18', 'Outright', 'Kia of Indianapolis', 23800.00),
('2022-04-15', 'Auction', 'Manheim Auto Auction', 19500.00),
('2022-06-28', 'Lease', 'Enterprise Fleet Services', 29800.00),
('2022-09-12', 'Outright', 'Volvo of Baltimore', 45500.00),
('2022-12-05', 'Outright', 'Mitsubishi of St. Louis', 22500.00),
('2023-02-22', 'Auction', 'Copart Inc.', 17200.00),
('2023-04-18', 'Lease', 'Hertz Fleet Division', 33000.00),
('2023-06-30', 'Outright', 'Genesis of Nashville', 47000.00),
('2023-08-14', 'Outright', 'Dodge of Kansas City', 35500.00),
('2023-10-28', 'Auction', 'IAAI Vehicle Auction', 21600.00),
('2023-12-15', 'Lease', 'Avis Fleet Solutions', 28000.00),
('2019-03-08', 'Outright', 'Mercedes-Benz of Miami Beach', 62000.00),
('2019-06-21', 'Auction', 'Manheim Auto Auction', 24800.00),
('2019-09-04', 'Lease', 'Enterprise Fleet Services', 36500.00),
('2019-11-18', 'Outright', 'Porsche of Orlando', 78000.00),
('2020-01-12', 'Outright', 'Mini of Seattle Downtown', 32000.00),
('2018-04-25', 'Auction', 'Copart Inc.', 15500.00),
('2018-07-19', 'Lease', 'Hertz Fleet Division', 25500.00),
('2018-10-03', 'Outright', 'Chrysler of Denver Tech', 28800.00),
('2018-12-28', 'Outright', 'Ram of San Francisco Bay', 41000.00),
('2017-02-14', 'Auction', 'IAAI Vehicle Auction', 14200.00),
('2017-05-30', 'Lease', 'Avis Fleet Solutions', 24000.00),
('2017-08-16', 'Outright', 'Buick of Boston Harbor', 33500.00),
('2017-11-09', 'Outright', 'Smart of Las Vegas Strip', 18500.00),
('2016-01-22', 'Auction', 'Manheim Auto Auction', 12800.00),
('2016-04-18', 'Lease', 'Enterprise Fleet Services', 22500.00),
-- 2025 purchases for all branches
('2025-01-15', 'Outright', 'Toyota of Minneapolis', 32500.00),
('2025-01-20', 'Lease', 'Honda of Los Angeles', 29800.00),
('2025-01-25', 'Outright', 'Ford of New York', 35200.00),
('2025-02-01', 'Auction', 'Manheim Chicago', 22400.00),
('2025-02-05', 'Outright', 'Chevrolet of Dallas', 28900.00),
('2025-02-10', 'Lease', 'Nissan of Houston', 31200.00),
('2025-02-15', 'Outright', 'BMW of Miami', 52800.00),
('2025-02-20', 'Auction', 'Copart Seattle', 19600.00),
('2025-02-25', 'Lease', 'Audi of Denver', 48500.00),
('2025-03-01', 'Outright', 'Tesla of San Francisco', 67000.00),
('2025-03-05', 'Auction', 'IAAI Boston', 21800.00),
('2025-03-10', 'Lease', 'Mercedes Las Vegas', 55200.00),
('2025-03-15', 'Outright', 'Lexus of Phoenix', 49800.00),
('2025-03-20', 'Auction', 'Manheim Atlanta', 23600.00),
('2025-03-25', 'Outright', 'Hyundai of Orlando', 26400.00),
-- Additional purchases for Minneapolis
('2025-04-01', 'Lease', 'Subaru of Minneapolis', 27800.00),
('2025-04-05', 'Outright', 'Mazda of Minneapolis', 24200.00),
('2025-04-10', 'Auction', 'Copart Minneapolis', 18900.00),
('2025-04-15', 'Outright', 'Kia of Minneapolis', 25600.00),
('2025-04-20', 'Lease', 'Volkswagen Minneapolis', 30100.00),
('2025-04-25', 'Outright', 'Acura of Minneapolis', 38700.00),
-- Additional purchases for Los Angeles
('2025-05-01', 'Lease', 'Infiniti of LA', 42300.00),
('2025-05-05', 'Outright', 'Cadillac of LA', 51200.00),
('2025-05-10', 'Auction', 'Manheim LA', 20800.00),
('2025-05-15', 'Outright', 'Lincoln of LA', 46900.00),
('2025-05-20', 'Lease', 'Volvo of LA', 43500.00),
('2025-05-25', 'Outright', 'Genesis of LA', 48200.00),
-- Additional purchases for New York
('2025-06-01', 'Lease', 'Porsche of NY', 78500.00),
('2025-06-05', 'Outright', 'Jaguar of NY', 62400.00),
('2025-06-10', 'Auction', 'Copart NY', 24600.00),
('2025-06-15', 'Outright', 'Land Rover NY', 58900.00),
('2025-06-20', 'Lease', 'Maserati of NY', 82300.00),
('2025-06-25', 'Outright', 'Bentley of NY', 145000.00),
-- Additional purchases for Chicago
('2025-07-01', 'Lease', 'Buick of Chicago', 34200.00),
('2025-07-05', 'Outright', 'GMC of Chicago', 41800.00),
('2025-07-10', 'Auction', 'IAAI Chicago', 19400.00),
('2025-07-15', 'Outright', 'Chrysler of Chicago', 29600.00),
('2025-07-20', 'Lease', 'Dodge of Chicago', 32800.00),
('2025-07-25', 'Outright', 'Jeep of Chicago', 38400.00),
-- Additional purchases for Dallas
('2025-08-01', 'Lease', 'Ram of Dallas', 42600.00),
('2025-08-05', 'Outright', 'Mini of Dallas', 31800.00),
('2025-08-10', 'Auction', 'Manheim Dallas', 22100.00),
('2025-08-15', 'Outright', 'Smart of Dallas', 18600.00),
('2025-08-20', 'Lease', 'Fiat of Dallas', 21400.00),
('2025-08-25', 'Outright', 'Alfa Romeo Dallas', 45200.00),
-- Additional purchases for Houston
('2025-09-01', 'Lease', 'Tesla of Houston', 65800.00),
('2025-09-05', 'Outright', 'Lucid Motors Houston', 89500.00),
('2025-09-10', 'Auction', 'Copart Houston', 26400.00),
('2025-09-15', 'Outright', 'Rivian of Houston', 72300.00),
('2025-09-20', 'Lease', 'Polestar Houston', 54200.00),
('2025-09-25', 'Outright', 'BYD Houston', 38900.00),
-- Additional purchases for Miami
('2025-10-01', 'Lease', 'Ferrari of Miami', 285000.00),
('2025-10-05', 'Outright', 'Lamborghini Miami', 245000.00),
('2025-10-10', 'Auction', 'IAAI Miami', 18200.00),
('2025-10-15', 'Outright', 'McLaren of Miami', 198000.00),
('2025-10-20', 'Lease', 'Aston Martin Miami', 165000.00),
('2025-10-25', 'Outright', 'Rolls Royce Miami', 320000.00),
-- Additional purchases for Seattle
('2025-11-01', 'Lease', 'Subaru of Seattle', 28900.00),
('2025-11-05', 'Outright', 'Volvo of Seattle', 44600.00),
('2025-11-10', 'Auction', 'Copart Seattle', 21300.00),
('2025-11-15', 'Outright', 'Prius of Seattle', 27800.00),
('2025-11-20', 'Lease', 'Leaf of Seattle', 32400.00),
('2025-11-25', 'Outright', 'Model Y Seattle', 52600.00),
-- Additional purchases for Denver
('2024-01-01', 'Lease', 'Ford of Denver', 31200.00),
('2024-01-05', 'Outright', 'Chevrolet of Denver', 29400.00),
('2024-01-10', 'Auction', 'Manheim Denver', 20600.00),
('2024-01-15', 'Outright', 'GMC of Denver', 38900.00),
('2024-01-20', 'Lease', 'Cadillac of Denver', 47800.00),
('2024-01-25', 'Outright', 'Buick of Denver', 33600.00),
-- Additional purchases for San Francisco
('2024-02-01', 'Lease', 'Tesla of SF', 61200.00),
('2024-02-05', 'Outright', 'Apple Car SF', 75000.00),
('2024-02-10', 'Auction', 'Copart SF', 28400.00),
('2024-02-15', 'Outright', 'Google Car SF', 68500.00),
('2024-02-20', 'Lease', 'Waymo SF', 85200.00),
('2024-02-25', 'Outright', 'Cruise SF', 72800.00),
-- Additional purchases for Boston
('2024-03-01', 'Lease', 'Honda of Boston', 28600.00),
('2024-03-05', 'Outright', 'Toyota of Boston', 31800.00),
('2024-03-10', 'Auction', 'IAAI Boston', 19800.00),
('2024-03-15', 'Outright', 'Nissan of Boston', 29200.00),
('2024-03-20', 'Lease', 'Mazda of Boston', 26400.00),
('2024-03-25', 'Outright', 'Hyundai of Boston', 27600.00),
-- Additional purchases for Las Vegas
('2024-04-01', 'Lease', 'Luxury Cars Vegas', 58400.00),
('2024-04-05', 'Outright', 'Exotic Cars Vegas', 125000.00),
('2024-04-10', 'Auction', 'Manheim Vegas', 22800.00),
('2024-04-15', 'Outright', 'Sports Cars Vegas', 89600.00),
('2024-04-20', 'Lease', 'Premium Vegas', 67200.00),
('2024-04-25', 'Outright', 'Classic Cars Vegas', 156000.00),
-- Additional purchases for Phoenix
('2024-05-01', 'Lease', 'Desert Motors Phoenix', 33800.00),
('2024-05-05', 'Outright', 'Cactus Cars Phoenix', 29600.00),
('2024-05-10', 'Auction', 'Copart Phoenix', 21400.00),
('2024-05-15', 'Outright', 'Arizona Motors', 35200.00),
('2024-05-20', 'Lease', 'Southwest Auto Phoenix', 31800.00),
('2024-05-25', 'Outright', 'Valley Cars Phoenix', 28900.00),
-- Additional purchases for Atlanta
('2024-06-01', 'Lease', 'Peach State Motors', 32400.00),
('2024-06-05', 'Outright', 'Georgia Auto Atlanta', 30800.00),
('2024-06-10', 'Auction', 'IAAI Atlanta', 20200.00),
('2024-06-15', 'Outright', 'Southern Cars Atlanta', 34600.00),
('2024-06-20', 'Lease', 'Metro Atlanta Auto', 29800.00),
('2024-06-25', 'Outright', 'Hawks Motors Atlanta', 33200.00),
-- Additional purchases for Orlando
('2024-07-01', 'Lease', 'Sunshine Motors Orlando', 28400.00),
('2024-07-05', 'Outright', 'Magic City Cars', 31600.00),
('2024-07-10', 'Auction', 'Copart Orlando', 18800.00),
('2024-07-15', 'Outright', 'Disney Area Auto', 29400.00),
('2024-07-20', 'Lease', 'Central Florida Motors', 32200.00),
('2024-07-25', 'Outright', 'Theme Park Cars', 27800.00),
-- More recent 2024 purchases spread across branches
('2024-08-01', 'Outright', 'Elite Cars Minneapolis', 45200.00),
('2024-08-05', 'Lease', 'Premier LA Auto', 52800.00),
('2024-08-10', 'Outright', 'Luxury NY Motors', 68400.00),
('2024-08-15', 'Auction', 'Manheim Chicago Elite', 28600.00),
('2024-08-20', 'Lease', 'Executive Dallas Auto', 41800.00),
('2024-08-25', 'Outright', 'Energy City Houston', 35200.00),
('2024-09-01', 'Lease', 'Beach Cars Miami', 58400.00),
('2024-09-05', 'Outright', 'Pacific Northwest Seattle', 38900.00),
('2024-09-10', 'Auction', 'Rocky Mountain Denver', 24200.00),
('2024-09-15', 'Lease', 'Bay Area SF Premium', 62800.00),
('2024-09-20', 'Outright', 'New England Boston', 36400.00),
('2024-09-25', 'Lease', 'Desert Luxury Vegas', 72600.00),
('2024-10-01', 'Outright', 'Valley Premium Phoenix', 41200.00),
('2024-10-05', 'Auction', 'Peach State Premium Atlanta', 26800.00),
('2024-10-10', 'Lease', 'Vacation Cars Orlando', 34600.00),
('2024-11-01', 'Outright', 'Prestige Minneapolis', 89500.00),
('2024-11-05', 'Lease', 'Hollywood Cars LA', 125000.00),
('2024-11-10', 'Outright', 'Manhattan Luxury NY', 156000.00),
('2024-11-15', 'Auction', 'Windy City Chicago', 32400.00),
('2024-11-20', 'Lease', 'Big D Motors Dallas', 67800.00),
('2024-11-25', 'Outright', 'Space City Houston', 78400.00),
('2024-12-01', 'Lease', 'Art Deco Miami', 98600.00),
('2024-12-05', 'Outright', 'Emerald City Seattle', 54200.00),
('2024-12-10', 'Auction', 'Mile High Denver', 29800.00),
('2024-12-15', 'Lease', 'Golden Gate SF', 87300.00),
('2024-12-20', 'Outright', 'Beacon Hill Boston', 65400.00),
('2024-12-25', 'Lease', 'Strip Luxury Vegas', 112000.00);
GO

--------------------------------------------------------
-- Insert Sample Data into Vehicle.Fuel_Type
--------------------------------------------------------
INSERT INTO Vehicle.Fuel_Type (fuel_type_name, fuel_efficiency)
VALUES
('Gasoline', 28.50),         -- Standard unleaded
('Diesel', 33.20),           -- More efficient long-distance
('Hybrid', 49.80),           -- Gas-electric combo
('Electric', 115.00),        -- EV equivalent (MPGe)
('Plug-in Hybrid', 87.50),   -- Partial electric
('Flex Fuel (E85)', 24.30),  -- Ethanol blend
('Compressed Natural Gas', 31.40), -- CNG-powered
('Hydrogen Fuel Cell', 65.00);     -- Future EV tech
GO

--------------------------------------------------------
-- Insert Sample Data into Vehicle.Vehicle_Type
--------------------------------------------------------
INSERT INTO Vehicle.Vehicle_Type (vehicle_type_name)
VALUES
('Sedan'),          -- 1
('SUV'),            -- 2
('Truck'),          -- 3
('Van'),            -- 4
('Crossover'),      -- 5
('Convertible'),    -- 6
('Coupe');          -- 7
GO

--------------------------------------------------------
-- Insert Sample Data into Vehicle.Vehicle_Class
--------------------------------------------------------
INSERT INTO Vehicle.Vehicle_Class (class_name)
VALUES
('Economy'),        -- 1
('Compact'),        -- 2
('Intermediate'),   -- 3
('Standard'),       -- 4
('Full-Size'),      -- 5
('Premium'),        -- 6
('Luxury');         -- 7
GO


--------------------------------------------------------
-- Insert Sample Data into Vehicle.Vehicle
--------------------------------------------------------
INSERT INTO Vehicle.Vehicle (
    vehicle_vin, vehicle_class_id, vehicle_type_id, fuel_type_id, purchase_id, branch_id,
    make, model, year, color, status, mileage, updated_at
)
VALUES
-- Branch 1 - Minneapolis Downtown
('1HGCM82633A004352', 1, 1, 1, 1, 1, 'Toyota', 'Corolla', 2019, 'Silver', 'Available', 43210.25, NULL),
('2T1BURHE5KC012457', 2, 1, 2, 2, 1, 'Honda', 'Civic', 2020, 'Blue', 'Rented', 38150.88, '2025-04-12'),
('1FADP3F25HL220956', 3, 2, 1, 3, 1, 'Ford', 'Focus', 2018, 'White', 'Maintenance', 50210.00, '2025-02-21'),
('1FTFW1E52JKC20230', 4, 3, 2, 4, 1, 'Ford', 'F-150', 2021, 'Black', 'Available', 27450.76, NULL),
('1C4PJMDX8LD507962', 5, 2, 3, 5, 1, 'Jeep', 'Cherokee', 2020, 'Gray', 'Reserved', 36190.00, NULL),
('5NPE24AF4KH887345', 6, 1, 4, 6, 1, 'BMW', 'X3', 2022, 'Gray', 'Rented', 21120.59, '2025-05-02'),
('3VW2B7AJ5EM384910', 7, 3, 5, 7, 1, 'Ford', 'Transit', 2019, 'Red', 'Available', 44230.17, NULL),
-- Branch 2 - Los Angeles Intl Airport
('1HGCV1F32MA003842', 1, 1, 6, 8, 2, 'Honda', 'Fit', 2023, 'White', 'Available', 15230.00, NULL),
('1N4AL3AP9JC149782', 2, 1, 7, 9, 2, 'Nissan', 'Sentra', 2018, 'Blue', 'Retired', 61200.90, '2024-11-10'),
('2HGFC2F52KH568931', 3, 2, 8, 10, 2, 'Honda', 'CR-V', 2021, 'Blue', 'Available', 27310.44, NULL),
('1FAFP404X2F224319', 4, 1, 1, 11, 2, 'Ford', 'Fusion', 2019, 'White', 'Available', 41290.20, NULL),
('1FTCR10A5RUB47283', 5, 2, 2, 12, 2, 'Chevrolet', 'Tahoe', 2021, 'Black', 'Rented', 30122.70, '2025-01-19'),
('5UXWX9C55H0T41597', 6, 1, 3, 13, 2, 'BMW', '330i', 2023, 'Gray', 'Available', 18300.10, NULL),
('WBA3A5C56CF207894', 7, 3, 4, 14, 2, 'Ford', 'F-250', 2022, 'White', 'Reserved', 20980.40, NULL),
-- Branch 3 - New York JFK Airport
('1N6AA1F41GN520843', 1, 1, 5, 15, 3, 'Nissan', 'Versa', 2020, 'Blue', 'Maintenance', 47210.35, '2025-06-14'),
('3FA6P0H76HR377420', 2, 1, 6, 16, 3, 'Ford', 'Focus', 2021, 'Red', 'Available', 28990.21, NULL),
('4T1BE46K19U387462', 3, 2, 7, 17, 3, 'Toyota', 'RAV4', 2022, 'Silver', 'Rented', 19850.60, '2025-04-05'),
('1G1ZD5ST7LF031290', 4, 1, 8, 18, 3, 'Chevrolet', 'Malibu', 2021, 'Black', 'Available', 24390.00, NULL),
('3GNAXHEV8LS694531', 5, 2, 1, 19, 3, 'Chevrolet', 'Suburban', 2023, 'Black', 'Available', 15700.43, NULL),
('1FT7W2BT7KEC03495', 6, 1, 2, 20, 3, 'BMW', '540i', 2022, 'White', 'Available', 19200.12, NULL),
('1C4HJXDG1LW268953', 7, 3, 3, 21, 3, 'RAM', '1500', 2023, 'Green', 'Reserved', 9800.00, NULL),
-- Branch 4 - Chicago O'Hare Airport
('5FNRL6H73NB098342', 1, 1, 4, 22, 4, 'Honda', 'Accord', 2024, 'Gray', 'Available', 11200.50, NULL),
('1FTYR10C8XTA01823', 2, 1, 5, 23, 4, 'Chevrolet', 'Cruze', 2023, 'White', 'Available', 12300.00, NULL),
('5YJSA1CN5DFP23451', 3, 2, 6, 24, 4, 'Kia', 'Sorento', 2023, 'Red', 'Rented', 8200.00, '2025-06-01'),
('5YJ3E1EA7KF275613', 4, 1, 7, 25, 4, 'Ford', 'Taurus', 2024, 'White', 'Available', 5900.00, NULL),
('3C6UR5DL3FG623894', 5, 2, 8, 26, 4, 'Buick', 'Enclave', 2022, 'Silver', 'Rented', 15400.20, '2025-03-10'),
('1GNEVGKW9MJ113852', 6, 1, 1, 27, 4, 'Cadillac', 'CT5', 2021, 'Black', 'Maintenance', 21800.00, '2025-02-18'),
('WBA7E4C55GG932471', 7, 3, 2, 28, 4, 'Chevrolet', 'Silverado', 2024, 'Black', 'Available', 8500.00, NULL),
-- Branch 5 - Dallas Love Field
('1HGCV1F31MA097853', 1, 1, 3, 29, 5, 'Honda', 'Insight', 2020, 'Silver', 'Available', 22900.55, NULL),
('1HGFA16526L045971', 2, 1, 4, 30, 5, 'Mazda', 'Mazda3', 2023, 'Gray', 'Available', 13400.00, '2025-07-01'),
('1FTEW1CP5HKC84629', 3, 2, 5, 31, 5, 'Ford', 'Escape', 2021, 'Blue', 'Available', 35400.75, NULL),
('1N4BL4BV8MC412087', 4, 1, 6, 32, 5, 'Nissan', 'Altima', 2020, 'White', 'Rented', 42100.30, '2025-05-15'),
('KMHT14JA1GA093472', 5, 2, 7, 33, 5, 'Hyundai', 'Santa Fe', 2019, 'Silver', 'Available', 38900.00, NULL),
('1G1FB1RS8J0147523', 6, 1, 8, 34, 5, 'BMW', 'M3', 2018, 'Red', 'Maintenance', 48200.85, '2025-04-20'),
('3VWDP7AJ9DM412365', 7, 3, 1, 35, 5, 'RAM', '3500', 2022, 'Black', 'Available', 28700.60, NULL),
-- Branch 6 - Houston Downtown
('5GALRBED4CJ234891', 1, 1, 2, 36, 6, 'Buick', 'Verano', 2021, 'Gray', 'Reserved', 31500.45, NULL),
('1FAFP40423F153879', 2, 1, 3, 37, 6, 'Ford', 'Fusion', 2020, 'White', 'Available', 39800.20, NULL),
('WBANA7C52FG084729', 3, 2, 4, 38, 6, 'Kia', 'Sportage', 2023, 'Blue', 'Rented', 15600.00, '2025-06-08'),
('1HGCR2F34GA195847', 4, 1, 5, 39, 6, 'Honda', 'Accord', 2021, 'Silver', 'Available', 33200.75, NULL),
('5YJSA1CN6DFP14259', 5, 2, 6, 40, 6, 'Jeep', 'Grand Cherokee', 2024, 'Red', 'Available', 7200.00, NULL),
('1GCEK19T85Z294751', 6, 1, 7, 41, 6, 'BMW', '750i', 2020, 'Black', 'Rented', 44700.30, '2025-03-25'),
('1FMJU1H53GEA72951', 7, 3, 8, 42, 6, 'Ford', 'F-350', 2019, 'Blue', 'Available', 41200.90, NULL),
-- Branch 7 - Miami Intl Airport
('WDDGF4HB8CR384629', 1, 1, 1, 43, 7, 'Mercedes-Benz', 'A-Class', 2023, 'White', 'Available', 12800.25, NULL),
('1N4AA6AP8EC472951', 2, 1, 2, 44, 7, 'Nissan', 'Versa', 2018, 'Gray', 'Maintenance', 52400.60, '2025-02-14'),
('5XYZUDLA5FG129475', 3, 2, 3, 45, 7, 'Kia', 'Sportage', 2022, 'Red', 'Available', 26300.45, NULL),
('1FTFW1E52MKC75193', 4, 1, 4, 46, 7, 'Ford', 'Mustang', 2023, 'Silver', 'Reserved', 18900.75, NULL),
('WBAPH3G58DNG42871', 5, 2, 5, 47, 7, 'BMW', 'X5', 2021, 'Black', 'Available', 29700.30, NULL),
('1HGCV1F18LA084629', 6, 1, 6, 48, 7, 'Lexus', 'ES', 2024, 'Blue', 'Available', 9500.00, NULL),
('2GNFLFEK8E6284951', 7, 3, 7, 49, 7, 'Chevrolet', 'Silverado', 2020, 'White', 'Rented', 38600.85, '2025-07-03'),
-- Branch 8 - Orlando Suburban
('3VWCX7AJ8EM472951', 1, 1, 8, 50, 8, 'Volkswagen', 'Jetta', 2021, 'Gray', 'Available', 31800.60, NULL),
('5GALRAED9CJ475829', 2, 1, 1, 51, 8, 'Buick', 'Encore', 2022, 'Red', 'Available', 24700.30, NULL),
('1FAFP404X5F283941', 3, 2, 2, 52, 8, 'Ford', 'Focus', 2020, 'Silver', 'Maintenance', 43200.75, '2025-01-28'),
('1N6AA1F41JN624871', 4, 1, 3, 53, 8, 'Nissan', 'Maxima', 2023, 'Black', 'Available', 16400.20, NULL),
('WBXHT5C53EP294851', 5, 2, 4, 54, 8, 'Infiniti', 'QX60', 2022, 'White', 'Reserved', 21500.45, NULL),
('1HGCR2F71GA385729', 6, 1, 5, 55, 8, 'Acura', 'TLX', 2021, 'Blue', 'Available', 32900.85, NULL),
('3VWDB7AJ2HM194852', 7, 3, 6, 56, 8, 'GMC', 'Sierra', 2024, 'Gray', 'Available', 11200.30, NULL),
-- Branch 9 - Seattle Downtown
('1GCEC19X75Z847291', 1, 1, 7, 57, 9, 'Chevrolet', 'Spark', 2021, 'Red', 'Rented', 35800.60, '2025-04-12'),
('1FMJU1J53HEA94751', 2, 1, 8, 58, 9, 'Ford', 'Fiesta', 2023, 'Silver', 'Available', 14700.75, NULL),
('5YJSA1DN5DFP85294', 3, 2, 1, 59, 9, 'Tesla', 'Model Y', 2022, 'Black', 'Available', 19300.45, NULL),
('WDDGF4HB2DR472951', 4, 1, 2, 60, 9, 'Mercedes-Benz', 'C300', 2024, 'White', 'Reserved', 8700.20, NULL),
('1N4AA6AP6FC584729', 5, 2, 3, 61, 9, 'Subaru', 'Outback', 2019, 'Blue', 'Available', 40500.85, NULL),
('5XYZUDLA7GG384752', 6, 1, 4, 62, 9, 'Genesis', 'G90', 2023, 'Gray', 'Available', 13900.30, NULL),
('1FTFW1E54NKC94752', 7, 3, 5, 63, 9, 'Ford', 'F-150', 2024, 'Red', 'Rented', 12100.60, '2025-06-20'),
-- Branch 10 - Denver Airport
('WBAPH3G56ENG75284', 1, 1, 6, 64, 10, 'MINI', 'Cooper', 2022, 'Silver', 'Available', 23600.45, NULL),
('1HGCV1F16MA194851', 2, 1, 7, 65, 10, 'Honda', 'Accord Hybrid', 2025, 'Black', 'Available', 5200.75, NULL),
('2GNFLFEK6F6485729', 3, 2, 8, 66, 10, 'Chevrolet', 'Equinox', 2021, 'White', 'Maintenance', 34700.30, '2025-03-15'),
('3VWCX7AJ6FM294851', 4, 1, 1, 67, 10, 'Volkswagen', 'Passat', 2023, 'Blue', 'Available', 17800.85, NULL),
('5GALRAED7DJ485729', 5, 2, 2, 68, 10, 'Buick', 'Enclave', 2024, 'Gray', 'Reserved', 9400.60, NULL),
('1FAFP404X6F394851', 6, 1, 3, 69, 10, 'Audi', 'A6', 2021, 'Red', 'Available', 28900.45, NULL),
('1N6AA1F43KN594827', 7, 3, 4, 70, 10, 'Nissan', 'Titan', 2025, 'Silver', 'Available', 3800.20, NULL),
-- Branch 11 - San Francisco Intl
('WBXHT5C51FP485729', 1, 1, 5, 71, 11, 'BMW', 'i3', 2023, 'Black', 'Available', 16200.75, NULL),
('1HGCR2F79HA485729', 2, 1, 6, 72, 11, 'Honda', 'Clarity', 2022, 'White', 'Rented', 25600.30, '2025-05-28'),
('3VWDB7AJ4IM485729', 3, 2, 7, 73, 11, 'Volkswagen', 'Arteon', 2024, 'Blue', 'Available', 8900.85, NULL),
('1GCEC19X97Z485729', 4, 1, 8, 74, 11, 'Chevrolet', 'Camaro', 2023, 'Gray', 'Available', 15700.60, NULL),
('1FMJU1J51IEA85729', 5, 2, 1, 75, 11, 'Ford', 'Bronco Sport', 2025, 'Red', 'Reserved', 4200.45, NULL),
('5YJSA1E21EFP85729', 6, 1, 2, 76, 11, 'Tesla', 'Model X', 2024, 'Silver', 'Available', 6800.20, NULL),
('WDDGF4HB4ER485729', 7, 3, 3, 77, 11, 'Mercedes-Benz', 'G-Class', 2025, 'Black', 'Available', 2100.75, NULL),
-- Branch 12 - Boston Logan Airport
('1N4AA6AP8GC485729', 1, 1, 4, 78, 12, 'Nissan', 'Sentra', 2020, 'White', 'Maintenance', 37200.30, '2025-02-08'),
('5XYZUDLA9HG485729', 2, 1, 5, 79, 12, 'Kia', 'K5', 2024, 'Blue', 'Available', 10300.85, NULL),
('1FTFW1E56PKC85729', 3, 2, 6, 80, 12, 'Ford', 'Escape', 2025, 'Gray', 'Available', 1900.60, NULL),
('2HGFC2F52KH123456', 4, 1, 7, 81, 12, 'Honda', 'Civic', 2023, 'Red', 'Available', 15600.00, NULL),
('1FADP3F25HL987654', 5, 2, 8, 82, 12, 'Lexus', 'RX', 2022, 'Silver', 'Rented', 28900.75, '2025-03-20'),
('WBA3A5C56CF321789', 6, 1, 1, 83, 12, 'BMW', '530i', 2024, 'Black', 'Available', 12400.30, NULL),
('1FTCR10A5RUB55444', 7, 3, 2, 84, 12, 'GMC', 'Canyon', 2021, 'White', 'Reserved', 45200.85, NULL),
-- Branch 13 - Las Vegas Strip
('5UXWX9C55H0T99999', 1, 1, 3, 85, 13, 'MINI', 'Countryman', 2023, 'Orange', 'Available', 8900.15, NULL),
('1C4PJMDX8LD777777', 2, 1, 4, 86, 13, 'Jeep', 'Compass', 2020, 'Purple', 'Available', 38700.60, NULL),
('5NPE24AF4KH666666', 3, 2, 5, 87, 13, 'Hyundai', 'Tucson', 2022, 'Yellow', 'Rented', 25100.40, '2025-05-10'),
('3VW2B7AJ5EM555555', 4, 1, 6, 88, 13, 'Volkswagen', 'Golf', 2019, 'Green', 'Available', 41800.25, NULL),
('1HGCV1F32MA444444', 5, 2, 7, 89, 13, 'Infiniti', 'QX50', 2023, 'Pink', 'Maintenance', 18700.90, '2025-02-25'),
('1N4AL3AP9JC333333', 6, 1, 8, 90, 13, 'Cadillac', 'Escalade', 2018, 'Gold', 'Available', 62500.35, NULL),
('2HGFC2F52KH222222', 7, 3, 1, 91, 13, 'Ford', 'Raptor', 2021, 'Neon', 'Reserved', 29800.75, NULL),
-- Branch 14 - Phoenix Downtown
('1FAFP404X2F111111', 1, 1, 2, 92, 14, 'Ford', 'EcoSport', 2019, 'Teal', 'Available', 43600.20, NULL),
('1FTCR10A5RU888888', 2, 1, 3, 93, 14, 'Chevrolet', 'Trax', 2021, 'Maroon', 'Available', 32400.80, NULL),
('5UXWX9C55H0999999', 3, 2, 4, 94, 14, 'BMW', 'X1', 2023, 'Copper', 'Rented', 16200.45, '2025-04-18'),
('WBA3A5C56CF000000', 4, 1, 5, 95, 14, 'BMW', '228i', 2022, 'Bronze', 'Available', 23800.15, NULL),
('1N6AA1F41GN121212', 5, 2, 6, 96, 14, 'Nissan', 'Pathfinder', 2020, 'Lime', 'Maintenance', 48900.65, '2025-06-05'),
('3FA6P0H76HR131313', 6, 1, 7, 97, 14, 'Lincoln', 'Corsair', 2021, 'Turquoise', 'Available', 31200.40, NULL),
('4T1BE46K19U141414', 7, 3, 8, 98, 14, 'Toyota', 'Tundra', 2022, 'Magenta', 'Reserved', 21600.85, NULL),
-- Branch 15 - Atlanta Hartsfield Airport
('1G1ZD5ST7LF151515', 1, 1, 1, 99, 15, 'Chevrolet', 'Sonic', 2021, 'Cyan', 'Available', 26800.30, NULL),
('3GNAXHEV8LS161616', 2, 1, 2, 100, 15, 'Chevrolet', 'Malibu', 2023, 'Violet', 'Available', 14900.55, NULL),
('1FT7W2BT7KE171717', 3, 2, 3, 101, 15, 'Ford', 'Edge', 2022, 'Coral', 'Rented', 20400.70, '2025-03-12'),
('1C4HJXDG1LW181818', 4, 1, 4, 102, 15, 'Jeep', 'Cherokee', 2023, 'Salmon', 'Available', 11800.25, NULL),
('5FNRL6H73NB191919', 5, 2, 5, 103, 15, 'Honda', 'Pilot', 2024, 'Ivory', 'Maintenance', 9200.90, '2025-01-30'),
('1FTYR10C8XT202020', 6, 1, 6, 104, 15, 'Acura', 'MDX', 2023, 'Beige', 'Available', 17600.45, NULL),
('5YJSA1CN5DF212121', 7, 3, 7, 105, 15, 'Tesla', 'Cybertruck', 2024, 'Steel', 'Reserved', 5400.15, NULL),
-- Branch 16 - Orlando (second location)
('5YJ3E1EA7KF222222', 1, 1, 8, 106, 16, 'Tesla', 'Model 3', 2024, 'Pearl', 'Available', 8100.60, NULL),
('3C6UR5DL3FG232323', 2, 1, 1, 107, 16, 'RAM', '1500', 2022, 'Chrome', 'Available', 36700.35, NULL),
('1GNEVGKW9MJ242424', 3, 2, 2, 108, 16, 'Chevrolet', 'Traverse', 2021, 'Graphite', 'Rented', 42100.80, '2025-05-22'),
('WBA7E4C55GG252525', 4, 1, 3, 109, 16, 'BMW', '440i', 2024, 'Champagne', 'Available', 13900.25, NULL),
('1HGCV1F31MA262626', 5, 2, 4, 110, 16, 'Honda', 'Ridgeline', 2020, 'Charcoal', 'Maintenance', 51200.70, '2025-02-15'),
('1HGFA16526L272727', 6, 1, 5, 111, 16, 'Mazda', 'CX-9', 2023, 'Midnight', 'Available', 19800.40, NULL),
('1FTEW1CP5HK282828', 7, 3, 6, 112, 16, 'Ford', 'Super Duty', 2025, 'Titanium', 'Reserved', 3600.95, NULL);
GO

------------------------------------------------------------------------------------------
-- Inserting records to Finance.Vehicle_Rate
-- Executing this stored procedure will enter the vehicle rates.
-----------------------------------------------------------------------
EXEC Finance.usp_Generate_Vehicle_Rates;

--------------------------------------------------------
-- Insert Sample Data into Finance.Charge_Type (1–12 Records)
--------------------------------------------------------

INSERT INTO Finance.Charge_Type
(charge_code, charge_name, charge_category, charge_basis)
VALUES
('GPS', 'GPS Navigation System', 'Add-On', 'Flat Rate'),
('INS', 'Insurance Coverage', 'Insurance', 'Per Day'),
('CDW', 'Collision Damage Waiver', 'Insurance', 'Per Day'),
('CHSEAT', 'Child Seat', 'Add-On', 'Flat Rate'),
('FUEL', 'Fuel Refill Fee', 'Fee', 'Flat Rate'),
('LUX', 'Luxury Vehicle Surcharge', 'Surcharge', 'Per Day'),
('ROADS', 'Roadside Assistance', 'Add-On', 'Flat Rate'),
('CLEAN', 'Cleaning Fee', 'Fee', 'Flat Rate'),
('DELAY', 'Full-Day Late Charge Fee', 'Fee', 'Per Day'),
('ELEC', 'Electric Vehicle Charging', 'Usage', 'Per Hour'),
('ENV', 'Environmental Fee', 'Fee', 'Flat Rate'),
('ONEWAY', 'One Way Rental Fee', 'Fee', 'Flat Rate'),
-- New charge types per business rules
('LATEHR', 'Hourly Late Penalty Fee', 'Fee', 'Per Hour'),
('YOUNG', 'Young Renter Surcharge', 'Surcharge', 'Per Day'),
('CANCEL', 'Cancellation Fee', 'Fee', 'Flat Rate'),
('NOSHOW', 'No-Show Fee', 'Fee', 'Flat Rate'),
('EXMILE', 'Excess Mileage', 'Fee', 'Per Mile');
GO

-------------------------------------------------------
-- Insert the Charge Rates into into Finance.Rental_Charge
-- The charge rates are uniform across all the branches
-------------------------------------------------------
INSERT INTO Finance.Charge_Rate 
(charge_type_id, charge_unit_rate, effective_start_date, effective_end_date)
VALUES
(1, 14.99, '2025-01-01', NULL),   -- GPS Navigation System
(2, 19.99, '2025-01-01', NULL),   -- Insurance Coverage
(3, 29.99, '2025-01-01', NULL),   -- Collision Damage Waiver
(4, 9.99,  '2025-01-01', NULL),   -- Child Seat
(5, 5.00,  '2025-01-01', NULL),   -- Fuel Refill Fee
(6, 35.00, '2025-01-01', NULL),   -- Luxury Vehicle Surcharge
(7, 12.00, '2025-01-01', NULL),   -- Roadside Assistance
(8, 15.00, '2025-01-01', NULL),   -- Cleaning Fee
(9, 60.00, '2025-01-01', NULL),   -- Full-Day Late Charge Fee (Economy/Compact, ~$60 daily rate)
(10, 10.00,'2025-01-01', NULL),   -- Electric Vehicle Charging (per hour)
(11, 7.50, '2025-01-01', NULL),   -- Environmental Fee
(12, 100.00, '2025-01-01', NULL), -- One Way Rental Fee
-- New charge rates per business rules
(13, 25.00, '2025-01-01', NULL),  -- Hourly Late Penalty Fee (applies 30 min - 4 hours late per BR-24)
(14, 15.00, '2025-01-01', NULL),  -- Young Renter Surcharge (per day, age 20-24 per BR-02)
(15, 50.00, '2025-01-01', NULL),  -- Cancellation Fee (flat rate, <48 hours per BR-09)
(16, 75.00, '2025-01-01', NULL),  -- No-Show Fee (flat rate per BR-10)
(17, 0.35,  '2025-01-01', NULL),  -- Excess Mileage (per mile per BR-30)
-- Additional Full-Day Late Charge Fee rates for different vehicle classes (BR-25)
(9, 70.00, '2025-01-01', NULL),   -- Full-Day Late Charge Fee (Standard, ~$70 daily rate)
(9, 80.00, '2025-01-01', NULL),   -- Full-Day Late Charge Fee (Full-Size, ~$80 daily rate)
(9, 90.00, '2025-01-01', NULL),   -- Full-Day Late Charge Fee (SUV, ~$90 daily rate)
(9, 120.00, '2025-01-01', NULL),  -- Full-Day Late Charge Fee (Luxury, ~$120 daily rate)
(9, 100.00, '2025-01-01', NULL);  -- Full-Day Late Charge Fee (Truck/Van, ~$100 daily rate)
GO

----------------------------------
-- Insert Values into Finance.Tax_Type Table - 9 tables 
------------------------------------------------
INSERT INTO Finance.Tax_Type (tax_code, tax_name, tax_description)
VALUES
('STATE', 'State Tax', 'Standard state vehicle rental tax applied per state'),
('CITY', 'City Tax', 'Local transportation or municipal surcharge'),
('ENV', 'Environmental Fee', 'Eco or green sustainability surcharge'),
('TOUR', 'Tourism Tax', 'Applies to tourist rental zones'),
('LOCAL', 'Local Tax', 'Minor local government rental tax'),
('ROAD', 'Road Maintenance Fee', 'Road and infrastructure maintenance fund'),
('AIR', 'Airport Surcharge', 'Applicable to airport-based branches'),
('LUX', 'Luxury Vehicle Tax', 'Applies to high-end vehicle classes'),
('ELEC', 'Electric Vehicle Discount', 'Tax relief for electric vehicles');
GO

---------------------------------
-- Inserting data into Finance.Tax_Rate table
--------------------------------------------------------
EXEC Finance.usp_Assign_Taxes_To_Branches;


--------------------------------------
-- Insert Data to Finance.Promotion Table
-----------------------------------------
INSERT INTO Finance.Promotion
(promotion_code, promotion_name, promotion_description,
 promotion_value, promotion_type, promotion_start_date, promotion_end_date, is_active)
VALUES
('SPRING10',   'Spring Sale',
 '10% off all rentals during March and April',
 10.00, 'Public', '2025-03-01', '2025-04-30', 1),
('NEWCUSTOMER50', 'Welcome Offer',
 '50% off for first-time customers',
 50.00, 'Public', '2025-01-01', '2025-06-30', 1),
('STUDENT15', 'Student Discount',
 '15% off with valid student ID',
 15.00, 'Public', '2025-04-01', '2025-12-31', 1),
('WEEKEND25', 'Weekend Saver',
 '25% off weekend rentals (Fri–Sun only)',
 25.00, 'Public', '2025-05-01', '2025-09-01', 1),
('ECO5', 'Eco Drive',
 '5% off hybrid and electric vehicles',
 5.00, 'Public', '2025-03-01', '2025-12-31', 1),
('SUMMER20', 'Summer Savings',
 '20% discount for rentals between June and August',
 20.00, 'Seasonal', '2025-06-01', '2025-08-31', 1),
('HOLIDAY30', 'Holiday Special',
 '30% discount for bookings during holidays',
 30.00, 'Seasonal', '2025-12-01', '2026-01-05', 0),
('FALL10', 'Fall Discount',
 '10% off all rentals during the fall season',
 10.00, 'Seasonal', '2025-09-01', '2025-11-30', 1),
('REF10', 'Referral Bonus',
 '10% off when referred by a friend',
 10.00, 'Referral', '2025-03-01', '2025-09-30', 1),
('CORP20', 'Corporate Deal',
 '20% off for registered corporate partners',
 20.00, 'Corporate', '2025-01-01', '2025-12-31', 1);
 GO

 ---------------------------
-- Insert records into Rental.Reservation 
---------------------------------

-- Allow explicit reservation_id inserts
SET IDENTITY_INSERT Rental.Reservation ON;

INSERT INTO Rental.Reservation (
    reservation_id, customer_id, vehicle_id, pickup_branch_id, dropoff_branch_id,
    reservation_date, pickup_datetime, return_datetime, rental_duration_type, reservation_status, confirmation_number
)
VALUES
-- First 30 reservations 
(1, 25, 45, 1, 2, GETDATE(), '2025-12-01 14:45:00', '2025-12-08 14:45:00', 'Weekly', 'Completed', 'CNF00001'),
(2, 48, 67, 2, 3, GETDATE(), '2025-12-02 09:00:00', '2025-12-09 09:00:00', 'Weekly', 'Completed', 'CNF00002'),
(3, 73, 89, 3, 4, GETDATE(), '2025-12-03 11:00:00', '2025-12-10 11:00:00', 'Weekly', 'Completed', 'CNF00003'),
(4, 96, 12, 4, 5, GETDATE(), '2025-12-04 08:00:00', '2025-12-11 08:00:00', 'Weekly', 'Completed', 'CNF00004'),
(5, 119, 34, 5, 6, GETDATE(), '2025-12-05 10:30:00', '2025-12-12 10:30:00', 'Weekly', 'Completed', 'CNF00005'),
(6, 142, 56, 6, 7, GETDATE(), '2025-12-06 13:00:00', '2025-12-13 13:00:00', 'Weekly', 'Completed', 'CNF00006'),
(7, 165, 78, 7, 8, GETDATE(), '2025-12-07 12:00:00', '2025-12-14 12:00:00', 'Weekly', 'Completed', 'CNF00007'),
(8, 188, 91, 8, 9, GETDATE(), '2025-12-08 09:00:00', '2025-12-15 09:00:00', 'Weekly', 'Completed', 'CNF00008'),
(9, 11, 13, 9, 10, GETDATE(), '2025-12-09 10:00:00', '2025-12-16 10:00:00', 'Weekly', 'Completed', 'CNF00009'),
(10, 34, 35, 10, 11, GETDATE(), '2025-12-10 08:30:00', '2025-12-17 08:30:00', 'Weekly', 'Completed', 'CNF00010'),
(11, 57, 57, 11, 12, GETDATE(), '2025-12-11 15:00:00', '2025-12-18 15:00:00', 'Weekly', 'Completed', 'CNF00011'),
(12, 80, 79, 12, 13, GETDATE(), '2025-12-12 10:00:00', '2025-12-19 10:00:00', 'Weekly', 'Completed', 'CNF00012'),
(13, 103, 101, 13, 14, GETDATE(), '2025-12-13 11:00:00', '2025-12-20 11:00:00', 'Weekly', 'Completed', 'CNF00013'),
(14, 126, 23, 14, 15, GETDATE(), '2025-12-14 09:00:00', '2025-12-21 09:00:00', 'Weekly', 'Completed', 'CNF00014'),
(15, 149, 44, 15, 16, GETDATE(), '2025-12-15 08:30:00', '2025-12-22 08:30:00', 'Weekly', 'Completed', 'CNF00015'),
(16, 172, 66, 16, 1, GETDATE(), '2025-12-16 10:00:00', '2025-12-23 10:00:00', 'Weekly', 'Completed', 'CNF00016'),
(17, 195, 88, 1, 2, GETDATE(), '2025-12-17 12:30:00', '2025-12-24 12:30:00', 'Weekly', 'Completed', 'CNF00017'),
(18, 18, 110, 2, 3, GETDATE(), '2025-12-18 14:00:00', '2025-12-25 14:00:00', 'Weekly', 'Completed', 'CNF00018'),
(19, 41, 32, 3, 4, GETDATE(), '2025-12-19 09:00:00', '2025-12-26 09:00:00', 'Weekly', 'Completed', 'CNF00019'),
(20, 64, 54, 4, 5, GETDATE(), '2025-12-20 08:00:00', '2025-12-27 08:00:00', 'Weekly', 'Completed', 'CNF00020'),
(21, 87, 76, 5, 6, GETDATE(), '2025-12-21 13:00:00', '2025-12-28 13:00:00', 'Weekly', 'Completed', 'CNF00021'),
(22, 110, 98, 6, 7, GETDATE(), '2025-12-22 15:00:00', '2025-12-29 15:00:00', 'Weekly', 'Completed', 'CNF00022'),
(23, 133, 20, 7, 8, GETDATE(), '2025-12-23 10:00:00', '2025-12-30 10:00:00', 'Weekly', 'Completed', 'CNF00023'),
(24, 156, 42, 8, 9, GETDATE(), '2025-12-24 09:00:00', '2025-12-31 09:00:00', 'Weekly', 'Completed', 'CNF00024'),
(25, 179, 64, 9, 10, GETDATE(), '2025-12-25 12:00:00', '2026-01-01 12:00:00', 'Weekly', 'Confirmed', 'CNF00025'),
(26, 2, 86, 10, 11, GETDATE(), '2025-12-26 11:30:00', '2026-01-02 11:30:00', 'Weekly', 'Confirmed', 'CNF00026'),
(27, 27, 8, 11, 12, GETDATE(), '2025-12-27 13:00:00', '2026-01-03 13:00:00', 'Weekly', 'Confirmed', 'CNF00027'),
(28, 52, 30, 12, 13, GETDATE(), '2025-12-28 08:00:00', '2026-01-04 08:00:00', 'Weekly', 'Pending', 'CNF00028'),
(29, 75, 52, 13, 14, GETDATE(), '2025-12-29 10:30:00', '2026-01-05 10:30:00', 'Weekly', 'Pending', 'CNF00029'),
(30, 98, 74, 14, 15, GETDATE(), '2025-12-30 09:00:00', '2026-01-06 09:00:00', 'Weekly', 'Cancelled', 'CNF00030'),

-- First batch of 150 additional reservations (31-180) - 30 per branch for branches 1-5
-- Branch 1 (30 reservations)
(31, 12, 8, 1, 1, GETDATE(), '2025-11-01 08:00:00', '2025-11-08 08:00:00', 'Weekly', 'Completed', 'CNF100001'),
(32, 45, 15, 1, 2, GETDATE(), '2025-11-02 09:30:00', '2025-11-09 09:30:00', 'Weekly', 'Completed', 'CNF100002'),
(33, 78, 22, 1, 1, GETDATE(), '2025-11-03 10:00:00', '2025-11-10 10:00:00', 'Weekly', 'Completed', 'CNF100003'),
(34, 23, 31, 1, 3, GETDATE(), '2025-11-04 11:15:00', '2025-11-11 11:15:00', 'Weekly', 'Completed', 'CNF100004'),
(35, 56, 45, 1, 1, GETDATE(), '2025-11-05 07:45:00', '2025-11-12 07:45:00', 'Weekly', 'Completed', 'CNF100005'),
(36, 89, 52, 1, 4, GETDATE(), '2025-11-06 08:30:00', '2025-11-13 08:30:00', 'Weekly', 'Completed', 'CNF100006'),
(37, 34, 67, 1, 1, GETDATE(), '2025-11-07 09:00:00', '2025-11-14 09:00:00', 'Weekly', 'Completed', 'CNF100007'),
(38, 67, 71, 1, 5, GETDATE(), '2025-11-08 10:30:00', '2025-11-15 10:30:00', 'Weekly', 'Completed', 'CNF100008'),
(39, 91, 84, 1, 1, GETDATE(), '2025-11-09 11:00:00', '2025-11-16 11:00:00', 'Weekly', 'Completed', 'CNF100009'),
(40, 102, 93, 1, 6, GETDATE(), '2025-11-10 07:30:00', '2025-11-17 07:30:00', 'Weekly', 'Completed', 'CNF100010'),
(41, 115, 101, 1, 1, GETDATE(), '2025-11-11 08:15:00', '2025-11-18 08:15:00', 'Weekly', 'Completed', 'CNF100011'),
(42, 128, 8, 1, 7, GETDATE(), '2025-11-12 09:45:00', '2025-11-19 09:45:00', 'Weekly', 'Completed', 'CNF100012'),
(43, 141, 15, 1, 1, GETDATE(), '2025-11-13 10:20:00', '2025-11-20 10:20:00', 'Weekly', 'Completed', 'CNF100013'),
(44, 154, 22, 1, 8, GETDATE(), '2025-11-14 11:30:00', '2025-11-21 11:30:00', 'Weekly', 'Completed', 'CNF100014'),
(45, 167, 31, 1, 1, GETDATE(), '2025-11-15 07:00:00', '2025-11-22 07:00:00', 'Weekly', 'Completed', 'CNF100015'),
(46, 180, 45, 1, 9, GETDATE(), '2025-11-16 08:45:00', '2025-11-23 08:45:00', 'Weekly', 'Completed', 'CNF100016'),
(47, 193, 52, 1, 1, GETDATE(), '2025-11-17 09:30:00', '2025-11-24 09:30:00', 'Weekly', 'Completed', 'CNF100017'),
(48, 5, 67, 1, 10, GETDATE(), '2025-11-18 10:15:00', '2025-11-25 10:15:00', 'Weekly', 'Completed', 'CNF100018'),
(49, 18, 71, 1, 1, GETDATE(), '2025-11-19 11:45:00', '2025-11-26 11:45:00', 'Weekly', 'Completed', 'CNF100019'),
(50, 31, 84, 1, 11, GETDATE(), '2025-11-20 07:20:00', '2025-11-27 07:20:00', 'Weekly', 'Completed', 'CNF100020'),
(51, 44, 93, 1, 1, GETDATE(), '2025-11-21 08:50:00', '2025-11-28 08:50:00', 'Weekly', 'Completed', 'CNF100021'),
(52, 57, 101, 1, 12, GETDATE(), '2025-11-22 09:25:00', '2025-11-29 09:25:00', 'Weekly', 'Completed', 'CNF100022'),
(53, 70, 8, 1, 1, GETDATE(), '2025-11-23 10:40:00', '2025-11-30 10:40:00', 'Weekly', 'Completed', 'CNF100023'),
(54, 83, 15, 1, 13, GETDATE(), '2025-11-24 11:05:00', '2025-12-01 11:05:00', 'Weekly', 'Completed', 'CNF100024'),
(55, 96, 22, 1, 1, GETDATE(), '2025-11-25 07:35:00', '2025-12-02 07:35:00', 'Weekly', 'Confirmed', 'CNF100025'),
(56, 109, 31, 1, 14, GETDATE(), '2025-11-26 08:20:00', '2025-12-03 08:20:00', 'Weekly', 'Confirmed', 'CNF100026'),
(57, 122, 45, 1, 1, GETDATE(), '2025-11-27 09:55:00', '2025-12-04 09:55:00', 'Weekly', 'Confirmed', 'CNF100027'),
(58, 135, 52, 1, 15, GETDATE(), '2025-11-28 10:25:00', '2025-12-05 10:25:00', 'Weekly', 'Pending', 'CNF100028'),
(59, 148, 67, 1, 1, GETDATE(), '2025-11-29 11:10:00', '2025-12-06 11:10:00', 'Weekly', 'Pending', 'CNF100029'),
(60, 161, 71, 1, 16, GETDATE(), '2025-11-30 07:50:00', '2025-12-07 07:50:00', 'Weekly', 'Cancelled', 'CNF100030'),

-- Branch 2 (30 reservations)
(61, 24, 9, 2, 2, GETDATE(), '2025-11-01 08:10:00', '2025-11-08 08:10:00', 'Weekly', 'Completed', 'CNF200001'),
(62, 37, 16, 2, 1, GETDATE(), '2025-11-02 09:40:00', '2025-11-09 09:40:00', 'Weekly', 'Completed', 'CNF200002'),
(63, 50, 23, 2, 2, GETDATE(), '2025-11-03 10:10:00', '2025-11-10 10:10:00', 'Weekly', 'Completed', 'CNF200003'),
(64, 63, 32, 2, 3, GETDATE(), '2025-11-04 11:25:00', '2025-11-11 11:25:00', 'Weekly', 'Completed', 'CNF200004'),
(65, 76, 46, 2, 2, GETDATE(), '2025-11-05 07:55:00', '2025-11-12 07:55:00', 'Weekly', 'Completed', 'CNF200005'),
(66, 89, 53, 2, 4, GETDATE(), '2025-11-06 08:40:00', '2025-11-13 08:40:00', 'Weekly', 'Completed', 'CNF200006'),
(67, 12, 68, 2, 2, GETDATE(), '2025-11-07 09:10:00', '2025-11-14 09:10:00', 'Weekly', 'Completed', 'CNF200007'),
(68, 25, 72, 2, 5, GETDATE(), '2025-11-08 10:40:00', '2025-11-15 10:40:00', 'Weekly', 'Completed', 'CNF200008'),
(69, 38, 85, 2, 2, GETDATE(), '2025-11-09 11:10:00', '2025-11-16 11:10:00', 'Weekly', 'Completed', 'CNF200009'),
(70, 51, 94, 2, 6, GETDATE(), '2025-11-10 07:40:00', '2025-11-17 07:40:00', 'Weekly', 'Completed', 'CNF200010'),
(71, 64, 102, 2, 2, GETDATE(), '2025-11-11 08:25:00', '2025-11-18 08:25:00', 'Weekly', 'Completed', 'CNF200011'),
(72, 77, 9, 2, 7, GETDATE(), '2025-11-12 09:55:00', '2025-11-19 09:55:00', 'Weekly', 'Completed', 'CNF200012'),
(73, 90, 16, 2, 2, GETDATE(), '2025-11-13 10:30:00', '2025-11-20 10:30:00', 'Weekly', 'Completed', 'CNF200013'),
(74, 103, 23, 2, 8, GETDATE(), '2025-11-14 11:40:00', '2025-11-21 11:40:00', 'Weekly', 'Completed', 'CNF200014'),
(75, 116, 32, 2, 2, GETDATE(), '2025-11-15 07:10:00', '2025-11-22 07:10:00', 'Weekly', 'Completed', 'CNF200015'),
(76, 129, 46, 2, 9, GETDATE(), '2025-11-16 08:55:00', '2025-11-23 08:55:00', 'Weekly', 'Completed', 'CNF200016'),
(77, 142, 53, 2, 2, GETDATE(), '2025-11-17 09:40:00', '2025-11-24 09:40:00', 'Weekly', 'Completed', 'CNF200017'),
(78, 155, 68, 2, 10, GETDATE(), '2025-11-18 10:25:00', '2025-11-25 10:25:00', 'Weekly', 'Completed', 'CNF200018'),
(79, 168, 72, 2, 2, GETDATE(), '2025-11-19 11:55:00', '2025-11-26 11:55:00', 'Weekly', 'Completed', 'CNF200019'),
(80, 181, 85, 2, 11, GETDATE(), '2025-11-20 07:30:00', '2025-11-27 07:30:00', 'Weekly', 'Completed', 'CNF200020'),
(81, 194, 94, 2, 2, GETDATE(), '2025-11-21 09:00:00', '2025-11-28 09:00:00', 'Weekly', 'Completed', 'CNF200021'),
(82, 7, 102, 2, 12, GETDATE(), '2025-11-22 09:35:00', '2025-11-29 09:35:00', 'Weekly', 'Completed', 'CNF200022'),
(83, 20, 9, 2, 2, GETDATE(), '2025-11-23 10:50:00', '2025-11-30 10:50:00', 'Weekly', 'Completed', 'CNF200023'),
(84, 33, 16, 2, 13, GETDATE(), '2025-11-24 11:15:00', '2025-12-01 11:15:00', 'Weekly', 'Completed', 'CNF200024'),
(85, 46, 23, 2, 2, GETDATE(), '2025-11-25 07:45:00', '2025-12-02 07:45:00', 'Weekly', 'Confirmed', 'CNF200025'),
(86, 59, 32, 2, 14, GETDATE(), '2025-11-26 08:30:00', '2025-12-03 08:30:00', 'Weekly', 'Confirmed', 'CNF200026'),
(87, 72, 46, 2, 2, GETDATE(), '2025-11-27 10:05:00', '2025-12-04 10:05:00', 'Weekly', 'Confirmed', 'CNF200027'),
(88, 85, 53, 2, 15, GETDATE(), '2025-11-28 10:35:00', '2025-12-05 10:35:00', 'Weekly', 'Pending', 'CNF200028'),
(89, 98, 68, 2, 2, GETDATE(), '2025-11-29 11:20:00', '2025-12-06 11:20:00', 'Weekly', 'Pending', 'CNF200029'),
(90, 111, 72, 2, 16, GETDATE(), '2025-11-30 08:00:00', '2025-12-07 08:00:00', 'Weekly', 'Cancelled', 'CNF200030'),

-- Branch 3 (30 reservations)
(91, 14, 10, 3, 3, GETDATE(), '2025-11-01 08:20:00', '2025-11-08 08:20:00', 'Weekly', 'Completed', 'CNF300001'),
(92, 27, 17, 3, 1, GETDATE(), '2025-11-02 09:50:00', '2025-11-09 09:50:00', 'Weekly', 'Completed', 'CNF300002'),
(93, 40, 24, 3, 3, GETDATE(), '2025-11-03 10:20:00', '2025-11-10 10:20:00', 'Weekly', 'Completed', 'CNF300003'),
(94, 53, 33, 3, 2, GETDATE(), '2025-11-04 11:35:00', '2025-11-11 11:35:00', 'Weekly', 'Completed', 'CNF300004'),
(95, 66, 47, 3, 3, GETDATE(), '2025-11-05 08:05:00', '2025-11-12 08:05:00', 'Weekly', 'Completed', 'CNF300005'),
(96, 79, 54, 3, 4, GETDATE(), '2025-11-06 08:50:00', '2025-11-13 08:50:00', 'Weekly', 'Completed', 'CNF300006'),
(97, 92, 69, 3, 3, GETDATE(), '2025-11-07 09:20:00', '2025-11-14 09:20:00', 'Weekly', 'Completed', 'CNF300007'),
(98, 105, 73, 3, 5, GETDATE(), '2025-11-08 10:50:00', '2025-11-15 10:50:00', 'Weekly', 'Completed', 'CNF300008'),
(99, 118, 86, 3, 3, GETDATE(), '2025-11-09 11:20:00', '2025-11-16 11:20:00', 'Weekly', 'Completed', 'CNF300009'),
(100, 131, 95, 3, 6, GETDATE(), '2025-11-10 07:50:00', '2025-11-17 07:50:00', 'Weekly', 'Completed', 'CNF300010'),
(101, 144, 103, 3, 3, GETDATE(), '2025-11-11 08:35:00', '2025-11-18 08:35:00', 'Weekly', 'Completed', 'CNF300011'),
(102, 157, 10, 3, 7, GETDATE(), '2025-11-12 10:05:00', '2025-11-19 10:05:00', 'Weekly', 'Completed', 'CNF300012'),
(103, 170, 17, 3, 3, GETDATE(), '2025-11-13 10:40:00', '2025-11-20 10:40:00', 'Weekly', 'Completed', 'CNF300013'),
(104, 183, 24, 3, 8, GETDATE(), '2025-11-14 11:50:00', '2025-11-21 11:50:00', 'Weekly', 'Completed', 'CNF300014'),
(105, 196, 33, 3, 3, GETDATE(), '2025-11-15 07:20:00', '2025-11-22 07:20:00', 'Weekly', 'Completed', 'CNF300015'),
(106, 9, 47, 3, 9, GETDATE(), '2025-11-16 09:05:00', '2025-11-23 09:05:00', 'Weekly', 'Completed', 'CNF300016'),
(107, 22, 54, 3, 3, GETDATE(), '2025-11-17 09:50:00', '2025-11-24 09:50:00', 'Weekly', 'Completed', 'CNF300017'),
(108, 35, 69, 3, 10, GETDATE(), '2025-11-18 10:35:00', '2025-11-25 10:35:00', 'Weekly', 'Completed', 'CNF300018'),
(109, 48, 73, 3, 3, GETDATE(), '2025-11-19 12:05:00', '2025-11-26 12:05:00', 'Weekly', 'Completed', 'CNF300019'),
(110, 61, 86, 3, 11, GETDATE(), '2025-11-20 07:40:00', '2025-11-27 07:40:00', 'Weekly', 'Completed', 'CNF300020'),
(111, 74, 95, 3, 3, GETDATE(), '2025-11-21 09:10:00', '2025-11-28 09:10:00', 'Weekly', 'Completed', 'CNF300021'),
(112, 87, 103, 3, 12, GETDATE(), '2025-11-22 09:45:00', '2025-11-29 09:45:00', 'Weekly', 'Completed', 'CNF300022'),
(113, 100, 10, 3, 3, GETDATE(), '2025-11-23 11:00:00', '2025-11-30 11:00:00', 'Weekly', 'Completed', 'CNF300023'),
(114, 113, 17, 3, 13, GETDATE(), '2025-11-24 11:25:00', '2025-12-01 11:25:00', 'Weekly', 'Completed', 'CNF300024'),
(115, 126, 24, 3, 3, GETDATE(), '2025-11-25 07:55:00', '2025-12-02 07:55:00', 'Weekly', 'Confirmed', 'CNF300025'),
(116, 139, 33, 3, 14, GETDATE(), '2025-11-26 08:40:00', '2025-12-03 08:40:00', 'Weekly', 'Confirmed', 'CNF300026'),
(117, 152, 47, 3, 3, GETDATE(), '2025-11-27 10:15:00', '2025-12-04 10:15:00', 'Weekly', 'Confirmed', 'CNF300027'),
(118, 165, 54, 3, 15, GETDATE(), '2025-11-28 10:45:00', '2025-12-05 10:45:00', 'Weekly', 'Pending', 'CNF300028'),
(119, 178, 69, 3, 3, GETDATE(), '2025-11-29 11:30:00', '2025-12-06 11:30:00', 'Weekly', 'Pending', 'CNF300029'),
(120, 191, 73, 3, 16, GETDATE(), '2025-11-30 08:10:00', '2025-12-07 08:10:00', 'Weekly', 'Cancelled', 'CNF300030'),

-- Branch 4 (30 reservations)
(121, 16, 11, 4, 4, GETDATE(), '2025-11-01 08:30:00', '2025-11-08 08:30:00', 'Weekly', 'Completed', 'CNF400001'),
(122, 29, 18, 4, 1, GETDATE(), '2025-11-02 10:00:00', '2025-11-09 10:00:00', 'Weekly', 'Completed', 'CNF400002'),
(123, 42, 25, 4, 4, GETDATE(), '2025-11-03 10:30:00', '2025-11-10 10:30:00', 'Weekly', 'Completed', 'CNF400003'),
(124, 55, 34, 4, 2, GETDATE(), '2025-11-04 11:45:00', '2025-11-11 11:45:00', 'Weekly', 'Completed', 'CNF400004'),
(125, 68, 48, 4, 4, GETDATE(), '2025-11-05 08:15:00', '2025-11-12 08:15:00', 'Weekly', 'Completed', 'CNF400005'),
(126, 81, 55, 4, 3, GETDATE(), '2025-11-06 09:00:00', '2025-11-13 09:00:00', 'Weekly', 'Completed', 'CNF400006'),
(127, 94, 70, 4, 4, GETDATE(), '2025-11-07 09:30:00', '2025-11-14 09:30:00', 'Weekly', 'Completed', 'CNF400007'),
(128, 107, 74, 4, 5, GETDATE(), '2025-11-08 11:00:00', '2025-11-15 11:00:00', 'Weekly', 'Completed', 'CNF400008'),
(129, 120, 87, 4, 4, GETDATE(), '2025-11-09 11:30:00', '2025-11-16 11:30:00', 'Weekly', 'Completed', 'CNF400009'),
(130, 133, 96, 4, 6, GETDATE(), '2025-11-10 08:00:00', '2025-11-17 08:00:00', 'Weekly', 'Completed', 'CNF400010'),
(131, 146, 104, 4, 4, GETDATE(), '2025-11-11 08:45:00', '2025-11-18 08:45:00', 'Weekly', 'Completed', 'CNF400011'),
(132, 159, 11, 4, 7, GETDATE(), '2025-11-12 10:15:00', '2025-11-19 10:15:00', 'Weekly', 'Completed', 'CNF400012'),
(133, 172, 18, 4, 4, GETDATE(), '2025-11-13 10:50:00', '2025-11-20 10:50:00', 'Weekly', 'Completed', 'CNF400013'),
(134, 185, 25, 4, 8, GETDATE(), '2025-11-14 12:00:00', '2025-11-21 12:00:00', 'Weekly', 'Completed', 'CNF400014'),
(135, 198, 34, 4, 4, GETDATE(), '2025-11-15 07:30:00', '2025-11-22 07:30:00', 'Weekly', 'Completed', 'CNF400015'),
(136, 11, 48, 4, 9, GETDATE(), '2025-11-16 09:15:00', '2025-11-23 09:15:00', 'Weekly', 'Completed', 'CNF400016'),
(137, 24, 55, 4, 4, GETDATE(), '2025-11-17 10:00:00', '2025-11-24 10:00:00', 'Weekly', 'Completed', 'CNF400017'),
(138, 37, 70, 4, 10, GETDATE(), '2025-11-18 10:45:00', '2025-11-25 10:45:00', 'Weekly', 'Completed', 'CNF400018'),
(139, 50, 74, 4, 4, GETDATE(), '2025-11-19 12:15:00', '2025-11-26 12:15:00', 'Weekly', 'Completed', 'CNF400019'),
(140, 63, 87, 4, 11, GETDATE(), '2025-11-20 07:50:00', '2025-11-27 07:50:00', 'Weekly', 'Completed', 'CNF400020'),
(141, 76, 96, 4, 4, GETDATE(), '2025-11-21 09:20:00', '2025-11-28 09:20:00', 'Weekly', 'Completed', 'CNF400021'),
(142, 89, 104, 4, 12, GETDATE(), '2025-11-22 09:55:00', '2025-11-29 09:55:00', 'Weekly', 'Completed', 'CNF400022'),
(143, 102, 11, 4, 4, GETDATE(), '2025-11-23 11:10:00', '2025-11-30 11:10:00', 'Weekly', 'Completed', 'CNF400023'),
(144, 115, 18, 4, 13, GETDATE(), '2025-11-24 11:35:00', '2025-12-01 11:35:00', 'Weekly', 'Completed', 'CNF400024'),
(145, 128, 25, 4, 4, GETDATE(), '2025-11-25 08:05:00', '2025-12-02 08:05:00', 'Weekly', 'Confirmed', 'CNF400025'),
(146, 141, 34, 4, 14, GETDATE(), '2025-11-26 08:50:00', '2025-12-03 08:50:00', 'Weekly', 'Confirmed', 'CNF400026'),
(147, 154, 48, 4, 4, GETDATE(), '2025-11-27 10:25:00', '2025-12-04 10:25:00', 'Weekly', 'Confirmed', 'CNF400027'),
(148, 167, 55, 4, 15, GETDATE(), '2025-11-28 10:55:00', '2025-12-05 10:55:00', 'Weekly', 'Pending', 'CNF400028'),
(149, 180, 70, 4, 4, GETDATE(), '2025-11-29 11:40:00', '2025-12-06 11:40:00', 'Weekly', 'Pending', 'CNF400029'),
(150, 193, 74, 4, 16, GETDATE(), '2025-11-30 08:20:00', '2025-12-07 08:20:00', 'Weekly', 'Cancelled', 'CNF400030'),

-- Branch 5 (30 reservations)
(151, 36, 12, 5, 5, GETDATE(), '2025-11-01 08:40:00', '2025-11-08 08:40:00', 'Weekly', 'Completed', 'CNF500001'),
(152, 59, 19, 5, 1, GETDATE(), '2025-11-02 10:10:00', '2025-11-09 10:10:00', 'Weekly', 'Completed', 'CNF500002'),
(153, 82, 26, 5, 5, GETDATE(), '2025-11-03 10:40:00', '2025-11-10 10:40:00', 'Weekly', 'Completed', 'CNF500003'),
(154, 105, 35, 5, 2, GETDATE(), '2025-11-04 11:55:00', '2025-11-11 11:55:00', 'Weekly', 'Completed', 'CNF500004'),
(155, 128, 49, 5, 5, GETDATE(), '2025-11-05 08:25:00', '2025-11-12 08:25:00', 'Weekly', 'Completed', 'CNF500005'),
(156, 151, 56, 5, 3, GETDATE(), '2025-11-06 09:10:00', '2025-11-13 09:10:00', 'Weekly', 'Completed', 'CNF500006'),
(157, 174, 71, 5, 5, GETDATE(), '2025-11-07 09:40:00', '2025-11-14 09:40:00', 'Weekly', 'Completed', 'CNF500007'),
(158, 197, 75, 5, 4, GETDATE(), '2025-11-08 11:10:00', '2025-11-15 11:10:00', 'Weekly', 'Completed', 'CNF500008'),
(159, 20, 88, 5, 5, GETDATE(), '2025-11-09 11:40:00', '2025-11-16 11:40:00', 'Weekly', 'Completed', 'CNF500009'),
(160, 43, 97, 5, 6, GETDATE(), '2025-11-10 08:10:00', '2025-11-17 08:10:00', 'Weekly', 'Completed', 'CNF500010'),
(161, 66, 105, 5, 5, GETDATE(), '2025-11-11 08:55:00', '2025-11-18 08:55:00', 'Weekly', 'Completed', 'CNF500011'),
(162, 89, 12, 5, 7, GETDATE(), '2025-11-12 10:25:00', '2025-11-19 10:25:00', 'Weekly', 'Completed', 'CNF500012'),
(163, 112, 19, 5, 5, GETDATE(), '2025-11-13 11:00:00', '2025-11-20 11:00:00', 'Weekly', 'Completed', 'CNF500013'),
(164, 135, 26, 5, 8, GETDATE(), '2025-11-14 12:10:00', '2025-11-21 12:10:00', 'Weekly', 'Completed', 'CNF500014'),
(165, 158, 35, 5, 5, GETDATE(), '2025-11-15 07:40:00', '2025-11-22 07:40:00', 'Weekly', 'Completed', 'CNF500015'),
(166, 181, 49, 5, 9, GETDATE(), '2025-11-16 09:25:00', '2025-11-23 09:25:00', 'Weekly', 'Completed', 'CNF500016'),
(167, 4, 56, 5, 5, GETDATE(), '2025-11-17 10:10:00', '2025-11-24 10:10:00', 'Weekly', 'Completed', 'CNF500017'),
(168, 27, 71, 5, 10, GETDATE(), '2025-11-18 10:55:00', '2025-11-25 10:55:00', 'Weekly', 'Completed', 'CNF500018'),
(169, 50, 75, 5, 5, GETDATE(), '2025-11-19 12:25:00', '2025-11-26 12:25:00', 'Weekly', 'Completed', 'CNF500019'),
(170, 73, 88, 5, 11, GETDATE(), '2025-11-20 08:00:00', '2025-11-27 08:00:00', 'Weekly', 'Completed', 'CNF500020'),
(171, 96, 97, 5, 5, GETDATE(), '2025-11-21 09:30:00', '2025-11-28 09:30:00', 'Weekly', 'Completed', 'CNF500021'),
(172, 119, 105, 5, 12, GETDATE(), '2025-11-22 10:05:00', '2025-11-29 10:05:00', 'Weekly', 'Completed', 'CNF500022'),
(173, 142, 12, 5, 5, GETDATE(), '2025-11-23 11:20:00', '2025-11-30 11:20:00', 'Weekly', 'Completed', 'CNF500023'),
(174, 165, 19, 5, 13, GETDATE(), '2025-11-24 11:45:00', '2025-12-01 11:45:00', 'Weekly', 'Completed', 'CNF500024'),
(175, 188, 26, 5, 5, GETDATE(), '2025-11-25 08:15:00', '2025-12-02 08:15:00', 'Weekly', 'Confirmed', 'CNF500025'),
(176, 11, 35, 5, 14, GETDATE(), '2025-11-26 09:00:00', '2025-12-03 09:00:00', 'Weekly', 'Confirmed', 'CNF500026'),
(177, 34, 49, 5, 5, GETDATE(), '2025-11-27 10:35:00', '2025-12-04 10:35:00', 'Weekly', 'Confirmed', 'CNF500027'),
(178, 57, 56, 5, 15, GETDATE(), '2025-11-28 11:05:00', '2025-12-05 11:05:00', 'Weekly', 'Pending', 'CNF500028'),
(179, 80, 71, 5, 5, GETDATE(), '2025-11-29 11:50:00', '2025-12-06 11:50:00', 'Weekly', 'Pending', 'CNF500029'),
(180, 103, 75, 5, 16, GETDATE(), '2025-11-30 08:30:00', '2025-12-07 08:30:00', 'Weekly', 'Cancelled', 'CNF500030'),

-- Second batch of 150 reservations (181-330) - 30 per branch for branches 6-10
-- Branch 6 (30 reservations)
(181, 46, 13, 6, 6, GETDATE(), '2025-11-01 08:50:00', '2025-11-08 08:50:00', 'Weekly', 'Completed', 'CNF600001'),
(182, 69, 20, 6, 1, GETDATE(), '2025-11-02 10:20:00', '2025-11-09 10:20:00', 'Weekly', 'Completed', 'CNF600002'),
(183, 92, 27, 6, 6, GETDATE(), '2025-11-03 10:50:00', '2025-11-10 10:50:00', 'Weekly', 'Completed', 'CNF600003'),
(184, 115, 36, 6, 2, GETDATE(), '2025-11-04 12:05:00', '2025-11-11 12:05:00', 'Weekly', 'Completed', 'CNF600004'),
(185, 138, 50, 6, 6, GETDATE(), '2025-11-05 08:35:00', '2025-11-12 08:35:00', 'Weekly', 'Completed', 'CNF600005'),
(186, 161, 57, 6, 3, GETDATE(), '2025-11-06 09:20:00', '2025-11-13 09:20:00', 'Weekly', 'Completed', 'CNF600006'),
(187, 184, 72, 6, 6, GETDATE(), '2025-11-07 09:50:00', '2025-11-14 09:50:00', 'Weekly', 'Completed', 'CNF600007'),
(188, 7, 76, 6, 4, GETDATE(), '2025-11-08 11:20:00', '2025-11-15 11:20:00', 'Weekly', 'Completed', 'CNF600008'),
(189, 30, 89, 6, 6, GETDATE(), '2025-11-09 11:50:00', '2025-11-16 11:50:00', 'Weekly', 'Completed', 'CNF600009'),
(190, 53, 98, 6, 5, GETDATE(), '2025-11-10 08:20:00', '2025-11-17 08:20:00', 'Weekly', 'Completed', 'CNF600010'),
(191, 76, 106, 6, 6, GETDATE(), '2025-11-11 09:05:00', '2025-11-18 09:05:00', 'Weekly', 'Completed', 'CNF600011'),
(192, 99, 13, 6, 7, GETDATE(), '2025-11-12 10:35:00', '2025-11-19 10:35:00', 'Weekly', 'Completed', 'CNF600012'),
(193, 122, 20, 6, 6, GETDATE(), '2025-11-13 11:10:00', '2025-11-20 11:10:00', 'Weekly', 'Completed', 'CNF600013'),
(194, 145, 27, 6, 8, GETDATE(), '2025-11-14 12:20:00', '2025-11-21 12:20:00', 'Weekly', 'Completed', 'CNF600014'),
(195, 168, 36, 6, 6, GETDATE(), '2025-11-15 07:50:00', '2025-11-22 07:50:00', 'Weekly', 'Completed', 'CNF600015'),
(196, 191, 50, 6, 9, GETDATE(), '2025-11-16 09:35:00', '2025-11-23 09:35:00', 'Weekly', 'Completed', 'CNF600016'),
(197, 14, 57, 6, 6, GETDATE(), '2025-11-17 10:20:00', '2025-11-24 10:20:00', 'Weekly', 'Completed', 'CNF600017'),
(198, 37, 72, 6, 10, GETDATE(), '2025-11-18 11:05:00', '2025-11-25 11:05:00', 'Weekly', 'Completed', 'CNF600018'),
(199, 60, 76, 6, 6, GETDATE(), '2025-11-19 12:35:00', '2025-11-26 12:35:00', 'Weekly', 'Completed', 'CNF600019'),
(200, 83, 89, 6, 11, GETDATE(), '2025-11-20 08:10:00', '2025-11-27 08:10:00', 'Weekly', 'Completed', 'CNF600020'),
(201, 106, 98, 6, 6, GETDATE(), '2025-11-21 09:40:00', '2025-11-28 09:40:00', 'Weekly', 'Completed', 'CNF600021'),
(202, 129, 106, 6, 12, GETDATE(), '2025-11-22 10:15:00', '2025-11-29 10:15:00', 'Weekly', 'Completed', 'CNF600022'),
(203, 152, 13, 6, 6, GETDATE(), '2025-11-23 11:30:00', '2025-11-30 11:30:00', 'Weekly', 'Completed', 'CNF600023'),
(204, 175, 20, 6, 13, GETDATE(), '2025-11-24 11:55:00', '2025-12-01 11:55:00', 'Weekly', 'Completed', 'CNF600024'),
(205, 198, 27, 6, 6, GETDATE(), '2025-11-25 08:25:00', '2025-12-02 08:25:00', 'Weekly', 'Confirmed', 'CNF600025'),
(206, 21, 36, 6, 14, GETDATE(), '2025-11-26 09:10:00', '2025-12-03 09:10:00', 'Weekly', 'Confirmed', 'CNF600026'),
(207, 44, 50, 6, 6, GETDATE(), '2025-11-27 10:45:00', '2025-12-04 10:45:00', 'Weekly', 'Confirmed', 'CNF600027'),
(208, 67, 57, 6, 15, GETDATE(), '2025-11-28 11:15:00', '2025-12-05 11:15:00', 'Weekly', 'Pending', 'CNF600028'),
(209, 90, 72, 6, 6, GETDATE(), '2025-11-29 12:00:00', '2025-12-06 12:00:00', 'Weekly', 'Pending', 'CNF600029'),
(210, 113, 76, 6, 16, GETDATE(), '2025-11-30 08:40:00', '2025-12-07 08:40:00', 'Weekly', 'Cancelled', 'CNF600030'),

-- Branch 7 (30 reservations)
(211, 56, 14, 7, 7, GETDATE(), '2025-11-01 09:00:00', '2025-11-08 09:00:00', 'Weekly', 'Completed', 'CNF700001'),
(212, 79, 21, 7, 1, GETDATE(), '2025-11-02 10:30:00', '2025-11-09 10:30:00', 'Weekly', 'Completed', 'CNF700002'),
(213, 102, 28, 7, 7, GETDATE(), '2025-11-03 11:00:00', '2025-11-10 11:00:00', 'Weekly', 'Completed', 'CNF700003'),
(214, 125, 37, 7, 2, GETDATE(), '2025-11-04 12:15:00', '2025-11-11 12:15:00', 'Weekly', 'Completed', 'CNF700004'),
(215, 148, 51, 7, 7, GETDATE(), '2025-11-05 08:45:00', '2025-11-12 08:45:00', 'Weekly', 'Completed', 'CNF700005'),
(216, 171, 58, 7, 3, GETDATE(), '2025-11-06 09:30:00', '2025-11-13 09:30:00', 'Weekly', 'Completed', 'CNF700006'),
(217, 194, 73, 7, 7, GETDATE(), '2025-11-07 10:00:00', '2025-11-14 10:00:00', 'Weekly', 'Completed', 'CNF700007'),
(218, 17, 77, 7, 4, GETDATE(), '2025-11-08 11:30:00', '2025-11-15 11:30:00', 'Weekly', 'Completed', 'CNF700008'),
(219, 40, 90, 7, 7, GETDATE(), '2025-11-09 12:00:00', '2025-11-16 12:00:00', 'Weekly', 'Completed', 'CNF700009'),
(220, 63, 99, 7, 5, GETDATE(), '2025-11-10 08:30:00', '2025-11-17 08:30:00', 'Weekly', 'Completed', 'CNF700010'),
(221, 86, 107, 7, 7, GETDATE(), '2025-11-11 09:15:00', '2025-11-18 09:15:00', 'Weekly', 'Completed', 'CNF700011'),
(222, 109, 14, 7, 6, GETDATE(), '2025-11-12 10:45:00', '2025-11-19 10:45:00', 'Weekly', 'Completed', 'CNF700012'),
(223, 132, 21, 7, 7, GETDATE(), '2025-11-13 11:20:00', '2025-11-20 11:20:00', 'Weekly', 'Completed', 'CNF700013'),
(224, 155, 28, 7, 8, GETDATE(), '2025-11-14 12:30:00', '2025-11-21 12:30:00', 'Weekly', 'Completed', 'CNF700014'),
(225, 178, 37, 7, 7, GETDATE(), '2025-11-15 08:00:00', '2025-11-22 08:00:00', 'Weekly', 'Completed', 'CNF700015'),
(226, 1, 51, 7, 9, GETDATE(), '2025-11-16 09:45:00', '2025-11-23 09:45:00', 'Weekly', 'Completed', 'CNF700016'),
(227, 24, 58, 7, 7, GETDATE(), '2025-11-17 10:30:00', '2025-11-24 10:30:00', 'Weekly', 'Completed', 'CNF700017'),
(228, 47, 73, 7, 10, GETDATE(), '2025-11-18 11:15:00', '2025-11-25 11:15:00', 'Weekly', 'Completed', 'CNF700018'),
(229, 70, 77, 7, 7, GETDATE(), '2025-11-19 12:45:00', '2025-11-26 12:45:00', 'Weekly', 'Completed', 'CNF700019'),
(230, 93, 90, 7, 11, GETDATE(), '2025-11-20 08:20:00', '2025-11-27 08:20:00', 'Weekly', 'Completed', 'CNF700020'),
(231, 116, 99, 7, 7, GETDATE(), '2025-11-21 09:50:00', '2025-11-28 09:50:00', 'Weekly', 'Completed', 'CNF700021'),
(232, 139, 107, 7, 12, GETDATE(), '2025-11-22 10:25:00', '2025-11-29 10:25:00', 'Weekly', 'Completed', 'CNF700022'),
(233, 162, 14, 7, 7, GETDATE(), '2025-11-23 11:40:00', '2025-11-30 11:40:00', 'Weekly', 'Completed', 'CNF700023'),
(234, 185, 21, 7, 13, GETDATE(), '2025-11-24 12:05:00', '2025-12-01 12:05:00', 'Weekly', 'Completed', 'CNF700024'),
(235, 8, 28, 7, 7, GETDATE(), '2025-11-25 08:35:00', '2025-12-02 08:35:00', 'Weekly', 'Confirmed', 'CNF700025'),
(236, 31, 37, 7, 14, GETDATE(), '2025-11-26 09:20:00', '2025-12-03 09:20:00', 'Weekly', 'Confirmed', 'CNF700026'),
(237, 54, 51, 7, 7, GETDATE(), '2025-11-27 10:55:00', '2025-12-04 10:55:00', 'Weekly', 'Confirmed', 'CNF700027'),
(238, 77, 58, 7, 15, GETDATE(), '2025-11-28 11:25:00', '2025-12-05 11:25:00', 'Weekly', 'Pending', 'CNF700028'),
(239, 100, 73, 7, 7, GETDATE(), '2025-11-29 12:10:00', '2025-12-06 12:10:00', 'Weekly', 'Pending', 'CNF700029'),
(240, 123, 77, 7, 16, GETDATE(), '2025-11-30 08:50:00', '2025-12-07 08:50:00', 'Weekly', 'Cancelled', 'CNF700030'),

-- Branch 8 (30 reservations)
(241, 66, 15, 8, 8, GETDATE(), '2025-11-01 09:10:00', '2025-11-08 09:10:00', 'Weekly', 'Completed', 'CNF800001'),
(242, 89, 22, 8, 1, GETDATE(), '2025-11-02 10:40:00', '2025-11-09 10:40:00', 'Weekly', 'Completed', 'CNF800002'),
(243, 112, 29, 8, 8, GETDATE(), '2025-11-03 11:10:00', '2025-11-10 11:10:00', 'Weekly', 'Completed', 'CNF800003'),
(244, 135, 38, 8, 2, GETDATE(), '2025-11-04 12:25:00', '2025-11-11 12:25:00', 'Weekly', 'Completed', 'CNF800004'),
(245, 158, 52, 8, 8, GETDATE(), '2025-11-05 08:55:00', '2025-11-12 08:55:00', 'Weekly', 'Completed', 'CNF800005'),
(246, 181, 59, 8, 3, GETDATE(), '2025-11-06 09:40:00', '2025-11-13 09:40:00', 'Weekly', 'Completed', 'CNF800006'),
(247, 4, 74, 8, 8, GETDATE(), '2025-11-07 10:10:00', '2025-11-14 10:10:00', 'Weekly', 'Completed', 'CNF800007'),
(248, 27, 78, 8, 4, GETDATE(), '2025-11-08 11:40:00', '2025-11-15 11:40:00', 'Weekly', 'Completed', 'CNF800008'),
(249, 50, 91, 8, 8, GETDATE(), '2025-11-09 12:10:00', '2025-11-16 12:10:00', 'Weekly', 'Completed', 'CNF800009'),
(250, 73, 100, 8, 5, GETDATE(), '2025-11-10 08:40:00', '2025-11-17 08:40:00', 'Weekly', 'Completed', 'CNF800010'),
(251, 96, 108, 8, 8, GETDATE(), '2025-11-11 09:25:00', '2025-11-18 09:25:00', 'Weekly', 'Completed', 'CNF800011'),
(252, 119, 15, 8, 6, GETDATE(), '2025-11-12 10:55:00', '2025-11-19 10:55:00', 'Weekly', 'Completed', 'CNF800012'),
(253, 142, 22, 8, 8, GETDATE(), '2025-11-13 11:30:00', '2025-11-20 11:30:00', 'Weekly', 'Completed', 'CNF800013'),
(254, 165, 29, 8, 7, GETDATE(), '2025-11-14 12:40:00', '2025-11-21 12:40:00', 'Weekly', 'Completed', 'CNF800014'),
(255, 188, 38, 8, 8, GETDATE(), '2025-11-15 08:10:00', '2025-11-22 08:10:00', 'Weekly', 'Completed', 'CNF800015'),
(256, 11, 52, 8, 9, GETDATE(), '2025-11-16 09:55:00', '2025-11-23 09:55:00', 'Weekly', 'Completed', 'CNF800016'),
(257, 34, 59, 8, 8, GETDATE(), '2025-11-17 10:40:00', '2025-11-24 10:40:00', 'Weekly', 'Completed', 'CNF800017'),
(258, 57, 74, 8, 10, GETDATE(), '2025-11-18 11:25:00', '2025-11-25 11:25:00', 'Weekly', 'Completed', 'CNF800018'),
(259, 80, 78, 8, 8, GETDATE(), '2025-11-19 12:55:00', '2025-11-26 12:55:00', 'Weekly', 'Completed', 'CNF800019'),
(260, 103, 91, 8, 11, GETDATE(), '2025-11-20 08:30:00', '2025-11-27 08:30:00', 'Weekly', 'Completed', 'CNF800020'),
(261, 126, 100, 8, 8, GETDATE(), '2025-11-21 10:00:00', '2025-11-28 10:00:00', 'Weekly', 'Completed', 'CNF800021'),
(262, 149, 108, 8, 12, GETDATE(), '2025-11-22 10:35:00', '2025-11-29 10:35:00', 'Weekly', 'Completed', 'CNF800022'),
(263, 172, 15, 8, 8, GETDATE(), '2025-11-23 11:50:00', '2025-11-30 11:50:00', 'Weekly', 'Completed', 'CNF800023'),
(264, 195, 22, 8, 13, GETDATE(), '2025-11-24 12:15:00', '2025-12-01 12:15:00', 'Weekly', 'Completed', 'CNF800024'),
(265, 18, 29, 8, 8, GETDATE(), '2025-11-25 08:45:00', '2025-12-02 08:45:00', 'Weekly', 'Confirmed', 'CNF800025'),
(266, 41, 38, 8, 14, GETDATE(), '2025-11-26 09:30:00', '2025-12-03 09:30:00', 'Weekly', 'Confirmed', 'CNF800026'),
(267, 64, 52, 8, 8, GETDATE(), '2025-11-27 11:05:00', '2025-12-04 11:05:00', 'Weekly', 'Confirmed', 'CNF800027'),
(268, 87, 59, 8, 15, GETDATE(), '2025-11-28 11:35:00', '2025-12-05 11:35:00', 'Weekly', 'Pending', 'CNF800028'),
(269, 110, 74, 8, 8, GETDATE(), '2025-11-29 12:20:00', '2025-12-06 12:20:00', 'Weekly', 'Pending', 'CNF800029'),
(270, 133, 78, 8, 16, GETDATE(), '2025-11-30 09:00:00', '2025-12-07 09:00:00', 'Weekly', 'Cancelled', 'CNF800030'),

-- Branch 9 (30 reservations)
(271, 76, 16, 9, 9, GETDATE(), '2025-11-01 09:20:00', '2025-11-08 09:20:00', 'Weekly', 'Completed', 'CNF900001'),
(272, 99, 23, 9, 1, GETDATE(), '2025-11-02 10:50:00', '2025-11-09 10:50:00', 'Weekly', 'Completed', 'CNF900002'),
(273, 122, 30, 9, 9, GETDATE(), '2025-11-03 11:20:00', '2025-11-10 11:20:00', 'Weekly', 'Completed', 'CNF900003'),
(274, 145, 39, 9, 2, GETDATE(), '2025-11-04 12:35:00', '2025-11-11 12:35:00', 'Weekly', 'Completed', 'CNF900004'),
(275, 168, 53, 9, 9, GETDATE(), '2025-11-05 09:05:00', '2025-11-12 09:05:00', 'Weekly', 'Completed', 'CNF900005'),
(276, 191, 60, 9, 3, GETDATE(), '2025-11-06 09:50:00', '2025-11-13 09:50:00', 'Weekly', 'Completed', 'CNF900006'),
(277, 14, 75, 9, 9, GETDATE(), '2025-11-07 10:20:00', '2025-11-14 10:20:00', 'Weekly', 'Completed', 'CNF900007'),
(278, 37, 79, 9, 4, GETDATE(), '2025-11-08 11:50:00', '2025-11-15 11:50:00', 'Weekly', 'Completed', 'CNF900008'),
(279, 60, 92, 9, 9, GETDATE(), '2025-11-09 12:20:00', '2025-11-16 12:20:00', 'Weekly', 'Completed', 'CNF900009'),
(280, 83, 101, 9, 5, GETDATE(), '2025-11-10 08:50:00', '2025-11-17 08:50:00', 'Weekly', 'Completed', 'CNF900010'),
(281, 106, 109, 9, 9, GETDATE(), '2025-11-11 09:35:00', '2025-11-18 09:35:00', 'Weekly', 'Completed', 'CNF900011'),
(282, 129, 16, 9, 6, GETDATE(), '2025-11-12 11:05:00', '2025-11-19 11:05:00', 'Weekly', 'Completed', 'CNF900012'),
(283, 152, 23, 9, 9, GETDATE(), '2025-11-13 11:40:00', '2025-11-20 11:40:00', 'Weekly', 'Completed', 'CNF900013'),
(284, 175, 30, 9, 7, GETDATE(), '2025-11-14 12:50:00', '2025-11-21 12:50:00', 'Weekly', 'Completed', 'CNF900014'),
(285, 198, 39, 9, 9, GETDATE(), '2025-11-15 08:20:00', '2025-11-22 08:20:00', 'Weekly', 'Completed', 'CNF900015'),
(286, 21, 53, 9, 8, GETDATE(), '2025-11-16 10:05:00', '2025-11-23 10:05:00', 'Weekly', 'Completed', 'CNF900016'),
(287, 44, 60, 9, 9, GETDATE(), '2025-11-17 10:50:00', '2025-11-24 10:50:00', 'Weekly', 'Completed', 'CNF900017'),
(288, 67, 75, 9, 10, GETDATE(), '2025-11-18 11:35:00', '2025-11-25 11:35:00', 'Weekly', 'Completed', 'CNF900018'),
(289, 90, 79, 9, 9, GETDATE(), '2025-11-19 13:05:00', '2025-11-26 13:05:00', 'Weekly', 'Completed', 'CNF900019'),
(290, 113, 92, 9, 11, GETDATE(), '2025-11-20 08:40:00', '2025-11-27 08:40:00', 'Weekly', 'Completed', 'CNF900020'),
(291, 136, 101, 9, 9, GETDATE(), '2025-11-21 10:10:00', '2025-11-28 10:10:00', 'Weekly', 'Completed', 'CNF900021'),
(292, 159, 109, 9, 12, GETDATE(), '2025-11-22 10:45:00', '2025-11-29 10:45:00', 'Weekly', 'Completed', 'CNF900022'),
(293, 182, 16, 9, 9, GETDATE(), '2025-11-23 12:00:00', '2025-11-30 12:00:00', 'Weekly', 'Completed', 'CNF900023'),
(294, 5, 23, 9, 13, GETDATE(), '2025-11-24 12:25:00', '2025-12-01 12:25:00', 'Weekly', 'Completed', 'CNF900024'),
(295, 28, 30, 9, 9, GETDATE(), '2025-11-25 08:55:00', '2025-12-02 08:55:00', 'Weekly', 'Confirmed', 'CNF900025'),
(296, 51, 39, 9, 14, GETDATE(), '2025-11-26 09:40:00', '2025-12-03 09:40:00', 'Weekly', 'Confirmed', 'CNF900026'),
(297, 74, 53, 9, 9, GETDATE(), '2025-11-27 11:15:00', '2025-12-04 11:15:00', 'Weekly', 'Confirmed', 'CNF900027'),
(298, 97, 60, 9, 15, GETDATE(), '2025-11-28 11:45:00', '2025-12-05 11:45:00', 'Weekly', 'Pending', 'CNF900028'),
(299, 120, 75, 9, 9, GETDATE(), '2025-11-29 12:30:00', '2025-12-06 12:30:00', 'Weekly', 'Pending', 'CNF900029'),
(300, 143, 79, 9, 16, GETDATE(), '2025-11-30 09:10:00', '2025-12-07 09:10:00', 'Weekly', 'Cancelled', 'CNF900030'),

-- Branch 10 (30 reservations)
(301, 86, 17, 10, 10, GETDATE(), '2025-11-01 09:30:00', '2025-11-08 09:30:00', 'Weekly', 'Completed', 'CNF1000001'),
(302, 109, 24, 10, 1, GETDATE(), '2025-11-02 11:00:00', '2025-11-09 11:00:00', 'Weekly', 'Completed', 'CNF1000002'),
(303, 132, 31, 10, 10, GETDATE(), '2025-11-03 11:30:00', '2025-11-10 11:30:00', 'Weekly', 'Completed', 'CNF1000003'),
(304, 155, 40, 10, 2, GETDATE(), '2025-11-04 12:45:00', '2025-11-11 12:45:00', 'Weekly', 'Completed', 'CNF1000004'),
(305, 178, 54, 10, 10, GETDATE(), '2025-11-05 09:15:00', '2025-11-12 09:15:00', 'Weekly', 'Completed', 'CNF1000005'),
(306, 1, 61, 10, 3, GETDATE(), '2025-11-06 10:00:00', '2025-11-13 10:00:00', 'Weekly', 'Completed', 'CNF1000006'),
(307, 24, 76, 10, 10, GETDATE(), '2025-11-07 10:30:00', '2025-11-14 10:30:00', 'Weekly', 'Completed', 'CNF1000007'),
(308, 47, 80, 10, 4, GETDATE(), '2025-11-08 12:00:00', '2025-11-15 12:00:00', 'Weekly', 'Completed', 'CNF1000008'),
(309, 70, 93, 10, 10, GETDATE(), '2025-11-09 12:30:00', '2025-11-16 12:30:00', 'Weekly', 'Completed', 'CNF1000009'),
(310, 93, 102, 10, 5, GETDATE(), '2025-11-10 09:00:00', '2025-11-17 09:00:00', 'Weekly', 'Completed', 'CNF1000010'),
(311, 116, 110, 10, 10, GETDATE(), '2025-11-11 09:45:00', '2025-11-18 09:45:00', 'Weekly', 'Completed', 'CNF1000011'),
(312, 139, 17, 10, 6, GETDATE(), '2025-11-12 11:15:00', '2025-11-19 11:15:00', 'Weekly', 'Completed', 'CNF1000012'),
(313, 162, 24, 10, 10, GETDATE(), '2025-11-13 11:50:00', '2025-11-20 11:50:00', 'Weekly', 'Completed', 'CNF1000013'),
(314, 185, 31, 10, 7, GETDATE(), '2025-11-14 13:00:00', '2025-11-21 13:00:00', 'Weekly', 'Completed', 'CNF1000014'),
(315, 8, 40, 10, 10, GETDATE(), '2025-11-15 08:30:00', '2025-11-22 08:30:00', 'Weekly', 'Completed', 'CNF1000015'),
(316, 31, 54, 10, 8, GETDATE(), '2025-11-16 10:15:00', '2025-11-23 10:15:00', 'Weekly', 'Completed', 'CNF1000016'),
(317, 54, 61, 10, 10, GETDATE(), '2025-11-17 11:00:00', '2025-11-24 11:00:00', 'Weekly', 'Completed', 'CNF1000017'),
(318, 77, 76, 10, 9, GETDATE(), '2025-11-18 11:45:00', '2025-11-25 11:45:00', 'Weekly', 'Completed', 'CNF1000018'),
(319, 100, 80, 10, 10, GETDATE(), '2025-11-19 13:15:00', '2025-11-26 13:15:00', 'Weekly', 'Completed', 'CNF1000019'),
(320, 123, 93, 10, 11, GETDATE(), '2025-11-20 08:50:00', '2025-11-27 08:50:00', 'Weekly', 'Completed', 'CNF1000020'),
(321, 146, 102, 10, 10, GETDATE(), '2025-11-21 10:20:00', '2025-11-28 10:20:00', 'Weekly', 'Completed', 'CNF1000021'),
(322, 169, 110, 10, 12, GETDATE(), '2025-11-22 10:55:00', '2025-11-29 10:55:00', 'Weekly', 'Completed', 'CNF1000022'),
(323, 192, 17, 10, 10, GETDATE(), '2025-11-23 12:10:00', '2025-11-30 12:10:00', 'Weekly', 'Completed', 'CNF1000023'),
(324, 15, 24, 10, 13, GETDATE(), '2025-11-24 12:35:00', '2025-12-01 12:35:00', 'Weekly', 'Completed', 'CNF1000024'),
(325, 38, 31, 10, 10, GETDATE(), '2025-11-25 09:05:00', '2025-12-02 09:05:00', 'Weekly', 'Confirmed', 'CNF1000025'),
(326, 61, 40, 10, 14, GETDATE(), '2025-11-26 09:50:00', '2025-12-03 09:50:00', 'Weekly', 'Confirmed', 'CNF1000026'),
(327, 84, 54, 10, 10, GETDATE(), '2025-11-27 11:25:00', '2025-12-04 11:25:00', 'Weekly', 'Confirmed', 'CNF1000027'),
(328, 107, 61, 10, 15, GETDATE(), '2025-11-28 11:55:00', '2025-12-05 11:55:00', 'Weekly', 'Pending', 'CNF1000028'),
(329, 130, 76, 10, 10, GETDATE(), '2025-11-29 12:40:00', '2025-12-06 12:40:00', 'Weekly', 'Pending', 'CNF1000029'),
(330, 153, 80, 10, 16, GETDATE(), '2025-11-30 09:20:00', '2025-12-07 09:20:00', 'Weekly', 'Cancelled', 'CNF1000030'),

-- Final batch of 180 reservations (331-510) - 30 per branch for branches 11-16
-- Branch 11 (30 reservations)
(331, 96, 18, 11, 11, GETDATE(), '2025-11-01 09:40:00', '2025-11-08 09:40:00', 'Weekly', 'Completed', 'CNF1100001'),
(332, 119, 25, 11, 1, GETDATE(), '2025-11-02 11:10:00', '2025-11-09 11:10:00', 'Weekly', 'Completed', 'CNF1100002'),
(333, 142, 32, 11, 11, GETDATE(), '2025-11-03 11:40:00', '2025-11-10 11:40:00', 'Weekly', 'Completed', 'CNF1100003'),
(334, 165, 41, 11, 2, GETDATE(), '2025-11-04 12:55:00', '2025-11-11 12:55:00', 'Weekly', 'Completed', 'CNF1100004'),
(335, 188, 55, 11, 11, GETDATE(), '2025-11-05 09:25:00', '2025-11-12 09:25:00', 'Weekly', 'Completed', 'CNF1100005'),
(336, 11, 62, 11, 3, GETDATE(), '2025-11-06 10:10:00', '2025-11-13 10:10:00', 'Weekly', 'Completed', 'CNF1100006'),
(337, 34, 77, 11, 11, GETDATE(), '2025-11-07 10:40:00', '2025-11-14 10:40:00', 'Weekly', 'Completed', 'CNF1100007'),
(338, 57, 81, 11, 4, GETDATE(), '2025-11-08 12:10:00', '2025-11-15 12:10:00', 'Weekly', 'Completed', 'CNF1100008'),
(339, 80, 94, 11, 11, GETDATE(), '2025-11-09 12:40:00', '2025-11-16 12:40:00', 'Weekly', 'Completed', 'CNF1100009'),
(340, 103, 103, 11, 5, GETDATE(), '2025-11-10 09:10:00', '2025-11-17 09:10:00', 'Weekly', 'Completed', 'CNF1100010'),
(341, 126, 111, 11, 11, GETDATE(), '2025-11-11 09:55:00', '2025-11-18 09:55:00', 'Weekly', 'Completed', 'CNF1100011'),
(342, 149, 18, 11, 6, GETDATE(), '2025-11-12 11:25:00', '2025-11-19 11:25:00', 'Weekly', 'Completed', 'CNF1100012'),
(343, 172, 25, 11, 11, GETDATE(), '2025-11-13 12:00:00', '2025-11-20 12:00:00', 'Weekly', 'Completed', 'CNF1100013'),
(344, 195, 32, 11, 7, GETDATE(), '2025-11-14 13:10:00', '2025-11-21 13:10:00', 'Weekly', 'Completed', 'CNF1100014'),
(345, 18, 41, 11, 11, GETDATE(), '2025-11-15 08:40:00', '2025-11-22 08:40:00', 'Weekly', 'Completed', 'CNF1100015'),
(346, 41, 55, 11, 8, GETDATE(), '2025-11-16 10:25:00', '2025-11-23 10:25:00', 'Weekly', 'Completed', 'CNF1100016'),
(347, 64, 62, 11, 11, GETDATE(), '2025-11-17 11:10:00', '2025-11-24 11:10:00', 'Weekly', 'Completed', 'CNF1100017'),
(348, 87, 77, 11, 9, GETDATE(), '2025-11-18 11:55:00', '2025-11-25 11:55:00', 'Weekly', 'Completed', 'CNF1100018'),
(349, 110, 81, 11, 11, GETDATE(), '2025-11-19 13:25:00', '2025-11-26 13:25:00', 'Weekly', 'Completed', 'CNF1100019'),
(350, 133, 94, 11, 10, GETDATE(), '2025-11-20 09:00:00', '2025-11-27 09:00:00', 'Weekly', 'Completed', 'CNF1100020'),
(351, 156, 103, 11, 11, GETDATE(), '2025-11-21 10:30:00', '2025-11-28 10:30:00', 'Weekly', 'Completed', 'CNF1100021'),
(352, 179, 111, 11, 12, GETDATE(), '2025-11-22 11:05:00', '2025-11-29 11:05:00', 'Weekly', 'Completed', 'CNF1100022'),
(353, 2, 18, 11, 11, GETDATE(), '2025-11-23 12:20:00', '2025-11-30 12:20:00', 'Weekly', 'Completed', 'CNF1100023'),
(354, 25, 25, 11, 13, GETDATE(), '2025-11-24 12:45:00', '2025-12-01 12:45:00', 'Weekly', 'Completed', 'CNF1100024'),
(355, 48, 32, 11, 11, GETDATE(), '2025-11-25 09:15:00', '2025-12-02 09:15:00', 'Weekly', 'Confirmed', 'CNF1100025'),
(356, 71, 41, 11, 14, GETDATE(), '2025-11-26 10:00:00', '2025-12-03 10:00:00', 'Weekly', 'Confirmed', 'CNF1100026'),
(357, 94, 55, 11, 11, GETDATE(), '2025-11-27 11:35:00', '2025-12-04 11:35:00', 'Weekly', 'Confirmed', 'CNF1100027'),
(358, 117, 62, 11, 15, GETDATE(), '2025-11-28 12:05:00', '2025-12-05 12:05:00', 'Weekly', 'Pending', 'CNF1100028'),
(359, 140, 77, 11, 11, GETDATE(), '2025-11-29 12:50:00', '2025-12-06 12:50:00', 'Weekly', 'Pending', 'CNF1100029'),
(360, 163, 81, 11, 16, GETDATE(), '2025-11-30 09:30:00', '2025-12-07 09:30:00', 'Weekly', 'Cancelled', 'CNF1100030'),

-- Branch 12 (30 reservations)
(361, 106, 19, 12, 12, GETDATE(), '2025-11-01 09:50:00', '2025-11-08 09:50:00', 'Weekly', 'Completed', 'CNF1200001'),
(362, 129, 26, 12, 1, GETDATE(), '2025-11-02 11:20:00', '2025-11-09 11:20:00', 'Weekly', 'Completed', 'CNF1200002'),
(363, 152, 33, 12, 12, GETDATE(), '2025-11-03 11:50:00', '2025-11-10 11:50:00', 'Weekly', 'Completed', 'CNF1200003'),
(364, 175, 42, 12, 2, GETDATE(), '2025-11-04 13:05:00', '2025-11-11 13:05:00', 'Weekly', 'Completed', 'CNF1200004'),
(365, 198, 56, 12, 12, GETDATE(), '2025-11-05 09:35:00', '2025-11-12 09:35:00', 'Weekly', 'Completed', 'CNF1200005'),
(366, 21, 63, 12, 3, GETDATE(), '2025-11-06 10:20:00', '2025-11-13 10:20:00', 'Weekly', 'Completed', 'CNF1200006'),
(367, 44, 78, 12, 12, GETDATE(), '2025-11-07 10:50:00', '2025-11-14 10:50:00', 'Weekly', 'Completed', 'CNF1200007'),
(368, 67, 82, 12, 4, GETDATE(), '2025-11-08 12:20:00', '2025-11-15 12:20:00', 'Weekly', 'Completed', 'CNF1200008'),
(369, 90, 95, 12, 12, GETDATE(), '2025-11-09 12:50:00', '2025-11-16 12:50:00', 'Weekly', 'Completed', 'CNF1200009'),
(370, 113, 104, 12, 5, GETDATE(), '2025-11-10 09:20:00', '2025-11-17 09:20:00', 'Weekly', 'Completed', 'CNF1200010'),
(371, 136, 112, 12, 12, GETDATE(), '2025-11-11 10:05:00', '2025-11-18 10:05:00', 'Weekly', 'Completed', 'CNF1200011'),
(372, 159, 19, 12, 6, GETDATE(), '2025-11-12 11:35:00', '2025-11-19 11:35:00', 'Weekly', 'Completed', 'CNF1200012'),
(373, 182, 26, 12, 12, GETDATE(), '2025-11-13 12:10:00', '2025-11-20 12:10:00', 'Weekly', 'Completed', 'CNF1200013'),
(374, 5, 33, 12, 7, GETDATE(), '2025-11-14 13:20:00', '2025-11-21 13:20:00', 'Weekly', 'Completed', 'CNF1200014'),
(375, 28, 42, 12, 12, GETDATE(), '2025-11-15 08:50:00', '2025-11-22 08:50:00', 'Weekly', 'Completed', 'CNF1200015'),
(376, 51, 56, 12, 8, GETDATE(), '2025-11-16 10:35:00', '2025-11-23 10:35:00', 'Weekly', 'Completed', 'CNF1200016'),
(377, 74, 63, 12, 12, GETDATE(), '2025-11-17 11:20:00', '2025-11-24 11:20:00', 'Weekly', 'Completed', 'CNF1200017'),
(378, 97, 78, 12, 9, GETDATE(), '2025-11-18 12:05:00', '2025-11-25 12:05:00', 'Weekly', 'Completed', 'CNF1200018'),
(379, 120, 82, 12, 12, GETDATE(), '2025-11-19 13:35:00', '2025-11-26 13:35:00', 'Weekly', 'Completed', 'CNF1200019'),
(380, 143, 95, 12, 10, GETDATE(), '2025-11-20 09:10:00', '2025-11-27 09:10:00', 'Weekly', 'Completed', 'CNF1200020'),
(381, 166, 104, 12, 12, GETDATE(), '2025-11-21 10:40:00', '2025-11-28 10:40:00', 'Weekly', 'Completed', 'CNF1200021'),
(382, 189, 112, 12, 11, GETDATE(), '2025-11-22 11:15:00', '2025-11-29 11:15:00', 'Weekly', 'Completed', 'CNF1200022'),
(383, 12, 19, 12, 12, GETDATE(), '2025-11-23 12:30:00', '2025-11-30 12:30:00', 'Weekly', 'Completed', 'CNF1200023'),
(384, 35, 26, 12, 13, GETDATE(), '2025-11-24 12:55:00', '2025-12-01 12:55:00', 'Weekly', 'Completed', 'CNF1200024'),
(385, 58, 33, 12, 12, GETDATE(), '2025-11-25 09:25:00', '2025-12-02 09:25:00', 'Weekly', 'Confirmed', 'CNF1200025'),
(386, 81, 42, 12, 14, GETDATE(), '2025-11-26 10:10:00', '2025-12-03 10:10:00', 'Weekly', 'Confirmed', 'CNF1200026'),
(387, 104, 56, 12, 12, GETDATE(), '2025-11-27 11:45:00', '2025-12-04 11:45:00', 'Weekly', 'Confirmed', 'CNF1200027'),
(388, 127, 63, 12, 15, GETDATE(), '2025-11-28 12:15:00', '2025-12-05 12:15:00', 'Weekly', 'Pending', 'CNF1200028'),
(389, 150, 78, 12, 12, GETDATE(), '2025-11-29 13:00:00', '2025-12-06 13:00:00', 'Weekly', 'Pending', 'CNF1200029'),
(390, 173, 82, 12, 16, GETDATE(), '2025-11-30 09:40:00', '2025-12-07 09:40:00', 'Weekly', 'Cancelled', 'CNF1200030'),

-- Branch 13 (30 reservations)
(391, 116, 20, 13, 13, GETDATE(), '2025-11-01 10:00:00', '2025-11-08 10:00:00', 'Weekly', 'Completed', 'CNF1300001'),
(392, 139, 27, 13, 1, GETDATE(), '2025-11-02 11:30:00', '2025-11-09 11:30:00', 'Weekly', 'Completed', 'CNF1300002'),
(393, 162, 34, 13, 13, GETDATE(), '2025-11-03 12:00:00', '2025-11-10 12:00:00', 'Weekly', 'Completed', 'CNF1300003'),
(394, 185, 43, 13, 2, GETDATE(), '2025-11-04 13:15:00', '2025-11-11 13:15:00', 'Weekly', 'Completed', 'CNF1300004'),
(395, 8, 57, 13, 13, GETDATE(), '2025-11-05 09:45:00', '2025-11-12 09:45:00', 'Weekly', 'Completed', 'CNF1300005'),
(396, 31, 64, 13, 3, GETDATE(), '2025-11-06 10:30:00', '2025-11-13 10:30:00', 'Weekly', 'Completed', 'CNF1300006'),
(397, 54, 79, 13, 13, GETDATE(), '2025-11-07 11:00:00', '2025-11-14 11:00:00', 'Weekly', 'Completed', 'CNF1300007'),
(398, 77, 83, 13, 4, GETDATE(), '2025-11-08 12:30:00', '2025-11-15 12:30:00', 'Weekly', 'Completed', 'CNF1300008'),
(399, 100, 96, 13, 13, GETDATE(), '2025-11-09 13:00:00', '2025-11-16 13:00:00', 'Weekly', 'Completed', 'CNF1300009'),
(400, 123, 105, 13, 5, GETDATE(), '2025-11-10 09:30:00', '2025-11-17 09:30:00', 'Weekly', 'Completed', 'CNF1300010'),
(401, 146, 8, 13, 13, GETDATE(), '2025-11-11 10:15:00', '2025-11-18 10:15:00', 'Weekly', 'Completed', 'CNF1300011'),
(402, 169, 20, 13, 6, GETDATE(), '2025-11-12 11:45:00', '2025-11-19 11:45:00', 'Weekly', 'Completed', 'CNF1300012'),
(403, 192, 27, 13, 13, GETDATE(), '2025-11-13 12:20:00', '2025-11-20 12:20:00', 'Weekly', 'Completed', 'CNF1300013'),
(404, 15, 34, 13, 7, GETDATE(), '2025-11-14 13:30:00', '2025-11-21 13:30:00', 'Weekly', 'Completed', 'CNF1300014'),
(405, 38, 43, 13, 13, GETDATE(), '2025-11-15 09:00:00', '2025-11-22 09:00:00', 'Weekly', 'Completed', 'CNF1300015'),
(406, 61, 57, 13, 8, GETDATE(), '2025-11-16 10:45:00', '2025-11-23 10:45:00', 'Weekly', 'Completed', 'CNF1300016'),
(407, 84, 64, 13, 13, GETDATE(), '2025-11-17 11:30:00', '2025-11-24 11:30:00', 'Weekly', 'Completed', 'CNF1300017'),
(408, 107, 79, 13, 9, GETDATE(), '2025-11-18 12:15:00', '2025-11-25 12:15:00', 'Weekly', 'Completed', 'CNF1300018'),
(409, 130, 83, 13, 13, GETDATE(), '2025-11-19 13:45:00', '2025-11-26 13:45:00', 'Weekly', 'Completed', 'CNF1300019'),
(410, 153, 96, 13, 10, GETDATE(), '2025-11-20 09:20:00', '2025-11-27 09:20:00', 'Weekly', 'Completed', 'CNF1300020'),
(411, 176, 105, 13, 13, GETDATE(), '2025-11-21 10:50:00', '2025-11-28 10:50:00', 'Weekly', 'Completed', 'CNF1300021'),
(412, 199, 8, 13, 11, GETDATE(), '2025-11-22 11:25:00', '2025-11-29 11:25:00', 'Weekly', 'Completed', 'CNF1300022'),
(413, 22, 20, 13, 13, GETDATE(), '2025-11-23 12:40:00', '2025-11-30 12:40:00', 'Weekly', 'Completed', 'CNF1300023'),
(414, 45, 27, 13, 12, GETDATE(), '2025-11-24 13:05:00', '2025-12-01 13:05:00', 'Weekly', 'Completed', 'CNF1300024'),
(415, 68, 34, 13, 13, GETDATE(), '2025-11-25 09:35:00', '2025-12-02 09:35:00', 'Weekly', 'Confirmed', 'CNF1300025'),
(416, 91, 43, 13, 14, GETDATE(), '2025-11-26 10:20:00', '2025-12-03 10:20:00', 'Weekly', 'Confirmed', 'CNF1300026'),
(417, 114, 57, 13, 13, GETDATE(), '2025-11-27 11:55:00', '2025-12-04 11:55:00', 'Weekly', 'Confirmed', 'CNF1300027'),
(418, 137, 64, 13, 15, GETDATE(), '2025-11-28 12:25:00', '2025-12-05 12:25:00', 'Weekly', 'Pending', 'CNF1300028'),
(419, 160, 79, 13, 13, GETDATE(), '2025-11-29 13:10:00', '2025-12-06 13:10:00', 'Weekly', 'Pending', 'CNF1300029'),
(420, 183, 83, 13, 16, GETDATE(), '2025-11-30 09:50:00', '2025-12-07 09:50:00', 'Weekly', 'Cancelled', 'CNF1300030'),

-- Branch 14 (30 reservations)
(421, 126, 21, 14, 14, GETDATE(), '2025-11-01 10:10:00', '2025-11-08 10:10:00', 'Weekly', 'Completed', 'CNF1400001'),
(422, 149, 28, 14, 1, GETDATE(), '2025-11-02 11:40:00', '2025-11-09 11:40:00', 'Weekly', 'Completed', 'CNF1400002'),
(423, 172, 35, 14, 14, GETDATE(), '2025-11-03 12:10:00', '2025-11-10 12:10:00', 'Weekly', 'Completed', 'CNF1400003'),
(424, 195, 44, 14, 2, GETDATE(), '2025-11-04 13:25:00', '2025-11-11 13:25:00', 'Weekly', 'Completed', 'CNF1400004'),
(425, 18, 58, 14, 14, GETDATE(), '2025-11-05 09:55:00', '2025-11-12 09:55:00', 'Weekly', 'Completed', 'CNF1400005'),
(426, 41, 65, 14, 3, GETDATE(), '2025-11-06 10:40:00', '2025-11-13 10:40:00', 'Weekly', 'Completed', 'CNF1400006'),
(427, 64, 80, 14, 14, GETDATE(), '2025-11-07 11:10:00', '2025-11-14 11:10:00', 'Weekly', 'Completed', 'CNF1400007'),
(428, 87, 84, 14, 4, GETDATE(), '2025-11-08 12:40:00', '2025-11-15 12:40:00', 'Weekly', 'Completed', 'CNF1400008'),
(429, 110, 97, 14, 14, GETDATE(), '2025-11-09 13:10:00', '2025-11-16 13:10:00', 'Weekly', 'Completed', 'CNF1400009'),
(430, 133, 106, 14, 5, GETDATE(), '2025-11-10 09:40:00', '2025-11-17 09:40:00', 'Weekly', 'Completed', 'CNF1400010'),
(431, 156, 9, 14, 14, GETDATE(), '2025-11-11 10:25:00', '2025-11-18 10:25:00', 'Weekly', 'Completed', 'CNF1400011'),
(432, 179, 21, 14, 6, GETDATE(), '2025-11-12 11:55:00', '2025-11-19 11:55:00', 'Weekly', 'Completed', 'CNF1400012'),
(433, 2, 28, 14, 14, GETDATE(), '2025-11-13 12:30:00', '2025-11-20 12:30:00', 'Weekly', 'Completed', 'CNF1400013'),
(434, 25, 35, 14, 7, GETDATE(), '2025-11-14 13:40:00', '2025-11-21 13:40:00', 'Weekly', 'Completed', 'CNF1400014'),
(435, 48, 44, 14, 14, GETDATE(), '2025-11-15 09:10:00', '2025-11-22 09:10:00', 'Weekly', 'Completed', 'CNF1400015'),
(436, 71, 58, 14, 8, GETDATE(), '2025-11-16 10:55:00', '2025-11-23 10:55:00', 'Weekly', 'Completed', 'CNF1400016'),
(437, 94, 65, 14, 14, GETDATE(), '2025-11-17 11:40:00', '2025-11-24 11:40:00', 'Weekly', 'Completed', 'CNF1400017'),
(438, 117, 80, 14, 9, GETDATE(), '2025-11-18 12:25:00', '2025-11-25 12:25:00', 'Weekly', 'Completed', 'CNF1400018'),
(439, 140, 84, 14, 14, GETDATE(), '2025-11-19 13:55:00', '2025-11-26 13:55:00', 'Weekly', 'Completed', 'CNF1400019'),
(440, 163, 97, 14, 10, GETDATE(), '2025-11-20 09:30:00', '2025-11-27 09:30:00', 'Weekly', 'Completed', 'CNF1400020'),
(441, 186, 106, 14, 14, GETDATE(), '2025-11-21 11:00:00', '2025-11-28 11:00:00', 'Weekly', 'Completed', 'CNF1400021'),
(442, 9, 9, 14, 11, GETDATE(), '2025-11-22 11:35:00', '2025-11-29 11:35:00', 'Weekly', 'Completed', 'CNF1400022'),
(443, 32, 21, 14, 14, GETDATE(), '2025-11-23 12:50:00', '2025-11-30 12:50:00', 'Weekly', 'Completed', 'CNF1400023'),
(444, 55, 28, 14, 12, GETDATE(), '2025-11-24 13:15:00', '2025-12-01 13:15:00', 'Weekly', 'Completed', 'CNF1400024'),
(445, 78, 35, 14, 14, GETDATE(), '2025-11-25 09:45:00', '2025-12-02 09:45:00', 'Weekly', 'Confirmed', 'CNF1400025'),
(446, 101, 44, 14, 13, GETDATE(), '2025-11-26 10:30:00', '2025-12-03 10:30:00', 'Weekly', 'Confirmed', 'CNF1400026'),
(447, 124, 58, 14, 14, GETDATE(), '2025-11-27 12:05:00', '2025-12-04 12:05:00', 'Weekly', 'Confirmed', 'CNF1400027'),
(448, 147, 65, 14, 15, GETDATE(), '2025-11-28 12:35:00', '2025-12-05 12:35:00', 'Weekly', 'Pending', 'CNF1400028'),
(449, 170, 80, 14, 14, GETDATE(), '2025-11-29 13:20:00', '2025-12-06 13:20:00', 'Weekly', 'Pending', 'CNF1400029'),
(450, 193, 84, 14, 16, GETDATE(), '2025-11-30 10:00:00', '2025-12-07 10:00:00', 'Weekly', 'Cancelled', 'CNF1400030'),

-- Branch 15 (30 reservations)
(451, 136, 22, 15, 15, GETDATE(), '2025-11-01 10:20:00', '2025-11-08 10:20:00', 'Weekly', 'Completed', 'CNF1500001'),
(452, 159, 29, 15, 1, GETDATE(), '2025-11-02 11:50:00', '2025-11-09 11:50:00', 'Weekly', 'Completed', 'CNF1500002'),
(453, 182, 36, 15, 15, GETDATE(), '2025-11-03 12:20:00', '2025-11-10 12:20:00', 'Weekly', 'Completed', 'CNF1500003'),
(454, 5, 45, 15, 2, GETDATE(), '2025-11-04 13:35:00', '2025-11-11 13:35:00', 'Weekly', 'Completed', 'CNF1500004'),
(455, 28, 59, 15, 15, GETDATE(), '2025-11-05 10:05:00', '2025-11-12 10:05:00', 'Weekly', 'Completed', 'CNF1500005'),
(456, 51, 66, 15, 3, GETDATE(), '2025-11-06 10:50:00', '2025-11-13 10:50:00', 'Weekly', 'Completed', 'CNF1500006'),
(457, 74, 81, 15, 15, GETDATE(), '2025-11-07 11:20:00', '2025-11-14 11:20:00', 'Weekly', 'Completed', 'CNF1500007'),
(458, 97, 85, 15, 4, GETDATE(), '2025-11-08 12:50:00', '2025-11-15 12:50:00', 'Weekly', 'Completed', 'CNF1500008'),
(459, 120, 98, 15, 15, GETDATE(), '2025-11-09 13:20:00', '2025-11-16 13:20:00', 'Weekly', 'Completed', 'CNF1500009'),
(460, 143, 107, 15, 5, GETDATE(), '2025-11-10 09:50:00', '2025-11-17 09:50:00', 'Weekly', 'Completed', 'CNF1500010'),
(461, 166, 10, 15, 15, GETDATE(), '2025-11-11 10:35:00', '2025-11-18 10:35:00', 'Weekly', 'Completed', 'CNF1500011'),
(462, 189, 22, 15, 6, GETDATE(), '2025-11-12 12:05:00', '2025-11-19 12:05:00', 'Weekly', 'Completed', 'CNF1500012'),
(463, 12, 29, 15, 15, GETDATE(), '2025-11-13 12:40:00', '2025-11-20 12:40:00', 'Weekly', 'Completed', 'CNF1500013'),
(464, 35, 36, 15, 7, GETDATE(), '2025-11-14 13:50:00', '2025-11-21 13:50:00', 'Weekly', 'Completed', 'CNF1500014'),
(465, 58, 45, 15, 15, GETDATE(), '2025-11-15 09:20:00', '2025-11-22 09:20:00', 'Weekly', 'Completed', 'CNF1500015'),
(466, 81, 59, 15, 8, GETDATE(), '2025-11-16 11:05:00', '2025-11-23 11:05:00', 'Weekly', 'Completed', 'CNF1500016'),
(467, 104, 66, 15, 15, GETDATE(), '2025-11-17 11:50:00', '2025-11-24 11:50:00', 'Weekly', 'Completed', 'CNF1500017'),
(468, 127, 81, 15, 9, GETDATE(), '2025-11-18 12:35:00', '2025-11-25 12:35:00', 'Weekly', 'Completed', 'CNF1500018'),
(469, 150, 85, 15, 15, GETDATE(), '2025-11-19 14:05:00', '2025-11-26 14:05:00', 'Weekly', 'Completed', 'CNF1500019'),
(470, 173, 98, 15, 10, GETDATE(), '2025-11-20 09:40:00', '2025-11-27 09:40:00', 'Weekly', 'Completed', 'CNF1500020'),
(471, 196, 107, 15, 15, GETDATE(), '2025-11-21 11:10:00', '2025-11-28 11:10:00', 'Weekly', 'Completed', 'CNF1500021'),
(472, 19, 10, 15, 11, GETDATE(), '2025-11-22 11:45:00', '2025-11-29 11:45:00', 'Weekly', 'Completed', 'CNF1500022'),
(473, 42, 22, 15, 15, GETDATE(), '2025-11-23 13:00:00', '2025-11-30 13:00:00', 'Weekly', 'Completed', 'CNF1500023'),
(474, 65, 29, 15, 12, GETDATE(), '2025-11-24 13:25:00', '2025-12-01 13:25:00', 'Weekly', 'Completed', 'CNF1500024'),
(475, 88, 36, 15, 15, GETDATE(), '2025-11-25 09:55:00', '2025-12-02 09:55:00', 'Weekly', 'Confirmed', 'CNF1500025'),
(476, 111, 45, 15, 13, GETDATE(), '2025-11-26 10:40:00', '2025-12-03 10:40:00', 'Weekly', 'Confirmed', 'CNF1500026'),
(477, 134, 59, 15, 15, GETDATE(), '2025-11-27 12:15:00', '2025-12-04 12:15:00', 'Weekly', 'Confirmed', 'CNF1500027'),
(478, 157, 66, 15, 14, GETDATE(), '2025-11-28 12:45:00', '2025-12-05 12:45:00', 'Weekly', 'Pending', 'CNF1500028'),
(479, 180, 81, 15, 15, GETDATE(), '2025-11-29 13:30:00', '2025-12-06 13:30:00', 'Weekly', 'Pending', 'CNF1500029'),
(480, 3, 85, 15, 16, GETDATE(), '2025-11-30 10:10:00', '2025-12-07 10:10:00', 'Weekly', 'Cancelled', 'CNF1500030'),

-- Branch 16 (30 reservations)
(481, 146, 23, 16, 16, GETDATE(), '2025-11-01 10:30:00', '2025-11-08 10:30:00', 'Weekly', 'Completed', 'CNF1600001'),
(482, 169, 30, 16, 1, GETDATE(), '2025-11-02 12:00:00', '2025-11-09 12:00:00', 'Weekly', 'Completed', 'CNF1600002'),
(483, 192, 37, 16, 16, GETDATE(), '2025-11-03 12:30:00', '2025-11-10 12:30:00', 'Weekly', 'Completed', 'CNF1600003'),
(484, 15, 46, 16, 2, GETDATE(), '2025-11-04 13:45:00', '2025-11-11 13:45:00', 'Weekly', 'Completed', 'CNF1600004'),
(485, 38, 60, 16, 16, GETDATE(), '2025-11-05 10:15:00', '2025-11-12 10:15:00', 'Weekly', 'Completed', 'CNF1600005'),
(486, 61, 67, 16, 3, GETDATE(), '2025-11-06 11:00:00', '2025-11-13 11:00:00', 'Weekly', 'Completed', 'CNF1600006'),
(487, 84, 82, 16, 16, GETDATE(), '2025-11-07 11:30:00', '2025-11-14 11:30:00', 'Weekly', 'Completed', 'CNF1600007'),
(488, 107, 86, 16, 4, GETDATE(), '2025-11-08 13:00:00', '2025-11-15 13:00:00', 'Weekly', 'Completed', 'CNF1600008'),
(489, 130, 99, 16, 16, GETDATE(), '2025-11-09 13:30:00', '2025-11-16 13:30:00', 'Weekly', 'Completed', 'CNF1600009'),
(490, 153, 108, 16, 5, GETDATE(), '2025-11-10 10:00:00', '2025-11-17 10:00:00', 'Weekly', 'Completed', 'CNF1600010'),
(491, 176, 11, 16, 16, GETDATE(), '2025-11-11 10:45:00', '2025-11-18 10:45:00', 'Weekly', 'Completed', 'CNF1600011'),
(492, 199, 23, 16, 6, GETDATE(), '2025-11-12 12:15:00', '2025-11-19 12:15:00', 'Weekly', 'Completed', 'CNF1600012'),
(493, 22, 30, 16, 16, GETDATE(), '2025-11-13 12:50:00', '2025-11-20 12:50:00', 'Weekly', 'Completed', 'CNF1600013'),
(494, 45, 37, 16, 7, GETDATE(), '2025-11-14 14:00:00', '2025-11-21 14:00:00', 'Weekly', 'Completed', 'CNF1600014'),
(495, 68, 46, 16, 16, GETDATE(), '2025-11-15 09:30:00', '2025-11-22 09:30:00', 'Weekly', 'Completed', 'CNF1600015'),
(496, 91, 60, 16, 8, GETDATE(), '2025-11-16 11:15:00', '2025-11-23 11:15:00', 'Weekly', 'Completed', 'CNF1600016'),
(497, 114, 67, 16, 16, GETDATE(), '2025-11-17 12:00:00', '2025-11-24 12:00:00', 'Weekly', 'Completed', 'CNF1600017'),
(498, 137, 82, 16, 9, GETDATE(), '2025-11-18 12:45:00', '2025-11-25 12:45:00', 'Weekly', 'Completed', 'CNF1600018'),
(499, 160, 86, 16, 16, GETDATE(), '2025-11-19 14:15:00', '2025-11-26 14:15:00', 'Weekly', 'Completed', 'CNF1600019'),
(500, 183, 99, 16, 10, GETDATE(), '2025-11-20 09:50:00', '2025-11-27 09:50:00', 'Weekly', 'Completed', 'CNF1600020'),
(501, 6, 108, 16, 16, GETDATE(), '2025-11-21 11:20:00', '2025-11-28 11:20:00', 'Weekly', 'Completed', 'CNF1600021'),
(502, 29, 11, 16, 11, GETDATE(), '2025-11-22 11:55:00', '2025-11-29 11:55:00', 'Weekly', 'Completed', 'CNF1600022'),
(503, 52, 23, 16, 16, GETDATE(), '2025-11-23 13:10:00', '2025-11-30 13:10:00', 'Weekly', 'Completed', 'CNF1600023'),
(504, 75, 30, 16, 12, GETDATE(), '2025-11-24 13:35:00', '2025-12-01 13:35:00', 'Weekly', 'Completed', 'CNF1600024'),
(505, 98, 37, 16, 16, GETDATE(), '2025-11-25 10:05:00', '2025-12-02 10:05:00', 'Weekly', 'Confirmed', 'CNF1600025'),
(506, 121, 46, 16, 13, GETDATE(), '2025-11-26 10:50:00', '2025-12-03 10:50:00', 'Weekly', 'Confirmed', 'CNF1600026'),
(507, 144, 60, 16, 16, GETDATE(), '2025-11-27 12:25:00', '2025-12-04 12:25:00', 'Weekly', 'Confirmed', 'CNF1600027'),
(508, 167, 67, 16, 14, GETDATE(), '2025-11-28 12:55:00', '2025-12-05 12:55:00', 'Weekly', 'Pending', 'CNF1600028'),
(509, 190, 82, 16, 16, GETDATE(), '2025-11-29 13:40:00', '2025-12-06 13:40:00', 'Weekly', 'Pending', 'CNF1600029'),
(510, 13, 86, 16, 15, GETDATE(), '2025-11-30 10:20:00', '2025-12-07 10:20:00', 'Weekly', 'Cancelled', 'CNF1600030');

SET IDENTITY_INSERT Rental.Reservation OFF;
GO

-----------------------------------
-- Sample Data Insertion into Reservation_Charge Table
----------------------------------------
INSERT INTO Rental.Reservation_Charge (reservation_id, charge_rate_id, quantity)
VALUES
(1,  1, 1),   -- GPS
(1,  2, 7),   -- Insurance (7 days)
(2,  1, 1),
(2,  2, 2),
(3,  1, 1),
(3,  3, 7),   -- Collision Damage Waiver
(4,  2, 2),
(4,  8, 1),   -- Cleaning Fee
(5,  1, 1),
(5,  2, 7),
(6,  1, 1),
(6,  5, 1),   -- Fuel Refill Fee
(7,  2, 5),
(8,  3, 2),
(9,  2, 7),
(10, 1, 1),
(10, 7, 1),   -- Roadside Assistance
(11, 1, 1),
(11, 4, 1),   -- Child Seat
(12, 8, 1),   -- Just cleaning fee
(13, 2, 7),
(13, 4, 2),   -- 2 Child Seats
(14, 5, 1),   -- Just fuel refill
(15, 1, 1),
(15, 2, 3),

--Family/Business Rentals (16–30)
(16, 2, 7),
(16, 4, 1),
(16, 8, 1),
(17, 1, 1),
(17, 2, 14),  -- 2-week rental
(17, 7, 1),
(18, 6, 7),   -- Luxury Vehicle Surcharge
(18, 2, 7),
(19, 3, 7),
(19, 8, 1),
(20, 1, 1),
(20, 2, 3),
(20, 5, 1),
(21, 2, 7),
(21, 6, 7),   -- Luxury surcharge
(22, 4, 1),   -- Just child seat
(23, 1, 1),
(23, 7, 1),
(24, 2, 14),
(24, 8, 1),
(25, 12, 1),  -- One-Way Fee
(25, 2, 7),
(26, 1, 1),
(26, 12, 1),
(27, 2, 21),  -- 3-week rental
(27, 6, 21),
(28, 8, 1),
(29, 2, 7),
(29, 5, 1),
(30, 12, 1),

--Mixed Service Levels (31–60)
(35, 1, 1),
(35, 2, 7),
(35, 14, 7),  -- Young Renter Surcharge (charge_rate_id 14)
(38, 10, 7),  -- Senior Discount
(38, 2, 7),
(42, 13, 1),  -- Hourly Late Penalty Fee (charge_rate_id 13)
(42, 8, 1),
(45, 8, 2),   -- Extra Cleaning Fee (instead of damage)
(48, 1, 1),
(48, 5, 1),   -- Fuel Fee (instead of lost key)
(52, 8, 3),   -- Heavy Cleaning (instead of smoking fee)
(55, 2, 7),
(55, 7, 1),   -- Roadside Assistance (instead of mileage)
(58, 1, 1),
(58, 13, 1),  -- Hourly Late Penalty Fee (charge_rate_id 13)
(62, 1, 2),   -- Extra GPS (instead of express checkin)
(65, 2, 14),
(65, 6, 7),   -- Luxury surcharge (instead of premium location)
(68, 12, 1),  -- One-Way Fee (instead of airport fee)
(68, 2, 3);
GO

--------------------------------------------------------
-- Insert Rentals from Completed Reservations
--------------------------------------------------------
INSERT INTO Rental.Rental
(reservation_id, customer_id, vehicle_id, rental_start, rental_end, security_deposit, rental_status)
SELECT
    r.reservation_id,
    r.customer_id,
    r.vehicle_id,
    r.pickup_datetime,
    r.return_datetime,
    300.00 AS security_deposit,
    'Active' AS rental_status
FROM Rental.Reservation r
WHERE r.reservation_status = 'Completed';
GO


------------------------------------------------------------
-- Example: Add rental-time charges for damaged/lated rentals
------------------------------------------------------------
INSERT INTO Finance.Rental_Charge_Detail (rental_id, charge_rate_id, charge_quantity)
VALUES
-- Basic penalty charges
(4, 13, 2),  -- Hourly Late Penalty (2 hours) - charge_rate_id 13
(4, 10, 1),  -- Electric Vehicle Charging
(6, 7, 1),   -- Roadside Assistance

-- Additional realistic rental charges
(1, 8, 1),   -- Cleaning fee for rental 1
(2, 5, 1),   -- Fuel refill fee for rental 2
(3, 13, 1),  -- Hourly Late Penalty Fee for rental 3 (charge_rate_id 13)
(5, 8, 2),   -- Extra cleaning fee (quantity 2) for rental 5
(7, 5, 1),   -- Fuel refill fee for rental 7
(8, 13, 1),  -- Hourly Late Penalty Fee for rental 8 (charge_rate_id 13)
(9, 8, 1),   -- Cleaning fee for rental 9
(10, 12, 1), -- One-way fee for rental 10
(11, 5, 2),  -- Fuel refill fee (quantity 2) for rental 11
(12, 8, 3),  -- Heavy cleaning fee (quantity 3) for rental 12
(13, 13, 2), -- Hourly Late Penalty Fee (2 hours) for rental 13 (charge_rate_id 13)
(14, 5, 1),  -- Fuel refill fee for rental 14
(15, 8, 1),  -- Cleaning fee for rental 15
(16, 14, 1), -- Young Renter Surcharge for rental 16 (charge_rate_id 14)
(17, 12, 1), -- One-way fee for rental 17
(18, 5, 3),  -- Multiple fuel refill fees for rental 18
(19, 8, 2),  -- Extra cleaning for rental 19
(20, 13, 1); -- Hourly Late Penalty Fee for rental 20 (charge_rate_id 13)
GO

-------------------------------------------------------
-- Insert Sample Data into Customer.Customer_Payment_Method
--------------------------------------------------------
INSERT INTO Customer.Customer_Payment_Method
(customer_id, payment_type, card_brand, payment_token, card_last_four,
 cardholder_first_name, cardholder_last_name, expiry_month, expiry_year)
VALUES
-- First 30 customers (matching actual customer data from CarRent Data.sql)
(1, 'Credit', 'Visa', 'tok_9a7f12b3d4e', '4821', 'James', 'Anderson', 5, 2028),
(2, 'Debit', 'MasterCard', 'tok_a1c2e3f4g5h', '1298', 'Sophia', 'Johnson', 7, 2027),
(3, 'Credit', 'Visa', 'tok_b3d4e5f6g7h', '7741', 'Liam', 'Thompson', 11, 2026),
(4, 'Credit', 'Amex', 'tok_c4f5g6h7i8j', '3345', 'Olivia', 'Brown', 9, 2029),
(5, 'Debit', 'Visa', 'tok_d5g6h7i8j9k', '5521', 'Noah', 'Miller', 4, 2027),
(6, 'Credit', 'Discover', 'tok_e6h7i8j9k0l', '2210', 'Emma', 'Davis', 8, 2028),
(7, 'Credit', 'Visa', 'tok_f7i8j9k0l1m', '9473', 'Aiden', 'Wilson', 10, 2026),
(8, 'Debit', 'MasterCard', 'tok_g8j9k0l1m2n', '7850', 'Isabella', 'Taylor', 3, 2029),
(9, 'Credit', 'Amex', 'tok_h9k0l1m2n3o', '1189', 'Lucas', 'White', 6, 2028),
(10, 'Credit', 'Visa', 'tok_i0l1m2n3o4p', '9045', 'Mia', 'Martinez', 12, 2026),
(11, 'Credit', 'MasterCard', 'tok_j1m2n3o4p5q', '5562', 'Ethan', 'Clark', 9, 2029),
(12, 'Debit', 'Visa', 'tok_k2n3o4p5q6r', '8209', 'Ava', 'Lewis', 4, 2028),
(13, 'Credit', 'Discover', 'tok_l3o4p5q6r7s', '2904', 'Mason', 'Hall', 1, 2027),
(14, 'Credit', 'Visa', 'tok_m4p5q6r7s8t', '1193', 'Charlotte', 'Allen', 8, 2029),
(15, 'Debit', 'Visa', 'tok_n5q6r7s8t9u', '3408', 'Logan', 'Young', 11, 2026),
(16, 'Credit', 'MasterCard', 'tok_o6r7s8t9u0v', '6725', 'Amelia', 'Hernandez', 7, 2027),
(17, 'Credit', 'Visa', 'tok_p7s8t9u0v1w', '9321', 'Elijah', 'King', 10, 2028),
(18, 'Credit', 'Amex', 'tok_q8t9u0v1w2x', '0058', 'Harper', 'Wright', 2, 2029),
(19, 'Debit', 'Visa', 'tok_r9u0v1w2x3y', '7654', 'Benjamin', 'Lopez', 9, 2027),
(20, 'Credit', 'Discover', 'tok_s0v1w2x3y4z', '4730', 'Evelyn', 'Scott', 5, 2028),
(21, 'Credit', 'Visa', 'tok_t1w2x3y4z5a', '8899', 'William', 'Green', 3, 2026),
(22, 'Debit', 'MasterCard', 'tok_u2x3y4z5a6b', '2784', 'Abigail', 'Adams', 12, 2028),
(23, 'Credit', 'Visa', 'tok_v3y4z5a6b7c', '1460', 'Alexander', 'Nelson', 1, 2029),
(24, 'Credit', 'Amex', 'tok_w4z5a6b7c8d', '9033', 'Ella', 'Baker', 6, 2027),
(25, 'Debit', 'Visa', 'tok_x5a6b7c8d9e', '6722', 'Daniel', 'Hill', 8, 2029),
(26, 'Credit', 'Visa', 'tok_y6b8d9e0f1g', '1234', 'Scarlett', 'Rivera', 9, 2028),
(27, 'Debit', 'MasterCard', 'tok_z7c9e0f1g2h', '5678', 'Henry', 'Campbell', 3, 2027),
(28, 'Credit', 'Amex', 'tok_a8d0f1g2h3i', '9012', 'Emily', 'Mitchell', 5, 2029),
(29, 'Credit', 'Discover', 'tok_b9e1g2h3i4j', '3456', 'Jack', 'Perez', 7, 2028),
(30, 'Debit', 'Visa', 'tok_c0f2h3i4j5k', '7890', 'Grace', 'Roberts', 2, 2026),

-- Additional 50 customers (31-80)
(31, 'Credit', 'Visa', 'tok_d1g3h4i5j6k', '2468', 'Michael', 'Rodriguez', 10, 2027),
(32, 'Debit', 'MasterCard', 'tok_e2h4i5j6k7l', '1357', 'Victoria', 'Cooper', 11, 2028),
(33, 'Credit', 'Amex', 'tok_f3i5j6k7l8m', '9753', 'Samuel', 'Ward', 4, 2029),
(34, 'Credit', 'Discover', 'tok_g4j6k7l8m9n', '8642', 'Lily', 'Turner', 6, 2026),
(35, 'Debit', 'Visa', 'tok_h5k7l8m9n0o', '7531', 'David', 'Phillips', 8, 2027),
(36, 'Credit', 'Visa', 'tok_i6l8m9n0o1p', '4629', 'Zoe', 'Parker', 12, 2028),
(37, 'Credit', 'MasterCard', 'tok_j7m9n0o1p2q', '3518', 'Christopher', 'Evans', 3, 2029),
(38, 'Debit', 'Discover', 'tok_k8n0o1p2q3r', '2407', 'Nora', 'Edwards', 7, 2026),
(39, 'Credit', 'Visa', 'tok_l9o1p2q3r4s', '1396', 'Ryan', 'Collins', 9, 2027),
(40, 'Credit', 'Amex', 'tok_m0p2q3r4s5t', '0285', 'Hannah', 'Stewart', 1, 2028),
(41, 'Debit', 'Visa', 'tok_n1q3r4s5t6u', '9174', 'Brandon', 'Sanchez', 5, 2029),
(42, 'Credit', 'MasterCard', 'tok_o2r4s5t6u7v', '8063', 'Chloe', 'Morris', 11, 2026),
(43, 'Credit', 'Discover', 'tok_p3s5t6u7v8w', '6952', 'Tyler', 'Rogers', 2, 2027),
(44, 'Debit', 'Visa', 'tok_q4t6u7v8w9x', '5841', 'Natalie', 'Reed', 6, 2028),
(45, 'Credit', 'Visa', 'tok_r5u7v8w9x0y', '4730', 'Austin', 'Cook', 10, 2029),
(46, 'Credit', 'Amex', 'tok_s6v8w9x0y1z', '3619', 'Madison', 'Bailey', 4, 2026),
(47, 'Debit', 'MasterCard', 'tok_t7w9x0y1z2a', '2508', 'Jonathan', 'Rivera', 8, 2027),
(48, 'Credit', 'Discover', 'tok_u8x0y1z2a3b', '1497', 'Leah', 'Cox', 12, 2028),
(49, 'Credit', 'Visa', 'tok_v9y1z2a3b4c', '0386', 'Caleb', 'Ward', 3, 2029),
(50, 'Debit', 'Visa', 'tok_w0z2a3b4c5d', '9275', 'Rachel', 'Flores', 7, 2026),
(51, 'Credit', 'MasterCard', 'tok_x1a3b4c5d6e', '8164', 'Kevin', 'Washington', 11, 2027),
(52, 'Credit', 'Amex', 'tok_y2b4c5d6e7f', '7053', 'Sarah', 'Butler', 5, 2028),
(53, 'Debit', 'Discover', 'tok_z3c5d6e7f8g', '5942', 'Jeremy', 'Simmons', 9, 2029),
(54, 'Credit', 'Visa', 'tok_a4d6e7f8g9h', '4831', 'Kimberly', 'Foster', 1, 2026),
(55, 'Credit', 'MasterCard', 'tok_b5e7f8g9h0i', '3720', 'Matthew', 'Gonzales', 6, 2027),
(56, 'Debit', 'Visa', 'tok_c6f8g9h0i1j', '2619', 'Amanda', 'Bryant', 10, 2028),
(57, 'Credit', 'Amex', 'tok_d7g9h0i1j2k', '1508', 'Nicholas', 'Alexander', 2, 2029),
(58, 'Credit', 'Discover', 'tok_e8h0i1j2k3l', '0497', 'Jessica', 'Russell', 8, 2026),
(59, 'Debit', 'Visa', 'tok_f9i1j2k3l4m', '9386', 'Anthony', 'Griffin', 12, 2027),
(60, 'Credit', 'MasterCard', 'tok_g0j2k3l4m5n', '8275', 'Ashley', 'Diaz', 4, 2028),
(61, 'Credit', 'Visa', 'tok_h1k3l4m5n6o', '7164', 'Jacob', 'Hayes', 7, 2029),
(62, 'Debit', 'Amex', 'tok_i2l4m5n6o7p', '6053', 'Stephanie', 'Myers', 11, 2026),
(63, 'Credit', 'Discover', 'tok_j3m5n6o7p8q', '4942', 'Joshua', 'Ford', 3, 2027),
(64, 'Credit', 'Visa', 'tok_k4n6o7p8q9r', '3831', 'Melissa', 'Hamilton', 9, 2028),
(65, 'Debit', 'MasterCard', 'tok_l5o7p8q9r0s', '2720', 'Andrew', 'Graham', 5, 2029),
(66, 'Credit', 'Amex', 'tok_m6p8q9r0s1t', '1619', 'Megan', 'Sullivan', 1, 2026),
(67, 'Credit', 'Discover', 'tok_n7q9r0s1t2u', '0508', 'Eric', 'Wallace', 6, 2027),
(68, 'Debit', 'Visa', 'tok_o8r0s1t2u3v', '9497', 'Lauren', 'Woods', 10, 2028),
(69, 'Credit', 'MasterCard', 'tok_p9s1t2u3v4w', '8386', 'Steven', 'Cole', 2, 2029),
(70, 'Credit', 'Visa', 'tok_q0t2u3v4w5x', '7275', 'Nicole', 'West', 8, 2026),
(71, 'Debit', 'Amex', 'tok_r1u3v4w5x6y', '6164', 'Brian', 'Jordan', 12, 2027),
(72, 'Credit', 'Discover', 'tok_s2v4w5x6y7z', '5053', 'Amber', 'Owens', 4, 2028),
(73, 'Credit', 'Visa', 'tok_t3w5x6y7z8a', '3942', 'Justin', 'Reynolds', 7, 2029),
(74, 'Debit', 'MasterCard', 'tok_u4x6y7z8a9b', '2831', 'Heather', 'Fisher', 11, 2026),
(75, 'Credit', 'Amex', 'tok_v5y7z8a9b0c', '1720', 'Adam', 'Ellis', 3, 2027),
(76, 'Credit', 'Discover', 'tok_w6z8a9b0c1d', '0619', 'Danielle', 'Harrison', 9, 2028),
(77, 'Debit', 'Visa', 'tok_x7a9b0c1d2e', '9508', 'Robert', 'Gibson', 5, 2029),
(78, 'Credit', 'MasterCard', 'tok_y8b0c1d2e3f', '8497', 'Crystal', 'McDonald', 1, 2026),
(79, 'Credit', 'Visa', 'tok_z9c1d2e3f4g', '7386', 'Mark', 'Cruz', 6, 2027),
(80, 'Debit', 'Amex', 'tok_a0d2e3f4g5h', '6275', 'Tiffany', 'Marshall', 10, 2028),

-- Final 120 customers (81-200) - Using names from remaining customer data
(81, 'Credit', 'Discover', 'tok_b1e3f4g5h6i', '5164', 'Connor', 'Williams', 2, 2029),
(82, 'Credit', 'Visa', 'tok_c2f4g5h6i7j', '4053', 'Isabella', 'Davis', 8, 2026),
(83, 'Debit', 'MasterCard', 'tok_d3g5h6i7j8k', '2942', 'Mason', 'Johnson', 12, 2027),
(84, 'Credit', 'Amex', 'tok_e4h6i7j8k9l', '1831', 'Sophia', 'Brown', 4, 2028),
(85, 'Credit', 'Discover', 'tok_f5i7j8k9l0m', '0720', 'Ethan', 'Jones', 7, 2029),
(86, 'Debit', 'Visa', 'tok_g6j8k9l0m1n', '9619', 'Olivia', 'Miller', 11, 2026),
(87, 'Credit', 'MasterCard', 'tok_h7k9l0m1n2o', '8508', 'Liam', 'Wilson', 3, 2027),
(88, 'Credit', 'Amex', 'tok_i8l0m1n2o3p', '7497', 'Emma', 'Moore', 9, 2028),
(89, 'Debit', 'Discover', 'tok_j9m1n2o3p4q', '6386', 'Noah', 'Taylor', 5, 2029),
(90, 'Credit', 'Visa', 'tok_k0n2o3p4q5r', '5275', 'Ava', 'Anderson', 1, 2026),
(91, 'Credit', 'MasterCard', 'tok_l1o3p4q5r6s', '4164', 'Jacob', 'Thomas', 6, 2027),
(92, 'Debit', 'Amex', 'tok_m2p4q5r6s7t', '3053', 'Mia', 'Jackson', 10, 2028),
(93, 'Credit', 'Discover', 'tok_n3q5r6s7t8u', '1942', 'William', 'White', 2, 2029),
(94, 'Credit', 'Visa', 'tok_o4r6s7t8u9v', '0831', 'Charlotte', 'Harris', 8, 2026),
(95, 'Debit', 'MasterCard', 'tok_p5s7t8u9v0w', '9720', 'Benjamin', 'Martin', 12, 2027),
(96, 'Credit', 'Amex', 'tok_q6t8u9v0w1x', '8619', 'Amelia', 'Thompson', 4, 2028),
(97, 'Credit', 'Discover', 'tok_r7u9v0w1x2y', '7508', 'James', 'Garcia', 7, 2029),
(98, 'Debit', 'Visa', 'tok_s8v0w1x2y3z', '6497', 'Harper', 'Martinez', 11, 2026),
(99, 'Credit', 'MasterCard', 'tok_t9w1x2y3z4a', '5386', 'Alexander', 'Robinson', 3, 2027),
(100, 'Credit', 'Amex', 'tok_u0x2y3z4a5b', '4275', 'Evelyn', 'Clark', 9, 2028),
(101, 'Debit', 'Discover', 'tok_v1y3z4a5b6c', '3164', 'Michael', 'Rodriguez', 5, 2029),
(102, 'Credit', 'Visa', 'tok_w2z4a5b6c7d', '2053', 'Abigail', 'Lewis', 1, 2026),
(103, 'Credit', 'MasterCard', 'tok_x3a5b6c7d8e', '0942', 'Elijah', 'Lee', 6, 2027),
(104, 'Debit', 'Amex', 'tok_y4b6c7d8e9f', '9831', 'Emily', 'Walker', 10, 2028),
(105, 'Credit', 'Discover', 'tok_z5c7d8e9f0g', '8720', 'Daniel', 'Hall', 2, 2029),
(106, 'Credit', 'Visa', 'tok_a6d8e9f0g1h', '7619', 'Elizabeth', 'Allen', 8, 2026),
(107, 'Debit', 'MasterCard', 'tok_b7e9f0g1h2i', '6508', 'Matthew', 'Young', 12, 2027),
(108, 'Credit', 'Amex', 'tok_c8f0g1h2i3j', '5497', 'Sofia', 'Hernandez', 4, 2028),
(109, 'Credit', 'Discover', 'tok_d9g1h2i3j4k', '4386', 'Anthony', 'King', 7, 2029),
(110, 'Debit', 'Visa', 'tok_e0h2i3j4k5l', '3275', 'Avery', 'Wright', 11, 2026),
(111, 'Credit', 'MasterCard', 'tok_f1i3j4k5l6m', '2164', 'Joshua', 'Lopez', 3, 2027),
(112, 'Credit', 'Amex', 'tok_g2j4k5l6m7n', '1053', 'Ella', 'Hill', 9, 2028),
(113, 'Debit', 'Discover', 'tok_h3k5l6m7n8o', '0942', 'Andrew', 'Scott', 5, 2029),
(114, 'Credit', 'Visa', 'tok_i4l6m7n8o9p', '9831', 'Scarlett', 'Green', 1, 2026),
(115, 'Credit', 'MasterCard', 'tok_j5m7n8o9p0q', '8720', 'Christopher', 'Adams', 6, 2027),
(116, 'Debit', 'Amex', 'tok_k6n8o9p0q1r', '7619', 'Victoria', 'Baker', 10, 2028),
(117, 'Credit', 'Discover', 'tok_l7o9p0q1r2s', '6508', 'Joseph', 'Gonzalez', 2, 2029),
(118, 'Credit', 'Visa', 'tok_m8p0q1r2s3t', '5497', 'Grace', 'Nelson', 8, 2026),
(119, 'Debit', 'MasterCard', 'tok_n9q1r2s3t4u', '4386', 'David', 'Carter', 12, 2027),
(120, 'Credit', 'Amex', 'tok_o0r2s3t4u5v', '3275', 'Chloe', 'Mitchell', 4, 2028),
(121, 'Credit', 'Discover', 'tok_p1s3t4u5v6w', '2164', 'Samuel', 'Perez', 7, 2029),
(122, 'Debit', 'Visa', 'tok_q2t4u5v6w7x', '1053', 'Zoey', 'Roberts', 11, 2026),
(123, 'Credit', 'MasterCard', 'tok_r3u5v6w7x8y', '9942', 'John', 'Turner', 3, 2027),
(124, 'Credit', 'Amex', 'tok_s4v6w7x8y9z', '8831', 'Penelope', 'Phillips', 9, 2028),
(125, 'Debit', 'Discover', 'tok_t5w7x8y9z0a', '7720', 'Luke', 'Campbell', 5, 2029),
(126, 'Credit', 'Visa', 'tok_u6x8y9z0a1b', '6619', 'Layla', 'Parker', 1, 2026),
(127, 'Credit', 'MasterCard', 'tok_v7y9z0a1b2c', '5508', 'Ryan', 'Evans', 6, 2027),
(128, 'Debit', 'Amex', 'tok_w8z0a1b2c3d', '4497', 'Nora', 'Edwards', 10, 2028),
(129, 'Credit', 'Discover', 'tok_x9a1b2c3d4e', '3386', 'Nathan', 'Collins', 2, 2029),
(130, 'Credit', 'Visa', 'tok_y0b2c3d4e5f', '2275', 'Hazel', 'Stewart', 8, 2026),
(131, 'Debit', 'MasterCard', 'tok_z1c3d4e5f6g', '1164', 'Caleb', 'Sanchez', 12, 2027),
(132, 'Credit', 'Amex', 'tok_a2d4e5f6g7h', '0053', 'Aria', 'Morris', 4, 2028),
(133, 'Credit', 'Discover', 'tok_b3e5f6g7h8i', '9942', 'Isaiah', 'Rogers', 7, 2029),
(134, 'Debit', 'Visa', 'tok_c4f6g7h8i9j', '8831', 'Violet', 'Reed', 11, 2026),
(135, 'Credit', 'MasterCard', 'tok_d5g7h8i9j0k', '7720', 'Thomas', 'Cook', 3, 2027),
(136, 'Credit', 'Amex', 'tok_e6h8i9j0k1l', '6619', 'Luna', 'Bailey', 9, 2028),
(137, 'Debit', 'Discover', 'tok_f7i9j0k1l2m', '5508', 'Jordan', 'Rivera', 5, 2029),
(138, 'Credit', 'Visa', 'tok_g8j0k1l2m3n', '4497', 'Stella', 'Cooper', 1, 2026),
(139, 'Credit', 'MasterCard', 'tok_h9k1l2m3n4o', '3386', 'Jeremiah', 'Richardson', 6, 2027),
(140, 'Debit', 'Amex', 'tok_i0l2m3n4o5p', '2275', 'Aurora', 'Cox', 10, 2028),
(141, 'Credit', 'Discover', 'tok_j1m3n4o5p6q', '1164', 'Cameron', 'Ward', 2, 2029),
(142, 'Credit', 'Visa', 'tok_k2n4o5p6q7r', '0053', 'Savannah', 'Torres', 8, 2026),
(143, 'Debit', 'MasterCard', 'tok_l3o5p6q7r8s', '9942', 'Adrian', 'Peterson', 12, 2027),
(144, 'Credit', 'Amex', 'tok_m4p6q7r8s9t', '8831', 'Brooklyn', 'Gray', 4, 2028),
(145, 'Credit', 'Discover', 'tok_n5q7r8s9t0u', '7720', 'Wyatt', 'Ramirez', 7, 2029),
(146, 'Debit', 'Visa', 'tok_o6r8s9t0u1v', '6619', 'Bella', 'James', 11, 2026),
(147, 'Credit', 'MasterCard', 'tok_p7s9t0u1v2w', '5508', 'Hunter', 'Watson', 3, 2027),
(148, 'Credit', 'Amex', 'tok_q8t0u1v2w3x', '4497', 'Claire', 'Brooks', 9, 2028),
(149, 'Debit', 'Discover', 'tok_r9u1v2w3x4y', '3386', 'Jack', 'Kelly', 5, 2029),
(150, 'Credit', 'Visa', 'tok_s0v2w3x4y5z', '2275', 'Skylar', 'Sanders', 1, 2026),
(151, 'Credit', 'MasterCard', 'tok_t1w3x4y5z6a', '1164', 'Owen', 'Price', 6, 2027),
(152, 'Debit', 'Amex', 'tok_u2x4y5z6a7b', '0053', 'Addison', 'Bennett', 10, 2028),
(153, 'Credit', 'Discover', 'tok_v3y5z6a7b8c', '9942', 'Grayson', 'Wood', 2, 2029),
(154, 'Credit', 'Visa', 'tok_w4z6a7b8c9d', '8831', 'Lillian', 'Barnes', 8, 2026),
(155, 'Debit', 'MasterCard', 'tok_x5a7b8c9d0e', '7720', 'Eli', 'Ross', 12, 2027),
(156, 'Credit', 'Amex', 'tok_y6b8c9d0e1f', '6619', 'Natalie', 'Henderson', 4, 2028),
(157, 'Credit', 'Discover', 'tok_z7c9d0e1f2g', '5508', 'Aaron', 'Coleman', 7, 2029),
(158, 'Debit', 'Visa', 'tok_a8d0e1f2g3h', '4497', 'Leah', 'Jenkins', 11, 2026),
(159, 'Credit', 'MasterCard', 'tok_b9e1f2g3h4i', '3386', 'Lucas', 'Perry', 3, 2027),
(160, 'Credit', 'Amex', 'tok_c0f2g3h4i5j', '2275', 'Hannah', 'Powell', 9, 2028),
(161, 'Debit', 'Discover', 'tok_d1g3h4i5j6k', '1164', 'Henry', 'Long', 5, 2029),
(162, 'Credit', 'Visa', 'tok_e2h4i5j6k7l', '0053', 'Zoe', 'Patterson', 1, 2026),
(163, 'Credit', 'MasterCard', 'tok_f3i5j6k7l8m', '9942', 'Sebastian', 'Hughes', 6, 2027),
(164, 'Debit', 'Amex', 'tok_g4j6k7l8m9n', '8831', 'Aubrey', 'Flores', 10, 2028),
(165, 'Credit', 'Discover', 'tok_h5k7l8m9n0o', '7720', 'Christian', 'Washington', 2, 2029),
(166, 'Credit', 'Visa', 'tok_i6l8m9n0o1p', '6619', 'Anna', 'Butler', 8, 2026),
(167, 'Debit', 'MasterCard', 'tok_j7m9n0o1p2q', '5508', 'Jaxon', 'Simmons', 12, 2027),
(168, 'Credit', 'Amex', 'tok_k8n0o1p2q3r', '4497', 'Maya', 'Foster', 4, 2028),
(169, 'Credit', 'Discover', 'tok_l9o1p2q3r4s', '3386', 'Ian', 'Gonzales', 7, 2029),
(170, 'Debit', 'Visa', 'tok_m0p2q3r4s5t', '2275', 'Naomi', 'Bryant', 11, 2026),
(171, 'Credit', 'MasterCard', 'tok_n1q3r4s5t6u', '1164', 'Cooper', 'Alexander', 3, 2027),
(172, 'Credit', 'Amex', 'tok_o2r4s5t6u7v', '0053', 'Audrey', 'Russell', 9, 2028),
(173, 'Debit', 'Discover', 'tok_p3s5t6u7v8w', '9942', 'Colton', 'Griffin', 5, 2029),
(174, 'Credit', 'Visa', 'tok_q4t6u7v8w9x', '8831', 'Samantha', 'Diaz', 1, 2026),
(175, 'Credit', 'MasterCard', 'tok_r5u7v8w9x0y', '7720', 'Parker', 'Hayes', 6, 2027),
(176, 'Debit', 'Amex', 'tok_s6v8w9x0y1z', '6619', 'Sarah', 'Myers', 10, 2028),
(177, 'Credit', 'Discover', 'tok_t7w9x0y1z2a', '5508', 'Blake', 'Ford', 2, 2029),
(178, 'Credit', 'Visa', 'tok_u8x0y1z2a3b', '4497', 'Aaliyah', 'Hamilton', 8, 2026),
(179, 'Debit', 'MasterCard', 'tok_v9y1z2a3b4c', '3386', 'Xavier', 'Graham', 12, 2027),
(180, 'Credit', 'Amex', 'tok_w0z2a3b4c5d', '2275', 'Allison', 'Sullivan', 4, 2028),
(181, 'Credit', 'Discover', 'tok_x1a3b4c5d6e', '1164', 'Jason', 'Wallace', 7, 2029),
(182, 'Debit', 'Visa', 'tok_y2b4c5d6e7f', '0053', 'Maria', 'Woods', 11, 2026),
(183, 'Credit', 'MasterCard', 'tok_z3c5d6e7f8g', '9942', 'Easton', 'Cole', 3, 2027),
(184, 'Credit', 'Amex', 'tok_a4d6e7f8g9h', '8831', 'Madelyn', 'West', 9, 2028),
(185, 'Debit', 'Discover', 'tok_b5e7f8g9h0i', '7720', 'Jose', 'Jordan', 5, 2029),
(186, 'Credit', 'Visa', 'tok_c6f8g9h0i1j', '6619', 'Kaylee', 'Owens', 1, 2026),
(187, 'Credit', 'MasterCard', 'tok_d7g9h0i1j2k', '5508', 'Lincoln', 'Reynolds', 6, 2027),
(188, 'Debit', 'Amex', 'tok_e8h0i1j2k3l', '4497', 'Gabriella', 'Fisher', 10, 2028),
(189, 'Credit', 'Discover', 'tok_f9i1j2k3l4m', '3386', 'Carter', 'Ellis', 2, 2029),
(190, 'Credit', 'Visa', 'tok_g0j2k3l4m5n', '2275', 'Ariana', 'Harrison', 8, 2026),
(191, 'Debit', 'MasterCard', 'tok_h1k3l4m5n6o', '1164', 'Gavin', 'Gibson', 12, 2027),
(192, 'Credit', 'Amex', 'tok_i2l4m5n6o7p', '0053', 'Genesis', 'McDonald', 4, 2028),
(193, 'Credit', 'Discover', 'tok_j3m5n6o7p8q', '9942', 'Juan', 'Cruz', 7, 2029),
(194, 'Debit', 'Visa', 'tok_k4n6o7p8q9r', '8831', 'Serenity', 'Marshall', 11, 2026),
(195, 'Credit', 'MasterCard', 'tok_l5o7p8q9r0s', '7720', 'Carson', 'Ortiz', 3, 2027),
(196, 'Credit', 'Amex', 'tok_m6p8q9r0s1t', '6619', 'Sadie', 'Gomez', 9, 2028),
(197, 'Debit', 'Discover', 'tok_n7q9r0s1t2u', '5508', 'Brody', 'Murray', 5, 2029),
(198, 'Credit', 'Visa', 'tok_o8r0s1t2u3v', '4497', 'Piper', 'Freeman', 1, 2026),
(199, 'Credit', 'MasterCard', 'tok_p9s1t2u3v4w', '3386', 'Tristan', 'Wells', 6, 2027),
(200, 'Debit', 'Amex', 'tok_q0t2u3v4w5x', '2275', 'Mackenzie', 'Webb', 10, 2028);
GO

------------------------------------------------------------
-- Complete all active rentals (trigger auto-finalizes totals)
------------------------------------------------------------
UPDATE Rental.Rental
SET 
    rental_status = 'Completed',
    updated_at = GETDATE()
WHERE rental_status = 'Active';
GO

------------------------------------------------------------
-- Insert Refund Records for Existing Payments (1–50)
------------------------------------------------------------
INSERT INTO Finance.Refund (
    payment_id, refund_date, refund_amount, refund_reason, refund_status
)
VALUES
-- 🔹 Security Deposit Refunds (Full)
(1, GETDATE(), 400.00, 'Security deposit refund - vehicle returned in good condition', 'Processed'),
(2, GETDATE(), 350.00, 'Security deposit refund - vehicle returned in good condition', 'Processed'),
(3, GETDATE(), 300.00, 'Security deposit refund - vehicle returned in good condition', 'Processed'),
(4, GETDATE(), 450.00, 'Security deposit refund - vehicle returned in good condition', 'Processed'),
(5, GETDATE(), 500.00, 'Security deposit refund - vehicle returned in good condition', 'Processed'),
(6, GETDATE(), 320.00, 'Security deposit refund - vehicle returned in good condition', 'Processed'),
(7, GETDATE(), 275.00, 'Security deposit refund - vehicle returned in good condition', 'Processed'),
(8, GETDATE(), 350.00, 'Security deposit refund - vehicle returned in good condition', 'Processed'),
(9, GETDATE(), 300.00, 'Security deposit refund - vehicle returned in good condition', 'Processed'),
(10, GETDATE(), 425.00, 'Security deposit refund - vehicle returned in good condition', 'Processed'),

-- 🔹 Partial Deposit Refunds
(11, GETDATE(), 200.00, 'Partial refund - scratch fee deducted from deposit', 'Processed'),
(12, GETDATE(), 180.00, 'Partial refund - minor cleaning charge deducted', 'Processed'),
(13, GETDATE(), 250.00, 'Partial refund - small dent repair fee deducted', 'Processed'),
(14, GETDATE(), 225.00, 'Partial refund - windshield chip fee deducted', 'Processed'),
(15, GETDATE(), 240.00, 'Partial refund - GPS mount replacement deducted', 'Processed'),
(16, GETDATE(), 190.00, 'Partial refund - fuel surcharge adjustment', 'Processed'),
(17, GETDATE(), 230.00, 'Partial refund - toll charge adjustment', 'Processed'),
(18, GETDATE(), 210.00, 'Partial refund - mileage discrepancy corrected', 'Processed'),
(19, GETDATE(), 175.00, 'Partial refund - late fee reversed', 'Processed'),
(20, GETDATE(), 200.00, 'Partial refund - insurance difference credited', 'Processed'),

-- 🔹 Early Return Refunds
(21, GETDATE(), 120.00, 'Early return refund - 1 unused day credited', 'Processed'),
(22, GETDATE(), 140.00, 'Early return refund - 2 unused days credited', 'Processed'),
(23, GETDATE(), 160.00, 'Early return refund - unused rental hours credited', 'Processed'),
(24, GETDATE(), 100.00, 'Early return refund - 1 unused day credited', 'Processed'),
(25, GETDATE(), 180.00, 'Early return refund - 2 unused days credited', 'Processed'),
(26, GETDATE(), 200.00, 'Early return refund - 3 unused days credited', 'Processed'),
(27, GETDATE(), 110.00, 'Early return refund - 1 unused day credited', 'Processed'),
(28, GETDATE(), 130.00, 'Early return refund - early vehicle drop-off', 'Processed'),
(29, GETDATE(), 95.00, 'Early return refund - mileage limit unused', 'Processed'),
(30, GETDATE(), 150.00, 'Early return refund - 2 unused days credited', 'Processed'),

-- 🔹 Service Issue Refunds
(31, GETDATE(), 100.00, 'Service issue refund - delay due to vehicle maintenance', 'Processed'),
(32, GETDATE(), 90.00, 'Service issue refund - vehicle replacement delay', 'Processed'),
(33, GETDATE(), 80.00, 'Service issue refund - late pickup compensation', 'Processed'),
(34, GETDATE(), 120.00, 'Service issue refund - air conditioning malfunction', 'Processed'),
(35, GETDATE(), 150.00, 'Service issue refund - tire replacement delay', 'Processed'),
(36, GETDATE(), 100.00, 'Service issue refund - cleaning delay inconvenience', 'Processed'),
(37, GETDATE(), 130.00, 'Service issue refund - vehicle battery issue', 'Processed'),
(38, GETDATE(), 95.00, 'Service issue refund - customer inconvenience adjustment', 'Processed'),
(39, GETDATE(), 110.00, 'Service issue refund - incorrect booking delay', 'Processed'),
(40, GETDATE(), 105.00, 'Service issue refund - system downtime compensation', 'Processed'),

-- 🔹 Overcharge Adjustments
(41, GETDATE(), 50.00, 'Overcharge adjustment - duplicate billing corrected', 'Processed'),
(42, GETDATE(), 80.00, 'Overcharge adjustment - incorrect hourly rate corrected', 'Processed'),
(43, GETDATE(), 60.00, 'Overcharge adjustment - promotion not applied', 'Processed'),
(44, GETDATE(), 40.00, 'Overcharge adjustment - tax calculation corrected', 'Processed'),
(45, GETDATE(), 75.00, 'Overcharge adjustment - extended rental miscalculated', 'Processed'),
(46, GETDATE(), 55.00, 'Overcharge adjustment - insurance overcharge', 'Processed'),
(47, GETDATE(), 90.00, 'Overcharge adjustment - add-on duplicated', 'Processed'),
(48, GETDATE(), 70.00, 'Overcharge adjustment - GPS fee refund', 'Processed'),
(49, GETDATE(), 60.00, 'Overcharge adjustment - extra mileage charge corrected', 'Processed'),
(50, GETDATE(), 85.00, 'Overcharge adjustment - customer loyalty credit applied', 'Processed');
GO

--------------------------------------------------------
-- Insert Sample Data into Operation.Employee_Role
--------------------------------------------------------
INSERT INTO Operation.Employee_Role (role, access_level)
VALUES
('Branch Manager', 'Manager'),
('Assistant Manager', 'Manager'),
('Sales Agent', 'Staff'),
('Mechanic', 'Staff'),
('Vehicle Cleaner', 'Limited'),
('Customer Service', 'Staff'),
('Accountant', 'Admin'),
('Fleet Supervisor', 'Manager'),
('IT Support', 'Admin'),
('Regional Director', 'Admin');

-- Append comprehensive Employee_Role definitions per business rules
-- ADMIN LEVEL ROLES (Can have user accounts)
-- Finance & Executive (Admin + All-Branches Revenue Access)
INSERT INTO Operation.Employee_Role (role, access_level)
VALUES
('CEO', 'Admin'),
('CFO', 'Admin'),
('VP of Finance', 'Admin');

-- Operations & Management (Admin, no global revenue access)
INSERT INTO Operation.Employee_Role (role, access_level)
VALUES
('VP of Operations', 'Admin'),
('Compliance Officer', 'Admin'),
('Risk Manager', 'Admin');

-- IT & Systems (Admin, no revenue access)
INSERT INTO Operation.Employee_Role (role, access_level)
VALUES
('IT Administrator', 'Admin'),
('System Administrator', 'Admin');

-- MANAGER LEVEL ROLES (Cannot have user accounts)
INSERT INTO Operation.Employee_Role (role, access_level)
VALUES
('Assistant Branch Manager', 'Manager'),
('Fleet Manager', 'Manager'),
('Maintenance Supervisor', 'Manager'),
('Operations Manager', 'Manager');

-- STAFF LEVEL ROLES (Cannot have user accounts)
INSERT INTO Operation.Employee_Role (role, access_level)
VALUES
('Rental Agent', 'Staff'),
('Customer Service Representative', 'Staff'),
('Fleet Coordinator', 'Staff'),
('Senior Mechanic', 'Staff'),
('Damage Assessor', 'Staff'),
('Booking Agent', 'Staff');

-- LIMITED LEVEL ROLES (Cannot have user accounts)
INSERT INTO Operation.Employee_Role (role, access_level)
VALUES
('Shuttle Driver', 'Limited'),
('Parking Attendant', 'Limited'),
('Security Guard', 'Limited'),
('Lot Attendant', 'Limited');

--------------------------------------------------------
-- Insert Sample Data into Operations.Employee (Branches 1–16)
--------------------------------------------------------
INSERT INTO Operation.Employee
(branch_id, employee_role_id, first_name, middle_name, last_name, email, phone_number,
 date_of_birth, gender, hire_date, status)
VALUES
-- Branch 1
(1, 7,  'Michael', NULL, 'Thompson', 'michael.thompson@carrental.com', '507-555-1001', '1985-03-14', 'Male',   '2015-06-01', 'Active'),
(1, 9,  'Sarah', 'L', 'Johnson', 'sarah.johnson@carrental.com', '507-555-1002', '1990-11-22', 'Female', '2018-04-12', 'Active'),
(1, 1,  'Anthony', NULL, 'Perez', 'anthony.perez@carrental.com', '507-555-1003', '1991-12-09', 'Male', '2018-05-12', 'Active'),
(1, 2,  'Ethan', NULL, 'Ward', 'ethan.ward@carrental.com', '507-555-1004', '1982-09-08', 'Male', '2010-11-15', 'Retired'),

-- Branch 2
(2, 8,  'David', NULL, 'Nguyen', 'david.nguyen@carrental.com', '507-555-2001', '1988-09-09', 'Male', '2016-09-01', 'Active'),
(2, 5,  'Natalie', NULL, 'Carter', 'natalie.carter@carrental.com', '507-555-2002', '1994-03-01', 'Female', '2021-07-19', 'Active'),
(2, 4,  'Ava', 'M', 'Cook', 'ava.cook@carrental.com', '507-555-2003', '1997-07-23', 'Female', '2021-03-22', 'Active'),

-- Branch 3
(3, 9,  'Joshua', NULL, 'Martinez', 'joshua.martinez@carrental.com', '507-555-3001', '1992-12-04', 'Male', '2017-03-18', 'Active'),
(3, 3,  'Amanda', 'K', 'Clark', 'amanda.clark@carrental.com', '507-555-3002', '1996-08-12', 'Female', '2021-06-23', 'Active'),
(3, 4,  'Andrew', NULL, 'Baker', 'andrew.baker@carrental.com', '507-555-3003', '1987-01-16', 'Male', '2015-04-05', 'Active'),
(3, 8,  'Logan', NULL, 'Price', 'logan.price@carrental.com', '507-555-3004', '1990-05-19', 'Male', '2017-12-04', 'Active'),

-- Branch 4
(4, 7,  'James', NULL, 'Anderson', 'james.anderson@carrental.com', '507-555-4001', '1983-04-11', 'Male', '2012-02-10', 'Active'),
(4, 9,  'Maria', NULL, 'Lopez', 'maria.lopez@carrental.com', '507-555-4002', '1995-07-08', 'Female', '2022-03-05', 'Active'),
(4, 3,  'Hannah', NULL, 'Evans', 'hannah.evans@carrental.com', '507-555-4003', '1996-06-28', 'Female', '2022-01-10', 'Active'),
(4, 2,  'Daniel', NULL, 'Rogers', 'daniel.rogers@carrental.com', '507-555-4004', '1991-05-04', 'Male', '2016-10-14', 'Active'),
(4, 1,  'Chloe', NULL, 'Bell', 'chloe.bell@carrental.com', '507-555-4005', '1996-09-10', 'Female', '2020-10-19', 'Active'),

-- Branch 5
(5, 10, 'Robert', 'E', 'White', 'robert.white@carrental.com', '507-555-5001', '1989-05-18', 'Male', '2016-10-21', 'Active'),
(5, 8,  'Jennifer', NULL, 'Kim', 'jennifer.kim@carrental.com', '507-555-5002', '1993-01-07', 'Female', '2019-07-11', 'Active'),
(5, 9,  'Brandon', NULL, 'Green', 'brandon.green@carrental.com', '507-555-5003', '1993-02-21', 'Male', '2018-03-18', 'On Leave'),
(5, 5,  'William', NULL, 'Adams', 'william.adams@carrental.com', '507-555-5004', '1989-08-22', 'Male', '2015-02-17', 'Terminated'),

-- Branch 6
(6, 9,  'Thomas', NULL, 'Scott', 'thomas.scott@carrental.com', '507-555-6001', '1991-09-03', 'Male', '2018-11-09', 'Active'),
(6, 6,  'Olivia', 'M', 'Reed', 'olivia.reed@carrental.com', '507-555-6002', '1997-05-25', 'Female', '2021-09-14', 'On Leave'),
(6, 7,  'Victoria', NULL, 'Morris', 'victoria.morris@carrental.com', '507-555-6003', '1988-11-30', 'Female', '2014-09-07', 'Active'),
(6, 8,  'Ella', NULL, 'Murphy', 'ella.murphy@carrental.com', '507-555-6004', '1994-10-11', 'Female', '2020-05-08', 'Active'),

-- Branch 7
(7, 9,  'Christopher', NULL, 'Walker', 'christopher.walker@carrental.com', '507-555-7001', '1980-02-19', 'Male', '2010-01-01', 'Active'),
(7, 8,  'Sophia', NULL, 'Rivera', 'sophia.rivera@carrental.com', '507-555-7002', '1992-10-22', 'Female', '2017-02-20', 'Active'),
(7, 4,  'Daniel', NULL, 'Rogers', 'daniel.rogers2@carrental.com', '507-555-7003', '1990-05-14', 'Male', '2015-05-11', 'Active'),

-- Branch 8
(8, 9,  'Jacob', NULL, 'Hill', 'jacob.hill@carrental.com', '507-555-8001', '1990-07-30', 'Male', '2016-08-25', 'Active'),
(8, 10, 'Grace', 'L', 'Young', 'grace.young@carrental.com', '507-555-8002', '1995-02-13', 'Female', '2020-06-02', 'Active'),
(8, 10, 'Zoe', NULL, 'Reyes', 'zoe.reyes@carrental.com', '507-555-8003', '1998-04-20', 'Female', '2023-02-03', 'Active'),

-- Branch 9
(9, 1,  'Aaron', NULL, 'Russell', 'aaron.russell@carrental.com', '507-555-9001', '1987-07-14', 'Male', '2015-08-01', 'Active'),
(9, 2,  'Megan', NULL, 'Barnes', 'megan.barnes@carrental.com', '507-555-9002', '1993-11-25', 'Female', '2019-04-18', 'Active'),
(9, 5,  'Tyler', 'H', 'Fisher', 'tyler.fisher@carrental.com', '507-555-9003', '1990-09-22', 'Male', '2018-06-12', 'Active'),

-- Branch 10
(10, 4, 'Ella', NULL, 'Russell', 'ella.russell@carrental.com', '507-555-10001', '1996-03-17', 'Female', '2020-02-01', 'Active'),
(10, 8, 'Jason', NULL, 'Ng', 'jason.ng@carrental.com', '507-555-10002', '1989-05-03', 'Male', '2016-09-10', 'Active'),
(10, 9, 'Kaitlyn', 'A', 'Turner', 'kaitlyn.turner@carrental.com', '507-555-10003', '1998-08-24', 'Female', '2023-03-21', 'Active'),

-- Branch 11
(11, 6, 'Patrick', NULL, 'Woods', 'patrick.woods@carrental.com', '507-555-11001', '1985-01-14', 'Male', '2014-04-22', 'Active'),
(11, 10, 'Jasmine', NULL, 'Ortiz', 'jasmine.ortiz@carrental.com', '507-555-11002', '1995-06-30', 'Female', '2021-07-08', 'Active'),

-- Branch 12
(12, 3, 'Adrian', NULL, 'Long', 'adrian.long@carrental.com', '507-555-12001', '1991-02-11', 'Male', '2017-09-04', 'Active'),
(12, 8, 'Samantha', NULL, 'Hughes', 'samantha.hughes@carrental.com', '507-555-12002', '1994-09-28', 'Female', '2020-10-05', 'Active'),

-- Branch 13
(13, 9, 'Liam', NULL, 'Murphy', 'liam.murphy@carrental.com', '507-555-13001', '1990-06-19', 'Male', '2016-03-18', 'Active'),
(13, 2, 'Emily', NULL, 'Coleman', 'emily.coleman@carrental.com', '507-555-13002', '1995-12-05', 'Female', '2022-05-14', 'Active'),

-- Branch 14
(14, 1, 'Sean', NULL, 'Brooks', 'sean.brooks@carrental.com', '507-555-14001', '1988-03-09', 'Male', '2016-08-21', 'Active'),
(14, 5, 'Isabella', NULL, 'Bennett', 'isabella.bennett@carrental.com', '507-555-14002', '1997-01-19', 'Female', '2022-09-13', 'Active'),

-- Branch 15
(15, 10, 'Owen', NULL, 'Phillips', 'owen.phillips@carrental.com', '507-555-15001', '1987-11-07', 'Male', '2015-01-15', 'Active'),
(15, 4, 'Maya', NULL, 'Hernandez', 'maya.hernandez@carrental.com', '507-555-15002', '1996-02-20', 'Female', '2021-10-06', 'Active'),

-- Branch 16
(16, 8, 'Caleb', NULL, 'Foster', 'caleb.foster@carrental.com', '507-555-16001', '1989-10-01', 'Male', '2015-12-22', 'Active'),
(16, 3, 'Natalie', NULL, 'Gomez', 'natalie.gomez@carrental.com', '507-555-16002', '1993-08-27', 'Female', '2020-01-19', 'Active');
GO

---------------
-- Insert Data into Vehicle.Vehicle_Warranty
-- Matches Vehicle.Vehicle records 
------------------------------------------------------------
INSERT INTO Vehicle.Vehicle_Warranty
(vehicle_id, warranty_provider, warranty_type, start_date, end_date, coverage_mileage, status)
VALUES
(1, 'ToyotaCare', 'Standard', '2019-06-01', '2024-06-01', 60000, 'Active'),
(2, 'Honda Assurance', 'Extended', '2020-07-15', '2026-07-15', 75000, 'Active'),
(3, 'Ford Protect', 'Standard', '2018-03-10', '2023-03-10', 50000, 'Expired'),
(4, 'Ford Protect', 'Premium', '2021-09-01', '2026-09-01', 80000, 'Active'),
(5, 'Jeep Wave', 'Standard', '2020-01-20', '2025-01-20', 60000, 'Active'),
(6, 'Hyundai Assurance', 'Extended', '2022-02-01', '2028-02-01', 100000, 'Active'),
(7, 'Volkswagen Care', 'Standard', '2019-04-15', '2024-04-15', 60000, 'Active'),
(8, 'Honda Assurance', 'Hybrid Coverage', '2023-03-01', '2028-03-01', 100000, 'Active'),
(9, 'Nissan Extended Care', 'Standard', '2018-06-01', '2023-06-01', 60000, 'Expired'),
(10, 'Honda Assurance', 'Standard', '2021-05-01', '2026-05-01', 75000, 'Active'),
(11, 'Ford Protect', 'Standard', '2019-03-10', '2024-03-10', 60000, 'Active'),
(12, 'Chevrolet Protection', 'Premium', '2021-04-01', '2027-04-01', 80000, 'Active'),
(13, 'BMW UltimateCare', 'Premium', '2023-01-01', '2028-01-01', 100000, 'Active'),
(14, 'BMW UltimateCare', 'Standard', '2022-07-01', '2027-07-01', 80000, 'Active'),
(15, 'Nissan Extended Care', 'Standard', '2020-04-01', '2025-04-01', 60000, 'Active'),
(16, 'Ford Protect', 'Standard', '2021-09-01', '2026-09-01', 75000, 'Active'),
(17, 'ToyotaCare', 'Standard', '2022-03-01', '2027-03-01', 75000, 'Active'),
(18, 'Chevrolet Protection', 'Standard', '2021-06-01', '2026-06-01', 60000, 'Active'),
(19, 'Chevrolet Protection', 'Extended', '2023-03-01', '2029-03-01', 100000, 'Active'),
(20, 'Ford Protect', 'Super Duty', '2022-08-01', '2027-08-01', 90000, 'Active'),
(21, 'Jeep Wave', 'Premium', '2023-02-01', '2028-02-01', 80000, 'Active'),
(22, 'Honda Assurance', 'Family', '2024-03-01', '2029-03-01', 90000, 'Active'),
(23, 'Ford Protect', 'Commercial', '2023-09-01', '2028-09-01', 100000, 'Active'),
(24, 'Tesla Care', 'Battery & Drivetrain', '2023-04-01', '2031-04-01', 150000, 'Active'),
(25, 'Tesla Care', 'Comprehensive', '2024-05-01', '2032-05-01', 160000, 'Active'),
(26, 'RAM Care', 'Standard', '2022-06-01', '2027-06-01', 80000, 'Active'),
(27, 'Chevrolet Protection', 'Standard', '2021-02-01', '2026-02-01', 60000, 'Active'),
(28, 'BMW UltimateCare', 'Extended', '2024-01-01', '2030-01-01', 120000, 'Active'),
(29, 'Honda Assurance', 'Standard', '2020-06-01', '2025-06-01', 60000, 'Active'),
(30, 'Mazda Extended Care', 'Standard', '2023-07-01', '2028-07-01', 75000, 'Active');
GO


--------------------------------------------------------
-- Insert Vehicle_Registration records for all 112 vehicles
--------------------------------------------------------
INSERT INTO Vehicle.Vehicle_Registration (
    vehicle_id, registration_number, license_plate, registration_state, 
    registration_issue_date, registration_expiry_date, registration_status
)
VALUES
-- Branch 1 - Minneapolis Downtown (Minnesota registrations)
(1, 'MN-REG-001234', 'ABC-1234', 'Minnesota', '2023-03-15', '2025-03-15', 'Active'),
(2, 'MN-REG-002345', 'DEF-2345', 'Minnesota', '2023-04-20', '2025-04-20', 'Active'),
(3, 'MN-REG-003456', 'GHI-3456', 'Minnesota', '2022-12-10', '2024-12-10', 'Expired'),
(4, 'MN-REG-004567', 'JKL-4567', 'Minnesota', '2024-01-25', '2026-01-25', 'Active'),
(5, 'MN-REG-005678', 'MNO-5678', 'Minnesota', '2023-08-12', '2025-08-12', 'Active'),
(6, 'MN-REG-006789', 'PQR-6789', 'Minnesota', '2024-05-30', '2026-05-30', 'Active'),
(7, 'MN-REG-007890', 'STU-7890', 'Minnesota', '2023-02-18', '2025-02-18', 'Active'),

-- Branch 2 - Los Angeles Intl Airport (California registrations)
(8, 'CA-REG-008901', 'VWX-8901', 'California', '2024-07-14', '2026-07-14', 'Active'),
(9, 'CA-REG-009012', 'YZA-9012', 'California', '2022-11-05', '2024-11-05', 'Expired'),
(10, 'CA-REG-010123', 'BCD-0123', 'California', '2023-09-22', '2025-09-22', 'Active'),
(11, 'CA-REG-011234', 'EFG-1234', 'California', '2023-06-18', '2025-06-18', 'Active'),
(12, 'CA-REG-012345', 'HIJ-2345', 'California', '2024-02-10', '2026-02-10', 'Active'),
(13, 'CA-REG-013456', 'KLM-3456', 'California', '2024-08-05', '2026-08-05', 'Active'),
(14, 'CA-REG-014567', 'NOP-4567', 'California', '2024-03-28', '2026-03-28', 'Active'),

-- Branch 3 - New York JFK Airport (New York registrations)
(15, 'NY-REG-015678', 'QRS-5678', 'New York', '2023-01-12', '2025-01-12', 'Active'),
(16, 'NY-REG-016789', 'TUV-6789', 'New York', '2023-11-08', '2025-11-08', 'Active'),
(17, 'NY-REG-017890', 'WXY-7890', 'New York', '2024-06-15', '2026-06-15', 'Active'),
(18, 'NY-REG-018901', 'ZAB-8901', 'New York', '2023-12-03', '2025-12-03', 'Active'),
(19, 'NY-REG-019012', 'CDE-9012', 'New York', '2024-09-20', '2026-09-20', 'Active'),
(20, 'NY-REG-020123', 'FGH-0123', 'New York', '2024-04-12', '2026-04-12', 'Active'),
(21, 'NY-REG-021234', 'IJK-1234', 'New York', '2024-10-25', '2026-10-25', 'Active'),

-- Branch 4 - Chicago O'Hare Airport (Illinois registrations)
(22, 'IL-REG-022345', 'LMN-2345', 'Illinois', '2024-11-01', '2026-11-01', 'Active'),
(23, 'IL-REG-023456', 'OPQ-3456', 'Illinois', '2024-08-15', '2026-08-15', 'Active'),
(24, 'IL-REG-024567', 'RST-4567', 'Illinois', '2024-07-22', '2026-07-22', 'Active'),
(25, 'IL-REG-025678', 'UVW-5678', 'Illinois', '2024-12-08', '2026-12-08', 'Active'),
(26, 'IL-REG-026789', 'XYZ-6789', 'Illinois', '2023-05-18', '2025-05-18', 'Active'),
(27, 'IL-REG-027890', 'ABC-7890', 'Illinois', '2023-03-30', '2025-03-30', 'Active'),
(28, 'IL-REG-028901', 'DEF-8901', 'Illinois', '2024-10-12', '2026-10-12', 'Active'),

-- Branch 5 - Dallas Love Field (Texas registrations)
(29, 'TX-REG-029012', 'GHI-9012', 'Texas', '2023-07-25', '2025-07-25', 'Active'),
(30, 'TX-REG-030123', 'JKL-0123', 'Texas', '2024-09-10', '2026-09-10', 'Active'),
(31, 'TX-REG-031234', 'MNO-1234', 'Texas', '2023-11-20', '2025-11-20', 'Active'),
(32, 'TX-REG-032345', 'PQR-2345', 'Texas', '2023-04-15', '2025-04-15', 'Active'),
(33, 'TX-REG-033456', 'STU-3456', 'Texas', '2022-12-28', '2024-12-28', 'Expired'),
(34, 'TX-REG-034567', 'VWX-4567', 'Texas', '2022-10-05', '2024-10-05', 'Expired'),
(35, 'TX-REG-035678', 'YZA-5678', 'Texas', '2024-01-18', '2026-01-18', 'Active'),

-- Branch 6 - Houston Downtown (Texas registrations)
(36, 'TX-REG-036789', 'BCD-6789', 'Texas', '2023-08-22', '2025-08-22', 'Active'),
(37, 'TX-REG-037890', 'EFG-7890', 'Texas', '2023-06-12', '2025-06-12', 'Active'),
(38, 'TX-REG-038901', 'HIJ-8901', 'Texas', '2024-07-28', '2026-07-28', 'Active'),
(39, 'TX-REG-039012', 'KLM-9012', 'Texas', '2023-09-15', '2025-09-15', 'Active'),
(40, 'TX-REG-040123', 'NOP-0123', 'Texas', '2024-11-08', '2026-11-08', 'Active'),
(41, 'TX-REG-041234', 'QRS-1234', 'Texas', '2023-02-20', '2025-02-20', 'Active'),
(42, 'TX-REG-042345', 'TUV-2345', 'Texas', '2022-11-30', '2024-11-30', 'Expired'),

-- Branch 7 - Miami Intl Airport (Florida registrations)
(43, 'FL-REG-043456', 'WXY-3456', 'Florida', '2024-08-18', '2026-08-18', 'Active'),
(44, 'FL-REG-044567', 'ZAB-4567', 'Florida', '2022-09-25', '2024-09-25', 'Expired'),
(45, 'FL-REG-045678', 'CDE-5678', 'Florida', '2023-12-12', '2025-12-12', 'Active'),
(46, 'FL-REG-046789', 'FGH-6789', 'Florida', '2024-05-15', '2026-05-15', 'Active'),
(47, 'FL-REG-047890', 'IJK-7890', 'Florida', '2023-10-28', '2025-10-28', 'Active'),
(48, 'FL-REG-048901', 'LMN-8901', 'Florida', '2024-12-02', '2026-12-02', 'Active'),
(49, 'FL-REG-049012', 'OPQ-9012', 'Florida', '2023-04-08', '2025-04-08', 'Active'),

-- Branch 8 - Orlando Suburban (Florida registrations)
(50, 'FL-REG-050123', 'RST-0123', 'Florida', '2023-11-15', '2025-11-15', 'Active'),
(51, 'FL-REG-051234', 'UVW-1234', 'Florida', '2024-03-22', '2026-03-22', 'Active'),
(52, 'FL-REG-052345', 'XYZ-2345', 'Florida', '2023-01-28', '2025-01-28', 'Active'),
(53, 'FL-REG-053456', 'ABC-3456', 'Florida', '2024-06-10', '2026-06-10', 'Active'),
(54, 'FL-REG-054567', 'DEF-4567', 'Florida', '2023-07-18', '2025-07-18', 'Active'),
(55, 'FL-REG-055678', 'GHI-5678', 'Florida', '2023-09-05', '2025-09-05', 'Active'),
(56, 'FL-REG-056789', 'JKL-6789', 'Florida', '2024-11-12', '2026-11-12', 'Active'),

-- Branch 9 - Seattle Downtown (Washington registrations)
(57, 'WA-REG-057890', 'MNO-7890', 'Washington', '2023-05-25', '2025-05-25', 'Active'),
(58, 'WA-REG-058901', 'PQR-8901', 'Washington', '2024-08-08', '2026-08-08', 'Active'),
(59, 'WA-REG-059012', 'STU-9012', 'Washington', '2023-12-20', '2025-12-20', 'Active'),
(60, 'WA-REG-060123', 'VWX-0123', 'Washington', '2024-10-15', '2026-10-15', 'Active'),
(61, 'WA-REG-061234', 'YZA-1234', 'Washington', '2022-08-30', '2024-08-30', 'Expired'),
(62, 'WA-REG-062345', 'BCD-2345', 'Washington', '2024-07-05', '2026-07-05', 'Active'),
(63, 'WA-REG-063456', 'EFG-3456', 'Washington', '2024-12-18', '2026-12-18', 'Active'),

-- Branch 10 - Denver Airport (Colorado registrations)
(64, 'CO-REG-064567', 'HIJ-4567', 'Colorado', '2023-03-28', '2025-03-28', 'Active'),
(65, 'CO-REG-065678', 'KLM-5678', 'Colorado', '2025-01-10', '2027-01-10', 'Active'),
(66, 'CO-REG-066789', 'NOP-6789', 'Colorado', '2023-06-22', '2025-06-22', 'Active'),
(67, 'CO-REG-067890', 'QRS-7890', 'Colorado', '2024-04-15', '2026-04-15', 'Active'),
(68, 'CO-REG-068901', 'TUV-8901', 'Colorado', '2024-09-28', '2026-09-28', 'Active'),
(69, 'CO-REG-069012', 'WXY-9012', 'Colorado', '2023-08-12', '2025-08-12', 'Active'),
(70, 'CO-REG-070123', 'ZAB-0123', 'Colorado', '2025-02-05', '2027-02-05', 'Active'),

-- Branch 11 - San Francisco Intl (California registrations)
(71, 'CA-REG-071234', 'CDE-1234', 'California', '2024-05-20', '2026-05-20', 'Active'),
(72, 'CA-REG-072345', 'FGH-2345', 'California', '2023-10-08', '2025-10-08', 'Active'),
(73, 'CA-REG-073456', 'IJK-3456', 'California', '2024-11-25', '2026-11-25', 'Active'),
(74, 'CA-REG-074567', 'LMN-4567', 'California', '2024-06-12', '2026-06-12', 'Active'),
(75, 'CA-REG-075678', 'OPQ-5678', 'California', '2025-03-18', '2027-03-18', 'Active'),
(76, 'CA-REG-076789', 'RST-6789', 'California', '2024-12-30', '2026-12-30', 'Active'),
(77, 'CA-REG-077890', 'UVW-7890', 'California', '2025-01-22', '2027-01-22', 'Active'),

-- Branch 12 - Boston Logan Airport (Massachusetts registrations)
(78, 'MA-REG-078901', 'XYZ-8901', 'Massachusetts', '2023-02-15', '2025-02-15', 'Active'),
(79, 'MA-REG-079012', 'ABC-9012', 'Massachusetts', '2024-07-08', '2026-07-08', 'Active'),
(80, 'MA-REG-080123', 'DEF-0123', 'Massachusetts', '2025-04-25', '2027-04-25', 'Active'),
(81, 'MA-REG-081234', 'GHI-1234', 'Massachusetts', '2024-08-18', '2026-08-18', 'Active'),
(82, 'MA-REG-082345', 'JKL-2345', 'Massachusetts', '2023-11-30', '2025-11-30', 'Active'),
(83, 'MA-REG-083456', 'MNO-3456', 'Massachusetts', '2024-10-05', '2026-10-05', 'Active'),
(84, 'MA-REG-084567', 'PQR-4567', 'Massachusetts', '2023-07-12', '2025-07-12', 'Active'),

-- Branch 13 - Las Vegas Strip (Nevada registrations)
(85, 'NV-REG-085678', 'STU-5678', 'Nevada', '2024-04-28', '2026-04-28', 'Active'),
(86, 'NV-REG-086789', 'VWX-6789', 'Nevada', '2023-09-15', '2025-09-15', 'Active'),
(87, 'NV-REG-087890', 'YZA-7890', 'Nevada', '2023-12-08', '2025-12-08', 'Active'),
(88, 'NV-REG-088901', 'BCD-8901', 'Nevada', '2022-10-22', '2024-10-22', 'Expired'),
(89, 'NV-REG-089012', 'EFG-9012', 'Nevada', '2024-06-05', '2026-06-05', 'Active'),
(90, 'NV-REG-090123', 'HIJ-0123', 'Nevada', '2022-05-18', '2024-05-18', 'Expired'),
(91, 'NV-REG-091234', 'KLM-1234', 'Nevada', '2023-08-30', '2025-08-30', 'Active'),

-- Branch 14 - Phoenix Downtown (Arizona registrations)
(92, 'AZ-REG-092345', 'NOP-2345', 'Arizona', '2022-11-12', '2024-11-12', 'Expired'),
(93, 'AZ-REG-093456', 'QRS-3456', 'Arizona', '2023-04-25', '2025-04-25', 'Active'),
(94, 'AZ-REG-094567', 'TUV-4567', 'Arizona', '2024-07-18', '2026-07-18', 'Active'),
(95, 'AZ-REG-095678', 'WXY-5678', 'Arizona', '2023-10-02', '2025-10-02', 'Active'),
(96, 'AZ-REG-096789', 'ZAB-6789', 'Arizona', '2023-01-15', '2025-01-15', 'Active'),
(97, 'AZ-REG-097890', 'CDE-7890', 'Arizona', '2023-06-28', '2025-06-28', 'Active'),
(98, 'AZ-REG-098901', 'FGH-8901', 'Arizona', '2024-03-12', '2026-03-12', 'Active'),

-- Branch 15 - Atlanta Hartsfield Airport (Georgia registrations)
(99, 'GA-REG-099012', 'IJK-9012', 'Georgia', '2023-09-08', '2025-09-08', 'Active'),
(100, 'GA-REG-100123', 'LMN-0123', 'Georgia', '2024-05-22', '2026-05-22', 'Active'),
(101, 'GA-REG-101234', 'OPQ-1234', 'Georgia', '2023-12-18', '2025-12-18', 'Active'),
(102, 'GA-REG-102345', 'RST-2345', 'Georgia', '2024-08-30', '2026-08-30', 'Active'),
(103, 'GA-REG-103456', 'UVW-3456', 'Georgia', '2024-11-15', '2026-11-15', 'Active'),
(104, 'GA-REG-104567', 'XYZ-4567', 'Georgia', '2024-02-28', '2026-02-28', 'Active'),
(105, 'GA-REG-105678', 'ABC-5678', 'Georgia', '2024-10-10', '2026-10-10', 'Active'),

-- Branch 16 - Orlando (second location) (Florida registrations)
(106, 'FL-REG-106789', 'DEF-6789', 'Florida', '2024-09-12', '2026-09-12', 'Active'),
(107, 'FL-REG-107890', 'GHI-7890', 'Florida', '2023-03-05', '2025-03-05', 'Active'),
(108, 'FL-REG-108901', 'JKL-8901', 'Florida', '2023-07-20', '2025-07-20', 'Active'),
(109, 'FL-REG-109012', 'MNO-9012', 'Florida', '2024-12-15', '2026-12-15', 'Active'),
(110, 'FL-REG-110123', 'PQR-0123', 'Florida', '2023-01-08', '2025-01-08', 'Active'),
(111, 'FL-REG-111234', 'STU-1234', 'Florida', '2024-06-25', '2026-06-25', 'Active'),
(112, 'FL-REG-112345', 'VWX-2345', 'Florida', '2025-04-18', '2027-04-18', 'Active');
GO


--------------------------------------------------------
-- Insert Inspection Data for Vehicles
-- Note: employee_id values 1-10 are placeholder IDs for future Employee records
--------------------------------------------------------
INSERT INTO Vehicle.Inspection (
    employee_id, vehicle_id, rental_id, inspection_date, inspection_type, 
    inspection_mileage, fuel_level, inspection_media_path, inspection_status, inspection_signoff
)
VALUES
-- Pre-rental inspections for vehicles currently rented
(1, 2, NULL, '2025-04-11 08:30:00', 'Pre', 38150.88, 95.5, '/inspections/pre/vehicle_2_20250411.jpg', 'Passed', 1),
(2, 6, NULL, '2025-05-01 09:15:00', 'Pre', 21120.59, 87.2, '/inspections/pre/vehicle_6_20250501.jpg', 'Passed', 1),
(3, 12, NULL, '2025-01-18 10:45:00', 'Pre', 30122.70, 92.8, '/inspections/pre/vehicle_12_20250118.jpg', 'Passed', 1),
(4, 17, NULL, '2025-04-04 11:20:00', 'Pre', 19850.60, 89.3, '/inspections/pre/vehicle_17_20250404.jpg', 'Passed', 1),
(5, 24, NULL, '2025-05-31 14:30:00', 'Pre', 8200.00, 96.7, '/inspections/pre/vehicle_24_20250531.jpg', 'Passed', 1),
(6, 26, NULL, '2025-03-09 13:15:00', 'Pre', 15400.20, 84.5, '/inspections/pre/vehicle_26_20250309.jpg', 'Passed', 1),
(7, 32, NULL, '2025-05-14 16:00:00', 'Pre', 42100.30, 91.2, '/inspections/pre/vehicle_32_20250514.jpg', 'Passed', 1),
(8, 38, NULL, '2025-06-07 12:45:00', 'Pre', 15600.00, 88.9, '/inspections/pre/vehicle_38_20250607.jpg', 'Passed', 1),
(9, 41, NULL, '2025-03-24 15:30:00', 'Pre', 44700.30, 93.4, '/inspections/pre/vehicle_41_20250324.jpg', 'Passed', 1),
(10, 49, NULL, '2025-07-02 17:20:00', 'Pre', 38600.85, 86.7, '/inspections/pre/vehicle_49_20250702.jpg', 'Passed', 1),

-- Post-rental inspections for recently returned vehicles
(1, 9, NULL, '2024-11-11 16:45:00', 'Post', 61250.90, 15.3, '/inspections/post/vehicle_9_20241111.jpg', 'Failed', 1),
(2, 15, NULL, '2025-06-15 18:30:00', 'Post', 47260.35, 12.8, '/inspections/post/vehicle_15_20250615.jpg', 'Needs Review', 1),
(3, 27, NULL, '2025-02-19 19:15:00', 'Post', 21850.00, 8.5, '/inspections/post/vehicle_27_20250219.jpg', 'Failed', 1),
(4, 44, NULL, '2024-09-26 20:00:00', 'Post', 52450.60, 22.4, '/inspections/post/vehicle_44_20240926.jpg', 'Passed', 1),
(5, 52, NULL, '2025-01-29 21:30:00', 'Post', 43250.75, 18.7, '/inspections/post/vehicle_52_20250129.jpg', 'Needs Review', 1),
(6, 57, NULL, '2025-04-13 22:15:00', 'Post', 35850.60, 25.6, '/inspections/post/vehicle_57_20250413.jpg', 'Passed', 1),
(7, 61, NULL, '2024-08-31 23:00:00', 'Post', 40550.85, 14.2, '/inspections/post/vehicle_61_20240831.jpg', 'Failed', 1),
(8, 66, NULL, '2025-03-16 08:45:00', 'Post', 34750.30, 19.8, '/inspections/post/vehicle_66_20250316.jpg', 'Passed', 1),
(9, 72, NULL, '2025-05-29 09:30:00', 'Post', 25650.30, 11.4, '/inspections/post/vehicle_72_20250529.jpg', 'Needs Review', 1),
(10, 78, NULL, '2025-02-16 10:15:00', 'Post', 37250.30, 16.9, '/inspections/post/vehicle_78_20250216.jpg', 'Passed', 1),

-- Regular maintenance inspections for available vehicles
(1, 1, NULL, '2025-03-20 11:00:00', 'Pre', 43210.25, 78.5, '/inspections/maint/vehicle_1_20250320.jpg', 'Passed', 1),
(2, 4, NULL, '2025-02-25 12:30:00', 'Pre', 27450.76, 85.2, '/inspections/maint/vehicle_4_20250225.jpg', 'Passed', 1),
(3, 7, NULL, '2025-01-15 13:45:00', 'Pre', 44230.17, 72.8, '/inspections/maint/vehicle_7_20250115.jpg', 'Passed', 1),
(4, 8, NULL, '2025-04-18 14:20:00', 'Pre', 15230.00, 94.3, '/inspections/maint/vehicle_8_20250418.jpg', 'Passed', 1),
(5, 10, NULL, '2025-03-10 15:00:00', 'Pre', 27310.44, 88.7, '/inspections/maint/vehicle_10_20250310.jpg', 'Passed', 1),
(6, 11, NULL, '2025-02-20 16:15:00', 'Pre', 41290.20, 91.5, '/inspections/maint/vehicle_11_20250220.jpg', 'Passed', 1),
(7, 13, NULL, '2025-05-05 17:30:00', 'Pre', 18300.10, 83.9, '/inspections/maint/vehicle_13_20250505.jpg', 'Passed', 1),
(8, 16, NULL, '2025-04-08 18:45:00', 'Pre', 28990.21, 76.4, '/inspections/maint/vehicle_16_20250408.jpg', 'Passed', 1),
(9, 18, NULL, '2025-01-25 19:20:00', 'Pre', 24390.00, 92.1, '/inspections/maint/vehicle_18_20250125.jpg', 'Passed', 1),
(10, 19, NULL, '2025-06-10 20:00:00', 'Pre', 15700.43, 87.6, '/inspections/maint/vehicle_19_20250610.jpg', 'Passed', 1),

-- Additional inspections for high-mileage vehicles
(1, 20, NULL, '2025-03-15 07:30:00', 'Pre', 19200.12, 79.3, '/inspections/pre/vehicle_20_20250315.jpg', 'Passed', 1),
(2, 22, NULL, '2025-05-20 08:15:00', 'Pre', 11200.50, 95.8, '/inspections/pre/vehicle_22_20250520.jpg', 'Passed', 1),
(3, 23, NULL, '2025-04-25 09:00:00', 'Pre', 12300.00, 89.4, '/inspections/pre/vehicle_23_20250425.jpg', 'Passed', 1),
(4, 25, NULL, '2025-06-15 10:30:00', 'Pre', 5900.00, 92.7, '/inspections/pre/vehicle_25_20250615.jpg', 'Passed', 1),
(5, 28, NULL, '2025-02-10 11:45:00', 'Pre', 8500.00, 86.1, '/inspections/pre/vehicle_28_20250210.jpg', 'Passed', 1),
(6, 29, NULL, '2025-07-08 12:20:00', 'Pre', 22900.55, 74.8, '/inspections/pre/vehicle_29_20250708.jpg', 'Passed', 1),
(7, 30, NULL, '2025-03-30 13:00:00', 'Pre', 13400.00, 91.3, '/inspections/pre/vehicle_30_20250330.jpg', 'Passed', 1),
(8, 31, NULL, '2025-04-12 14:15:00', 'Pre', 35400.75, 82.6, '/inspections/pre/vehicle_31_20250412.jpg', 'Passed', 1),
(9, 33, NULL, '2025-05-18 15:30:00', 'Pre', 38900.00, 88.2, '/inspections/pre/vehicle_33_20250518.jpg', 'Passed', 1),
(10, 35, NULL, '2025-01-20 16:45:00', 'Pre', 28700.60, 77.9, '/inspections/pre/vehicle_35_20250120.jpg', 'Passed', 1),

-- Inspections for vehicles with issues or maintenance needs
(1, 3, NULL, '2025-02-20 17:30:00', 'Post', 50210.00, 45.2, '/inspections/post/vehicle_3_20250220.jpg', 'Failed', 1),
(2, 34, NULL, '2025-04-19 18:15:00', 'Post', 48200.85, 38.7, '/inspections/post/vehicle_34_20250419.jpg', 'Failed', 1),
(3, 26, NULL, '2025-02-17 19:00:00', 'Post', 21800.00, 42.3, '/inspections/post/vehicle_26_20250217.jpg', 'Needs Review', 1),
(4, 89, NULL, '2025-02-24 20:30:00', 'Post', 18700.90, 51.8, '/inspections/post/vehicle_89_20250224.jpg', 'Failed', 1),
(5, 103, NULL, '2025-01-29 21:15:00', 'Post', 9200.90, 67.4, '/inspections/post/vehicle_103_20250129.jpg', 'Needs Review', 1),
(6, 110, NULL, '2025-02-14 22:00:00', 'Post', 51200.70, 33.1, '/inspections/post/vehicle_110_20250214.jpg', 'Failed', 1),

-- Recent inspections for newly available vehicles
(7, 36, NULL, '2025-08-25 08:30:00', 'Pre', 31500.45, 94.7, '/inspections/pre/vehicle_36_20250825.jpg', 'Passed', 1),
(8, 37, NULL, '2025-07-15 09:15:00', 'Pre', 39800.20, 87.3, '/inspections/pre/vehicle_37_20250715.jpg', 'Passed', 1),
(9, 39, NULL, '2025-06-20', 'Pre', 33200.75, 91.8, '/inspections/pre/vehicle_39_20250620.jpg', 'Passed', 1),
(10, 40, NULL, '2025-05-12 11:00:00', 'Pre', 7200.00, 96.2, '/inspections/pre/vehicle_40_20250512.jpg', 'Passed', 1),
(1, 42, NULL, '2025-04-28 12:30:00', 'Pre', 41200.90, 83.5, '/inspections/pre/vehicle_42_20250428.jpg', 'Passed', 1),
(2, 43, NULL, '2025-09-10 13:45:00', 'Pre', 12800.25, 89.7, '/inspections/pre/vehicle_43_20250910.jpg', 'Passed', 1),
(3, 45, NULL, '2025-08-18 14:20:00', 'Pre', 26300.45, 75.4, '/inspections/pre/vehicle_45_20250818.jpg', 'Passed', 1),
(4, 46, NULL, '2025-07-22 15:00:00', 'Pre', 18900.75, 92.6, '/inspections/pre/vehicle_46_20250722.jpg', 'Passed', 1),
(5, 47, NULL, '2025-06-30 16:15:00', 'Pre', 29700.30, 86.1, '/inspections/pre/vehicle_47_20250630.jpg', 'Passed', 1),
(6, 48, NULL, '2025-05-25 17:30:00', 'Pre', 9500.00, 94.8, '/inspections/pre/vehicle_48_20250525.jpg', 'Passed', 1);
GO


--------------------------------------------------------
-- Insert Damage Data for Failed and Needs Review Inspections
--------------------------------------------------------
INSERT INTO Vehicle.Damage (
    inspection_id, damage_description, estimated_repair_cost, 
    damage_severity, damage_status, reported_date
)
VALUES
-- Damage from inspection_id 11 (Vehicle 9, Failed Post-rental)
(11, 'Scratches on driver side door and rear bumper scuffs', 850.00, 'Moderate', 'Under Repair', '2024-11-11 17:00:00'),
(11, 'Interior upholstery stains on front passenger seat', 325.50, 'Minor', 'Unresolved', '2024-11-11 17:15:00'),

-- Damage from inspection_id 12 (Vehicle 15, Needs Review Post-rental)
(12, 'Minor ding on hood from hail damage', 450.75, 'Minor', 'Unresolved', '2025-06-15 18:45:00'),
(12, 'Windshield chip requiring replacement', 275.00, 'Moderate', 'Under Repair', '2025-06-15 18:50:00'),

-- Damage from inspection_id 13 (Vehicle 27, Failed Post-rental)
(13, 'Significant tire wear on front tires', 620.00, 'Moderate', 'Resolved', '2025-02-19 19:30:00'),
(13, 'Broken side mirror on passenger side', 185.25, 'Minor', 'Resolved', '2025-02-19 19:35:00'),
(13, 'Engine warning light indicating check needed', 950.00, 'Severe', 'Under Repair', '2025-02-19 19:40:00'),

-- Damage from inspection_id 15 (Vehicle 52, Needs Review Post-rental)
(15, 'Coffee stains in cup holders and center console', 125.00, 'Minor', 'Unresolved', '2025-01-29 21:45:00'),
(15, 'Parking sensor malfunction on rear bumper', 485.50, 'Moderate', 'Under Repair', '2025-01-29 21:50:00'),

-- Damage from inspection_id 17 (Vehicle 61, Failed Post-rental)
(17, 'Transmission fluid leak under vehicle', 1250.00, 'Severe', 'Under Repair', '2024-08-31 23:15:00'),
(17, 'Torn floor mat in rear seat area', 85.00, 'Minor', 'Resolved', '2024-08-31 23:20:00'),

-- Damage from inspection_id 19 (Vehicle 72, Needs Review Post-rental)
(19, 'Air conditioning not cooling properly', 375.00, 'Moderate', 'Unresolved', '2025-05-29 09:45:00'),
(19, 'Loose interior panel on driver door', 95.75, 'Minor', 'Under Repair', '2025-05-29 09:50:00'),

-- Damage from inspection_id 31 (Vehicle 3, Failed Post-rental)
(31, 'Major dent on passenger side from collision', 1875.50, 'Severe', 'Under Repair', '2025-02-20 17:45:00'),
(31, 'Headlight assembly cracked and needs replacement', 425.00, 'Moderate', 'Unresolved', '2025-02-20 17:50:00'),
(31, 'Paint scratches extending along passenger side', 680.25, 'Moderate', 'Unresolved', '2025-02-20 17:55:00'),

-- Damage from inspection_id 32 (Vehicle 34, Failed Post-rental)
(32, 'Brake pads worn down requiring immediate replacement', 320.00, 'Moderate', 'Resolved', '2025-04-19 18:30:00'),
(32, 'Oil leak detected under engine compartment', 750.50, 'Severe', 'Under Repair', '2025-04-19 18:35:00'),

-- Damage from inspection_id 33 (Vehicle 26, Needs Review Post-rental)
(33, 'Radio display screen not functioning properly', 285.00, 'Minor', 'Unresolved', '2025-02-17 19:15:00'),
(33, 'Worn tire tread approaching replacement threshold', 540.00, 'Moderate', 'Under Repair', '2025-02-17 19:20:00'),

-- Damage from inspection_id 34 (Vehicle 89, Failed Post-rental)
(34, 'Exhaust system making unusual noise', 465.75, 'Moderate', 'Under Repair', '2025-02-24 20:45:00'),
(34, 'Power steering fluid low, possible leak', 225.50, 'Minor', 'Unresolved', '2025-02-24 20:50:00'),

-- Damage from inspection_id 35 (Vehicle 103, Needs Review Post-rental)
(35, 'Dashboard warning lights for engine diagnostics', 195.00, 'Minor', 'Under Repair', '2025-01-29 21:30:00'),
(35, 'Seat belt mechanism sticking on rear passenger side', 145.25, 'Minor', 'Unresolved', '2025-01-29 21:35:00'),

-- Damage from inspection_id 36 (Vehicle 110, Failed Post-rental)
(36, 'Suspension noise over bumps, shocks need replacement', 890.00, 'Severe', 'Under Repair', '2025-02-14 22:15:00'),
(36, 'Battery not holding charge effectively', 165.50, 'Minor', 'Resolved', '2025-02-14 22:20:00'),
(36, 'Front bumper loose mounting brackets', 255.75, 'Moderate', 'Unresolved', '2025-02-14 22:25:00');
GO

--------------------------------------------------------
-- Insert Maintenance Records for Vehicle Fleet
--------------------------------------------------------
INSERT INTO Vehicle.Maintenance_Record (
    vehicle_id, service_provider, maintenance_date, maintenance_type, 
    maintenance_cost, mileage_at_maintenance, next_due_date, maintenance_status
)
VALUES
-- Oil changes and routine maintenance for high-use vehicles
(1, 'Quick Lube Express', '2025-01-15', 'Oil Change', 75.50, 42850.25, '2025-04-15', 'Completed'),
(2, 'AutoCare Plus', '2025-02-10', 'Oil Change', 89.25, 37800.88, '2025-05-10', 'Completed'),
(3, 'Premier Auto Service', '2024-12-20', 'General Inspection', 125.00, 49500.00, '2025-12-20', 'Completed'),
(4, 'Quick Lube Express', '2025-03-05', 'Oil Change', 75.50, 27000.76, '2025-06-05', 'Completed'),
(5, 'Metro Tire & Service', '2025-01-20', 'Tire Rotation', 45.00, 28350.50, '2025-07-20', 'Completed'),

-- Brake services for vehicles with higher mileage
(6, 'Brake Masters', '2024-11-30', 'Brake Service', 285.75, 20800.59, '2025-11-30', 'Completed'),
(7, 'AutoCare Plus', '2025-02-14', 'Brake Service', 310.50, 43950.17, '2026-02-14', 'Completed'),
(8, 'Premier Auto Service', '2025-03-18', 'Oil Change', 95.00, 15050.00, '2025-06-18', 'Completed'),
(9, 'Metro Tire & Service', '2024-10-15', 'Transmission Service', 425.00, 60800.90, '2025-10-15', 'Completed'),
(10, 'Quick Lube Express', '2025-01-25', 'Oil Change', 75.50, 26980.44, '2025-04-25', 'Completed'),

-- Battery replacements and electrical work
(11, 'Battery World', '2024-09-10', 'Battery Replacement', 165.50, 40850.20, '2027-09-10', 'Completed'),
(12, 'AutoCare Plus', '2025-01-08', 'Oil Change', 89.25, 29800.70, '2025-04-08', 'Completed'),
(13, 'Premier Auto Service', '2025-02-20', 'General Inspection', 125.00, 18100.10, '2026-02-20', 'Completed'),
(14, 'Quick Lube Express', '2025-03-12', 'Oil Change', 75.50, 22450.35, '2025-06-12', 'Completed'),
(15, 'Metro Tire & Service', '2024-12-05', 'Tire Rotation', 45.00, 46850.35, '2025-06-05', 'Completed'),

-- Detailing and appearance maintenance
(16, 'Shine & Clean Auto Detail', '2025-02-28', 'Detailing', 150.00, 28750.21, '2025-08-28', 'Completed'),
(17, 'AutoCare Plus', '2025-01-30', 'Oil Change', 89.25, 19650.60, '2025-04-30', 'Completed'),
(18, 'Premier Auto Service', '2025-03-08', 'Brake Service', 295.00, 24200.00, '2026-03-08', 'Completed'),
(19, 'Quick Lube Express', '2025-02-15', 'Oil Change', 75.50, 15500.43, '2025-05-15', 'Completed'),
(20, 'Metro Tire & Service', '2025-01-18', 'Tire Rotation', 45.00, 19000.12, '2025-07-18', 'Completed'),

-- Scheduled maintenance for newer vehicles
(21, 'AutoCare Plus', '2025-03-20', 'Oil Change', 89.25, 14800.75, '2025-06-20', 'Completed'),
(22, 'Quick Lube Express', '2025-02-22', 'Oil Change', 75.50, 11050.50, '2025-05-22', 'Completed'),
(23, 'Premier Auto Service', '2025-01-12', 'General Inspection', 125.00, 12150.00, '2026-01-12', 'Completed'),
(24, 'Metro Tire & Service', '2025-03-15', 'Tire Rotation', 45.00, 8150.00, '2025-09-15', 'Completed'),
(25, 'Shine & Clean Auto Detail', '2025-02-05', 'Detailing', 150.00, 5850.00, '2025-08-05', 'Completed'),

-- Transmission and major services for high-mileage vehicles
(26, 'Transmission Specialists', '2024-08-20', 'Transmission Service', 485.00, 15200.20, '2025-08-20', 'Completed'),
(27, 'AutoCare Plus', '2024-11-18', 'Brake Service', 320.75, 21650.00, '2025-11-18', 'Completed'),
(28, 'Quick Lube Express', '2025-01-22', 'Oil Change', 75.50, 8350.00, '2025-04-22', 'Completed'),
(29, 'Metro Tire & Service', '2025-02-18', 'Tire Rotation', 45.00, 22750.55, '2025-08-18', 'Completed'),
(30, 'Premier Auto Service', '2025-03-25', 'Oil Change', 95.00, 13250.00, '2025-06-25', 'Completed'),

-- Regular maintenance for mid-range mileage vehicles
(31, 'AutoCare Plus', '2025-01-05', 'Oil Change', 89.25, 35200.75, '2025-04-05', 'Completed'),
(32, 'Quick Lube Express', '2025-02-08', 'Oil Change', 75.50, 41900.30, '2025-05-08', 'Completed'),
(33, 'Metro Tire & Service', '2025-03-10', 'Brake Service', 275.50, 38700.00, '2026-03-10', 'Completed'),
(34, 'Premier Auto Service', '2024-12-15', 'General Inspection', 125.00, 47950.85, '2025-12-15', 'Completed'),
(35, 'Battery World', '2024-10-30', 'Battery Replacement', 165.50, 28500.60, '2027-10-30', 'Completed'),

-- Upcoming scheduled maintenance
(36, 'AutoCare Plus', '2025-11-20', 'Oil Change', 89.25, 31300.45, '2026-02-20', 'Scheduled'),
(37, 'Quick Lube Express', '2025-12-05', 'Oil Change', 75.50, 39600.20, '2026-03-05', 'Scheduled'),
(38, 'Metro Tire & Service', '2025-11-28', 'Tire Rotation', 45.00, 15400.00, '2026-05-28', 'Scheduled'),
(39, 'Premier Auto Service', '2025-12-10', 'General Inspection', 125.00, 32950.75, '2026-12-10', 'Scheduled'),
(40, 'Shine & Clean Auto Detail', '2025-11-15', 'Detailing', 150.00, 7050.00, '2026-05-15', 'Scheduled'),

-- Pending maintenance for vehicles needing attention
(41, 'Transmission Specialists', '2025-11-25', 'Transmission Service', 485.00, 44500.30, '2026-11-25', 'Pending'),
(42, 'AutoCare Plus', '2025-12-01', 'Brake Service', 295.00, 40950.90, '2026-12-01', 'Pending'),
(43, 'Quick Lube Express', '2025-11-18', 'Oil Change', 75.50, 12650.25, '2026-02-18', 'Pending'),
(44, 'Metro Tire & Service', '2025-12-08', 'Tire Rotation', 45.00, 52250.60, '2026-06-08', 'Pending'),
(45, 'Premier Auto Service', '2025-11-30', 'General Inspection', 125.00, 26150.45, '2026-11-30', 'Pending'),

-- Additional completed maintenance for various vehicles
(46, 'AutoCare Plus', '2025-02-25', 'Oil Change', 89.25, 18750.75, '2025-05-25', 'Completed'),
(47, 'Quick Lube Express', '2025-01-28', 'Oil Change', 75.50, 29550.30, '2025-04-28', 'Completed'),
(48, 'Metro Tire & Service', '2025-03-18', 'Tire Rotation', 45.00, 9350.00, '2025-09-18', 'Completed'),
(49, 'Premier Auto Service', '2025-02-12', 'Brake Service', 310.50, 38450.85, '2026-02-12', 'Completed'),
(50, 'Shine & Clean Auto Detail', '2025-01-20', 'Detailing', 150.00, 22850.45, '2025-07-20', 'Completed'),

-- Maintenance for luxury and high-end vehicles
(51, 'Luxury Auto Care', '2025-02-08', 'Oil Change', 125.00, 41250.30, '2025-05-08', 'Completed'),
(52, 'Premier Auto Service', '2024-11-25', 'General Inspection', 175.00, 42950.75, '2025-11-25', 'Completed'),
(53, 'AutoCare Plus', '2025-03-15', 'Oil Change', 89.25, 34800.90, '2025-06-15', 'Completed'),
(54, 'Metro Tire & Service', '2025-01-18', 'Brake Service', 325.75, 28950.45, '2026-01-18', 'Completed'),
(55, 'Battery World', '2024-09-15', 'Battery Replacement', 195.00, 45250.60, '2027-09-15', 'Completed');
GO


--------------------------------------------------------
-- Insert Maintenance-Request Junction Data
--------------------------------------------------------
INSERT INTO Vehicle.Maintenance_Request (
    maintenance_id, inspection_id, request_date, request_type, 
    description, priority_level, status
)
VALUES
-- Repair requests triggered by failed inspections
(9, 11, '2024-11-12', 'Repair Request', 'Address scratches on driver door and interior stains from post-rental inspection', 'Medium', 'Completed'),
(27, 13, '2025-02-20', 'Repair Request', 'Replace worn tires and broken side mirror identified in inspection', 'High', 'Completed'),
(26, 17, '2024-09-01', 'Repair Request', 'Transmission leak repair following failed post-rental inspection', 'Critical', 'Completed'),

-- Damage follow-up maintenance from inspection findings
(18, 12, '2025-06-16', 'Damage Follow-up', 'Windshield replacement due to hail damage found during inspection', 'Medium', 'Completed'),
(33, 15, '2025-01-30', 'Damage Follow-up', 'Repair parking sensors and clean interior stains', 'Low', 'Completed'),
(49, 19, '2025-05-30', 'Damage Follow-up', 'AC system repair and interior panel tightening', 'Medium', 'Completed'),

-- Preventive maintenance triggered by inspection findings
(3, 31, '2025-02-21', 'Preventive Check', 'Complete body work and paint repair from collision damage', 'Critical', 'In Progress'),
(34, 32, '2025-04-20', 'Preventive Check', 'Oil leak investigation and engine diagnostics', 'High', 'In Progress'),
(35, 36, '2025-02-15', 'Preventive Check', 'Suspension system overhaul and battery replacement', 'High', 'Completed'),

-- Routine service connections to pre-rental inspections
(1, 1, '2025-04-12', 'Routine Service', 'Follow-up oil change after pre-rental inspection clearance', 'Low', 'Completed'),
(4, 4, '2025-04-05', 'Routine Service', 'Scheduled maintenance following pre-rental inspection', 'Low', 'Completed'),
(10, 10, '2025-07-03', 'Routine Service', 'Post-inspection routine maintenance check', 'Low', 'Pending'),

-- Preventive checks for vehicles with minor issues
(16, 2, '2025-05-02', 'Preventive Check', 'Detailing service after pre-rental inspection approval', 'Low', 'Completed'),
(25, 5, '2025-06-01', 'Preventive Check', 'Preventive detailing for new vehicle after inspection', 'Low', 'Completed'),
(40, 8, '2025-06-08', 'Preventive Check', 'Scheduled detailing following pre-rental inspection', 'Low', 'Pending'),

-- Repair requests for vehicles needing attention
(41, 33, '2025-02-18', 'Repair Request', 'Radio system repair and tire replacement scheduling', 'Medium', 'Pending'),
(42, 34, '2025-02-25', 'Repair Request', 'Exhaust system repair and power steering maintenance', 'Medium', 'Pending'),
(43, 35, '2025-01-30', 'Repair Request', 'Dashboard diagnostics and seat belt mechanism repair', 'Low', 'Pending'),

-- Additional maintenance connections for comprehensive tracking
(11, 20, '2025-03-16', 'Preventive Check', 'Battery replacement preventive maintenance', 'Medium', 'Completed'),
(13, 21, '2025-02-21', 'Routine Service', 'General inspection follow-up maintenance', 'Low', 'Completed'),
(23, 23, '2025-01-13', 'Routine Service', 'Scheduled inspection follow-up service', 'Low', 'Completed'),

-- High-priority repairs for critical findings
(52, 44, '2024-09-27', 'Damage Follow-up', 'Luxury vehicle inspection follow-up maintenance', 'High', 'Completed'),
(54, 46, '2025-01-19', 'Repair Request', 'Brake service following inspection requirements', 'High', 'Completed'),
(55, 47, '2024-09-16', 'Preventive Check', 'Battery replacement preventive maintenance', 'Medium', 'Completed'),

-- Pending maintenance requests
(36, 37, '2025-11-21', 'Routine Service', 'Scheduled oil change following inspection clearance', 'Low', 'Pending'),
(38, 38, '2025-11-29', 'Preventive Check', 'Tire rotation preventive maintenance', 'Low', 'Pending'),
(44, 39, '2025-12-09', 'Routine Service', 'Tire maintenance following inspection', 'Low', 'Pending'),

-- In-progress maintenance for ongoing issues
(39, 40, '2025-12-11', 'Preventive Check', 'General inspection preventive maintenance', 'Medium', 'In Progress'),
(45, 41, '2025-12-01', 'Repair Request', 'General inspection follow-up repair work', 'Medium', 'In Progress');
GO

-------------------------------------------------------
-- Insert Vehicle Insurance Policies for All 112 Vehicles
--------------------------------------------------------
INSERT INTO Vehicle.Vehicle_Insurance (
    vehicle_id, policy_number, provider_name, coverage_type, 
    policy_start_date, policy_expiry_date, policy_status
)
VALUES
-- Vehicles 1-20: Full Coverage with major providers
(1, 'FC-2025-001-4291', 'State Farm Insurance', 'Full Coverage', '2025-01-01', '2026-01-01', 'Active'),
(2, 'FC-2025-002-5837', 'Allstate Corporation', 'Full Coverage', '2025-02-15', '2026-02-15', 'Active'),
(3, 'FC-2025-003-9264', 'Progressive Insurance', 'Full Coverage', '2025-01-10', '2026-01-10', 'Active'),
(4, 'FC-2025-004-7583', 'GEICO Insurance', 'Full Coverage', '2025-03-01', '2026-03-01', 'Active'),
(5, 'FC-2025-005-2947', 'State Farm Insurance', 'Full Coverage', '2025-01-20', '2026-01-20', 'Active'),
(6, 'FC-2025-006-8172', 'Allstate Corporation', 'Full Coverage', '2025-02-28', '2026-02-28', 'Active'),
(7, 'FC-2025-007-3658', 'Progressive Insurance', 'Full Coverage', '2025-01-15', '2026-01-15', 'Active'),
(8, 'FC-2025-008-9483', 'GEICO Insurance', 'Full Coverage', '2025-03-10', '2026-03-10', 'Active'),
(9, 'FC-2025-009-5729', 'Liberty Mutual', 'Full Coverage', '2025-01-05', '2026-01-05', 'Active'),
(10, 'FC-2025-010-4863', 'Farmers Insurance', 'Full Coverage', '2025-02-12', '2026-02-12', 'Active'),
(11, 'FC-2025-011-7295', 'State Farm Insurance', 'Full Coverage', '2025-01-25', '2026-01-25', 'Active'),
(12, 'FC-2025-012-8147', 'Allstate Corporation', 'Full Coverage', '2025-03-15', '2026-03-15', 'Active'),
(13, 'FC-2025-013-2639', 'Progressive Insurance', 'Full Coverage', '2025-01-08', '2026-01-08', 'Active'),
(14, 'FC-2025-014-5841', 'GEICO Insurance', 'Full Coverage', '2025-02-20', '2026-02-20', 'Active'),
(15, 'FC-2025-015-9374', 'Liberty Mutual', 'Full Coverage', '2025-01-30', '2026-01-30', 'Active'),
(16, 'FC-2025-016-4726', 'Farmers Insurance', 'Full Coverage', '2025-03-05', '2026-03-05', 'Active'),
(17, 'FC-2025-017-8352', 'State Farm Insurance', 'Full Coverage', '2025-01-12', '2026-01-12', 'Active'),
(18, 'FC-2025-018-7194', 'Allstate Corporation', 'Full Coverage', '2025-02-25', '2026-02-25', 'Active'),
(19, 'FC-2025-019-3687', 'Progressive Insurance', 'Full Coverage', '2025-01-18', '2026-01-18', 'Active'),
(20, 'FC-2025-020-9523', 'GEICO Insurance', 'Full Coverage', '2025-03-12', '2026-03-12', 'Active'),

-- Vehicles 21-40: Mix of Full Coverage and Comprehensive
(21, 'COMP-2025-021-4817', 'Liberty Mutual', 'Comprehensive', '2025-01-22', '2026-01-22', 'Active'),
(22, 'FC-2025-022-7394', 'Farmers Insurance', 'Full Coverage', '2025-02-08', '2026-02-08', 'Active'),
(23, 'COMP-2025-023-2856', 'State Farm Insurance', 'Comprehensive', '2025-01-28', '2026-01-28', 'Active'),
(24, 'FC-2025-024-6173', 'Allstate Corporation', 'Full Coverage', '2025-03-18', '2026-03-18', 'Active'),
(25, 'COMP-2025-025-9485', 'Progressive Insurance', 'Comprehensive', '2025-01-03', '2026-01-03', 'Active'),
(26, 'FC-2025-026-5729', 'GEICO Insurance', 'Full Coverage', '2025-02-14', '2026-02-14', 'Active'),
(27, 'COMP-2025-027-8162', 'Liberty Mutual', 'Comprehensive', '2025-01-17', '2026-01-17', 'Active'),
(28, 'FC-2025-028-3947', 'Farmers Insurance', 'Full Coverage', '2025-03-22', '2026-03-22', 'Active'),
(29, 'COMP-2025-029-7384', 'State Farm Insurance', 'Comprehensive', '2025-01-11', '2026-01-11', 'Active'),
(30, 'FC-2025-030-2659', 'Allstate Corporation', 'Full Coverage', '2025-02-18', '2026-02-18', 'Active'),
(31, 'COMP-2025-031-8471', 'Progressive Insurance', 'Comprehensive', '2025-01-26', '2026-01-26', 'Active'),
(32, 'FC-2025-032-5936', 'GEICO Insurance', 'Full Coverage', '2025-03-08', '2026-03-08', 'Active'),
(33, 'COMP-2025-033-4728', 'Liberty Mutual', 'Comprehensive', '2025-01-14', '2026-01-14', 'Active'),
(34, 'FC-2025-034-9273', 'Farmers Insurance', 'Full Coverage', '2025-02-22', '2026-02-22', 'Active'),
(35, 'COMP-2025-035-6185', 'State Farm Insurance', 'Comprehensive', '2025-01-31', '2026-01-31', 'Active'),
(36, 'FC-2025-036-3847', 'Allstate Corporation', 'Full Coverage', '2025-03-25', '2026-03-25', 'Active'),
(37, 'COMP-2025-037-7529', 'Progressive Insurance', 'Comprehensive', '2025-01-07', '2026-01-07', 'Active'),
(38, 'FC-2025-038-2964', 'GEICO Insurance', 'Full Coverage', '2025-02-11', '2026-02-11', 'Active'),
(39, 'COMP-2025-039-8375', 'Liberty Mutual', 'Comprehensive', '2025-01-19', '2026-01-19', 'Active'),
(40, 'FC-2025-040-4692', 'Farmers Insurance', 'Full Coverage', '2025-03-14', '2026-03-14', 'Active'),

-- Vehicles 41-60: Mix including Collision coverage
(41, 'COL-2025-041-7384', 'State Farm Insurance', 'Collision', '2025-01-24', '2026-01-24', 'Active'),
(42, 'FC-2025-042-2857', 'Allstate Corporation', 'Full Coverage', '2025-02-05', '2026-02-05', 'Active'),
(43, 'COL-2025-043-9463', 'Progressive Insurance', 'Collision', '2025-01-13', '2026-01-13', 'Active'),
(44, 'FC-2025-044-5728', 'GEICO Insurance', 'Full Coverage', '2025-03-19', '2026-03-19', 'Active'),
(45, 'COL-2025-045-8194', 'Liberty Mutual', 'Collision', '2025-01-29', '2026-01-29', 'Active'),
(46, 'FC-2025-046-3675', 'Farmers Insurance', 'Full Coverage', '2025-02-16', '2026-02-16', 'Active'),
(47, 'COL-2025-047-7492', 'State Farm Insurance', 'Collision', '2025-01-04', '2026-01-04', 'Active'),
(48, 'FC-2025-048-2864', 'Allstate Corporation', 'Full Coverage', '2025-03-11', '2026-03-11', 'Active'),
(49, 'COL-2025-049-9537', 'Progressive Insurance', 'Collision', '2025-01-16', '2026-01-16', 'Active'),
(50, 'FC-2025-050-4783', 'GEICO Insurance', 'Full Coverage', '2025-02-23', '2026-02-23', 'Active'),
(51, 'COL-2025-051-8269', 'Liberty Mutual', 'Collision', '2025-01-21', '2026-01-21', 'Active'),
(52, 'FC-2025-052-5847', 'Farmers Insurance', 'Full Coverage', '2025-03-16', '2026-03-16', 'Active'),
(53, 'COL-2025-053-7395', 'State Farm Insurance', 'Collision', '2025-01-09', '2026-01-09', 'Active'),
(54, 'FC-2025-054-2648', 'Allstate Corporation', 'Full Coverage', '2025-02-27', '2026-02-27', 'Active'),
(55, 'COL-2025-055-9174', 'Progressive Insurance', 'Collision', '2025-01-27', '2026-01-27', 'Active'),
(56, 'FC-2025-056-4926', 'GEICO Insurance', 'Full Coverage', '2025-03-07', '2026-03-07', 'Active'),
(57, 'COL-2025-057-8351', 'Liberty Mutual', 'Collision', '2025-01-15', '2026-01-15', 'Active'),
(58, 'FC-2025-058-3794', 'Farmers Insurance', 'Full Coverage', '2025-02-19', '2026-02-19', 'Active'),
(59, 'COL-2025-059-7582', 'State Farm Insurance', 'Collision', '2025-01-02', '2026-01-02', 'Active'),
(60, 'FC-2025-060-2937', 'Allstate Corporation', 'Full Coverage', '2025-03-13', '2026-03-13', 'Active'),

-- Vehicles 61-80: Mix including Liability coverage
(61, 'LIA-2025-061-8465', 'Progressive Insurance', 'Liability', '2025-01-23', '2026-01-23', 'Active'),
(62, 'FC-2025-062-5729', 'GEICO Insurance', 'Full Coverage', '2025-02-06', '2026-02-06', 'Active'),
(63, 'LIA-2025-063-9184', 'Liberty Mutual', 'Liability', '2025-01-18', '2026-01-18', 'Active'),
(64, 'FC-2025-064-4637', 'Farmers Insurance', 'Full Coverage', '2025-03-20', '2026-03-20', 'Active'),
(65, 'LIA-2025-065-7295', 'State Farm Insurance', 'Liability', '2025-01-06', '2026-01-06', 'Active'),
(66, 'FC-2025-066-2584', 'Allstate Corporation', 'Full Coverage', '2025-02-13', '2026-02-13', 'Active'),
(67, 'LIA-2025-067-8739', 'Progressive Insurance', 'Liability', '2025-01-25', '2026-01-25', 'Active'),
(68, 'FC-2025-068-3652', 'GEICO Insurance', 'Full Coverage', '2025-03-17', '2026-03-17', 'Active'),
(69, 'LIA-2025-069-7418', 'Liberty Mutual', 'Liability', '2025-01-12', '2026-01-12', 'Active'),
(70, 'FC-2025-070-2967', 'Farmers Insurance', 'Full Coverage', '2025-02-24', '2026-02-24', 'Active'),
(71, 'LIA-2025-071-8352', 'State Farm Insurance', 'Liability', '2025-01-30', '2026-01-30', 'Active'),
(72, 'FC-2025-072-5794', 'Allstate Corporation', 'Full Coverage', '2025-03-09', '2026-03-09', 'Active'),
(73, 'LIA-2025-073-9273', 'Progressive Insurance', 'Liability', '2025-01-17', '2026-01-17', 'Active'),
(74, 'FC-2025-074-4685', 'GEICO Insurance', 'Full Coverage', '2025-02-21', '2026-02-21', 'Active'),
(75, 'LIA-2025-075-7394', 'Liberty Mutual', 'Liability', '2025-01-08', '2026-01-08', 'Active'),
(76, 'FC-2025-076-2847', 'Farmers Insurance', 'Full Coverage', '2025-03-24', '2026-03-24', 'Active'),
(77, 'LIA-2025-077-8519', 'State Farm Insurance', 'Liability', '2025-01-14', '2026-01-14', 'Active'),
(78, 'FC-2025-078-3726', 'Allstate Corporation', 'Full Coverage', '2025-02-07', '2026-02-07', 'Active'),
(79, 'LIA-2025-079-9485', 'Progressive Insurance', 'Liability', '2025-01-26', '2026-01-26', 'Active'),
(80, 'FC-2025-080-5637', 'GEICO Insurance', 'Full Coverage', '2025-03-15', '2026-03-15', 'Active'),

-- Vehicles 81-100: Mix including Personal Injury coverage
(81, 'PI-2025-081-8274', 'Liberty Mutual', 'Personal Injury', '2025-01-11', '2026-01-11', 'Active'),
(82, 'FC-2025-082-4923', 'Farmers Insurance', 'Full Coverage', '2025-02-17', '2026-02-17', 'Active'),
(83, 'PI-2025-083-7586', 'State Farm Insurance', 'Personal Injury', '2025-01-28', '2026-01-28', 'Active'),
(84, 'FC-2025-084-2394', 'Allstate Corporation', 'Full Coverage', '2025-03-21', '2026-03-21', 'Active'),
(85, 'PI-2025-085-8615', 'Progressive Insurance', 'Personal Injury', '2025-01-04', '2026-01-04', 'Active'),
(86, 'FC-2025-086-5729', 'GEICO Insurance', 'Full Coverage', '2025-02-10', '2026-02-10', 'Active'),
(87, 'PI-2025-087-9374', 'Liberty Mutual', 'Personal Injury', '2025-01-19', '2026-01-19', 'Active'),
(88, 'FC-2025-088-4681', 'Farmers Insurance', 'Full Coverage', '2025-03-26', '2026-03-26', 'Active'),
(89, 'PI-2025-089-7295', 'State Farm Insurance', 'Personal Injury', '2025-01-13', '2026-01-13', 'Active'),
(90, 'FC-2025-090-2859', 'Allstate Corporation', 'Full Coverage', '2025-02-26', '2026-02-26', 'Active'),
(91, 'PI-2025-091-8437', 'Progressive Insurance', 'Personal Injury', '2025-01-22', '2026-01-22', 'Active'),
(92, 'FC-2025-092-5764', 'GEICO Insurance', 'Full Coverage', '2025-03-04', '2026-03-04', 'Active'),
(93, 'PI-2025-093-9128', 'Liberty Mutual', 'Personal Injury', '2025-01-07', '2026-01-07', 'Active'),
(94, 'FC-2025-094-3675', 'Farmers Insurance', 'Full Coverage', '2025-02-15', '2026-02-15', 'Active'),
(95, 'PI-2025-095-7491', 'State Farm Insurance', 'Personal Injury', '2025-01-29', '2026-01-29', 'Active'),
(96, 'FC-2025-096-2836', 'Allstate Corporation', 'Full Coverage', '2025-03-23', '2026-03-23', 'Active'),
(97, 'PI-2025-097-8574', 'Progressive Insurance', 'Personal Injury', '2025-01-16', '2026-01-16', 'Active'),
(98, 'FC-2025-098-4927', 'GEICO Insurance', 'Full Coverage', '2025-02-09', '2026-02-09', 'Active'),
(99, 'PI-2025-099-7382', 'Liberty Mutual', 'Personal Injury', '2025-01-24', '2026-01-24', 'Active'),
(100, 'FC-2025-100-2958', 'Farmers Insurance', 'Full Coverage', '2025-03-18', '2026-03-18', 'Active'),

-- Vehicles 101-112: Final vehicles with mixed coverage and some pending renewal
(101, 'COMP-2025-101-8463', 'State Farm Insurance', 'Comprehensive', '2025-01-05', '2026-01-05', 'Active'),
(102, 'FC-2025-102-5729', 'Allstate Corporation', 'Full Coverage', '2025-02-12', '2026-02-12', 'Active'),
(103, 'COL-2025-103-9174', 'Progressive Insurance', 'Collision', '2025-01-20', '2026-01-20', 'Active'),
(104, 'FC-2025-104-4836', 'GEICO Insurance', 'Full Coverage', '2024-12-15', '2025-12-15', 'Pending Renewal'),
(105, 'LIA-2025-105-7295', 'Liberty Mutual', 'Liability', '2025-01-27', '2026-01-27', 'Active'),
(106, 'FC-2025-106-2647', 'Farmers Insurance', 'Full Coverage', '2024-12-20', '2025-12-20', 'Pending Renewal'),
(107, 'COMP-2025-107-8539', 'State Farm Insurance', 'Comprehensive', '2025-01-15', '2026-01-15', 'Active'),
(108, 'FC-2025-108-3782', 'Allstate Corporation', 'Full Coverage', '2025-02-28', '2026-02-28', 'Active'),
(109, 'COL-2025-109-9463', 'Progressive Insurance', 'Collision', '2025-01-10', '2026-01-10', 'Active'),
(110, 'FC-2025-110-5827', 'GEICO Insurance', 'Full Coverage', '2024-12-25', '2025-12-25', 'Pending Renewal'),
(111, 'PI-2025-111-7394', 'Liberty Mutual', 'Personal Injury', '2025-01-31', '2026-01-31', 'Active'),
(112, 'FC-2025-112-2968', 'Farmers Insurance', 'Full Coverage', '2025-03-27', '2026-03-27', 'Active');
GO


--------------------------------------------------------
-- Insert Sample Data into Operation.Expense_Category
--------------------------------------------------------
INSERT INTO Operation.Expense_Category (category_name, category_description)
VALUES
('Vehicle Maintenance', 'Routine servicing, oil changes, tire replacements, etc.'),
('Fuel Expense', 'Fuel costs for company-owned or rental vehicles'),
('Branch Utilities', 'Electricity, water, internet, and utility bills at branch locations'),
('Employee Salaries', 'Monthly wages and bonuses for branch and corporate employees'),
('Cleaning Supplies', 'Purchase of cleaning products for vehicles and branches'),
('Office Supplies', 'Stationery, printing, and small equipment purchases'),
('Insurance Premiums', 'Vehicle and property insurance payments'),
('Advertising & Marketing', 'Digital ads, flyers, and promotional campaigns'),
('Vehicle Acquisition', 'Cost of purchasing or leasing new vehicles'),
('Software Licenses', 'ERP, CRM, and other IT-related subscriptions'),
('Repair & Parts', 'Body shop, mechanical, and electrical repair costs'),
('Miscellaneous', 'Uncategorized minor branch or administrative expenses');
GO

-------------------------------------------------------
-- Insert Branch Expenses for All 16 Branches
--------------------------------------------------------
INSERT INTO Operation.Branch_Expenses (
    branch_id, expense_category_id, vendor_name, expense_description, 
    amount, expense_date, payment_status
)
VALUES
-- Branch 1 - Las Vegas (Airport) expenses
(1, 1, 'Vegas Office Supplies', 'Monthly office supplies and stationery', 425.75, '2025-01-15 14:30:00', 'Paid'),
(1, 2, 'Nevada Power & Light', 'January electricity bill', 1250.00, '2025-01-20 09:15:00', 'Paid'),
(1, 3, 'Elite Cleaning Services', 'Weekly facility cleaning services', 850.50, '2025-01-25 16:45:00', 'Paid'),
(1, 4, 'AutoCare Vegas', 'Fleet maintenance and oil changes', 2150.25, '2025-02-01 11:20:00', 'Paid'),
(1, 5, 'TeamBuilders Inc', 'Staff training and development programs', 750.00, '2025-02-10 13:30:00', 'Paid'),

-- Branch 2 - Reno (City) expenses
(2, 1, 'Reno Business Supply', 'Office equipment and supplies', 320.50, '2025-01-18 10:15:00', 'Paid'),
(2, 2, 'Sierra Pacific Power', 'Monthly utility charges', 895.75, '2025-01-22 14:20:00', 'Paid'),
(2, 3, 'Mountain View Cleaning', 'Facility maintenance and cleaning', 650.00, '2025-01-28 08:45:00', 'Paid'),
(2, 4, 'Reno Auto Service', 'Vehicle inspections and repairs', 1850.30, '2025-02-05 15:10:00', 'Paid'),
(2, 6, 'TechSolutions Reno', 'IT support and software licenses', 450.00, '2025-02-12 12:00:00', 'Paid'),

-- Branch 3 - Henderson (Suburban) expenses
(3, 1, 'Henderson Office Mart', 'Administrative supplies and forms', 275.25, '2025-01-20 09:30:00', 'Paid'),
(3, 2, 'Henderson Municipal Utilities', 'Electricity and water services', 720.50, '2025-01-25 13:15:00', 'Paid'),
(3, 3, 'Suburban Clean Co', 'Cleaning and maintenance services', 580.75, '2025-02-02 10:20:00', 'Paid'),
(3, 4, 'Henderson Auto Care', 'Routine vehicle maintenance', 1620.00, '2025-02-08 14:45:00', 'Paid'),
(3, 7, 'SecureGuard Henderson', 'Security services and monitoring', 680.00, '2025-02-15 16:30:00', 'Paid'),

-- Branch 4 - North Las Vegas (Suburban) expenses
(4, 1, 'North Vegas Supply', 'Office materials and equipment', 350.80, '2025-01-22 11:45:00', 'Paid'),
(4, 2, 'City of North Las Vegas', 'Municipal utility services', 825.25, '2025-01-28 15:20:00', 'Paid'),
(4, 3, 'Northside Janitorial', 'Facility cleaning and upkeep', 620.50, '2025-02-05 09:10:00', 'Paid'),
(4, 4, 'North Vegas Auto', 'Fleet servicing and tire rotation', 1750.75, '2025-02-12 13:40:00', 'Paid'),
(4, 8, 'Legal Associates NV', 'Legal consultation and compliance', 950.00, '2025-02-18 10:30:00', 'Pending'),

-- Branch 5 - Phoenix Sky Harbor (Airport) expenses
(5, 1, 'Phoenix Business Center', 'Office supplies and printing', 485.60, '2025-01-16 08:20:00', 'Paid'),
(5, 2, 'Arizona Public Service', 'Airport facility electricity', 1450.75, '2025-01-21 12:45:00', 'Paid'),
(5, 3, 'Sky Harbor Maintenance', 'Airport terminal cleaning', 920.00, '2025-01-27 14:15:00', 'Paid'),
(5, 4, 'Desert Auto Services', 'Vehicle maintenance in desert climate', 2250.50, '2025-02-03 16:20:00', 'Paid'),
(5, 9, 'Phoenix Marketing Group', 'Airport advertising and promotion', 1200.00, '2025-02-09 11:10:00', 'Paid'),

-- Branch 6 - Tucson (City) expenses
(6, 1, 'Tucson Office Solutions', 'Administrative and operational supplies', 295.40, '2025-01-19 13:25:00', 'Paid'),
(6, 2, 'Tucson Electric Power', 'Monthly electricity and HVAC', 775.80, '2025-01-24 10:50:00', 'Paid'),
(6, 3, 'Desert Cleaning Services', 'Weekly facility maintenance', 540.25, '2025-01-30 15:35:00', 'Paid'),
(6, 4, 'Tucson Fleet Care', 'Vehicle servicing and inspections', 1680.90, '2025-02-06 12:15:00', 'Paid'),
(6, 10, 'Southwest Insurance Group', 'Liability and property insurance', 850.00, '2025-02-13 09:40:00', 'Paid'),

-- Branch 7 - Scottsdale (City) expenses
(7, 1, 'Scottsdale Business Supply', 'Premium office supplies', 380.75, '2025-01-17 14:50:00', 'Paid'),
(7, 2, 'Salt River Project', 'Utility services and energy', 925.60, '2025-01-23 11:30:00', 'Paid'),
(7, 3, 'Elite Scottsdale Cleaning', 'High-end facility maintenance', 750.00, '2025-01-29 16:10:00', 'Paid'),
(7, 4, 'Scottsdale Premium Auto', 'Luxury vehicle maintenance', 2450.25, '2025-02-04 13:20:00', 'Paid'),
(7, 5, 'Executive Training Solutions', 'Leadership development programs', 1100.00, '2025-02-11 10:45:00', 'Paid'),

-- Branch 8 - Tempe (Suburban) expenses
(8, 1, 'Tempe University Supply', 'Office and operational materials', 265.90, '2025-01-21 09:05:00', 'Paid'),
(8, 2, 'Tempe Municipal Power', 'Monthly utility charges', 685.45, '2025-01-26 14:40:00', 'Paid'),
(8, 3, 'Campus Area Cleaning', 'Regular facility cleaning', 495.75, '2025-02-01 12:25:00', 'Paid'),
(8, 4, 'Tempe Auto Service Center', 'Fleet maintenance and repairs', 1590.80, '2025-02-07 15:50:00', 'Paid'),
(8, 6, 'ASU Tech Services', 'IT support and system maintenance', 520.00, '2025-02-14 11:35:00', 'Paid'),

-- Branch 9 - Los Angeles LAX (Airport) expenses
(9, 1, 'LAX Terminal Supplies', 'Airport operational materials', 565.30, '2025-01-14 07:45:00', 'Paid'),
(9, 2, 'Los Angeles DWP', 'Airport facility electricity', 1850.75, '2025-01-19 13:20:00', 'Paid'),
(9, 3, 'LAX Facility Services', 'Terminal area maintenance', 1250.00, '2025-01-25 10:15:00', 'Paid'),
(9, 4, 'LA Auto Express', 'High-volume fleet servicing', 3250.50, '2025-01-31 16:30:00', 'Paid'),
(9, 9, 'LAX Marketing Partners', 'Airport advertising campaigns', 1850.00, '2025-02-08 14:10:00', 'Paid'),

-- Branch 10 - San Diego (City) expenses
(10, 1, 'San Diego Business Hub', 'Office supplies and materials', 415.85, '2025-01-16 11:20:00', 'Paid'),
(10, 2, 'SDG&E', 'Gas and electric services', 1125.40, '2025-01-22 15:45:00', 'Paid'),
(10, 3, 'Coastal Cleaning Co', 'Facility maintenance services', 685.60, '2025-01-28 12:30:00', 'Paid'),
(10, 4, 'Pacific Auto Care', 'Vehicle maintenance and detailing', 2180.75, '2025-02-04 09:55:00', 'Paid'),
(10, 7, 'Coastal Security Systems', 'Security monitoring and services', 725.00, '2025-02-11 13:15:00', 'Paid'),

-- Branch 11 - San Francisco (City) expenses
(11, 1, 'SF Bay Office Supply', 'Premium office materials', 520.75, '2025-01-15 10:40:00', 'Paid'),
(11, 2, 'PG&E', 'Pacific Gas and Electric services', 1350.90, '2025-01-20 14:25:00', 'Paid'),
(11, 3, 'Golden Gate Cleaning', 'Daily facility maintenance', 890.50, '2025-01-26 16:50:00', 'Paid'),
(11, 4, 'Bay Area Auto Services', 'Urban fleet maintenance', 2650.25, '2025-02-02 11:40:00', 'Paid'),
(11, 8, 'Bay Legal Group', 'Legal services and compliance', 1250.00, '2025-02-09 15:20:00', 'Paid'),

-- Branch 12 - Sacramento (Suburban) expenses
(12, 1, 'Sacramento Supply Center', 'Office and administrative supplies', 335.60, '2025-01-18 09:15:00', 'Paid'),
(12, 2, 'SMUD', 'Sacramento Municipal Utility District', 795.80, '2025-01-24 13:30:00', 'Paid'),
(12, 3, 'Capital City Cleaning', 'Weekly cleaning services', 580.25, '2025-01-30 10:45:00', 'Paid'),
(12, 4, 'Sacramento Auto Center', 'Vehicle servicing and inspections', 1780.50, '2025-02-05 14:20:00', 'Paid'),
(12, 6, 'TechCorp Sacramento', 'IT infrastructure and support', 485.00, '2025-02-12 12:10:00', 'Paid'),

-- Branch 13 - Miami Airport (Airport) expenses
(13, 1, 'Miami Terminal Supply', 'Airport operational supplies', 495.40, '2025-01-17 08:30:00', 'Paid'),
(13, 2, 'Florida Power & Light', 'Airport facility electricity', 1650.75, '2025-01-23 12:55:00', 'Paid'),
(13, 3, 'Tropical Facility Services', 'Humidity control and cleaning', 985.60, '2025-01-29 15:40:00', 'Paid'),
(13, 4, 'Miami Fleet Solutions', 'Tropical climate vehicle care', 2850.30, '2025-02-06 11:25:00', 'Paid'),
(13, 9, 'South Beach Marketing', 'Tourism-focused advertising', 1450.00, '2025-02-13 16:15:00', 'Pending'),

-- Branch 14 - Tampa (City) expenses
(14, 1, 'Tampa Bay Supply Co', 'General office materials', 365.90, '2025-01-19 13:45:00', 'Paid'),
(14, 2, 'Tampa Electric Company', 'Monthly utility services', 885.25, '2025-01-25 10:20:00', 'Paid'),
(14, 3, 'Gulf Coast Cleaning', 'Regular facility maintenance', 620.75, '2025-02-01 14:35:00', 'Paid'),
(14, 4, 'Tampa Auto Express', 'Fleet maintenance and repairs', 1950.80, '2025-02-07 09:50:00', 'Paid'),
(14, 10, 'Florida Insurance Partners', 'Business insurance coverage', 780.00, '2025-02-14 12:40:00', 'Paid'),

-- Branch 15 - Jacksonville (Suburban) expenses
(15, 1, 'Jacksonville Business Center', 'Office supplies and equipment', 315.50, '2025-01-20 11:10:00', 'Paid'),
(15, 2, 'JEA (Jacksonville Electric)', 'Municipal utility services', 725.60, '2025-01-26 15:25:00', 'Paid'),
(15, 3, 'River City Maintenance', 'Facility cleaning and upkeep', 555.40, '2025-02-02 08:45:00', 'Paid'),
(15, 4, 'First Coast Auto Care', 'Vehicle maintenance services', 1685.90, '2025-02-08 13:55:00', 'Paid'),
(15, 7, 'Northeast FL Security', 'Security systems and monitoring', 650.00, '2025-02-15 10:30:00', 'Paid'),

-- Branch 16 - Orlando (Suburban) expenses
(16, 1, 'Orlando Office Depot', 'Tourism area office supplies', 385.75, '2025-01-16 12:20:00', 'Paid'),
(16, 2, 'Orlando Utilities Commission', 'Electric and water services', 925.80, '2025-01-22 09:40:00', 'Paid'),
(16, 3, 'Theme Park Area Cleaning', 'High-traffic facility maintenance', 745.50, '2025-01-28 14:15:00', 'Paid'),
(16, 4, 'Central Florida Auto', 'Tourist rental fleet maintenance', 2150.25, '2025-02-04 16:25:00', 'Paid'),
(16, 5, 'Orlando Training Institute', 'Customer service training programs', 875.00, '2025-02-11 11:50:00', 'Pending');
GO

-------------------------------------------------------
-- Insert Employee Addresses for All Employees
-- Note: Addresses for placeholder employee_ids 1-10 and additional employees
--------------------------------------------------------
INSERT INTO Operation.Employee_Address (
    employee_id, street_address, address_line2, city, state, zip_code
)
VALUES
-- Employee_id 1-10: Placeholder employees referenced in inspection records
(1, '2847 Spring Valley Rd', 'Apt 12A', 'Las Vegas', 'NV', '89134'),
(2, '1205 Desert Inn Road', NULL, 'Las Vegas', 'NV', '89169'),
(3, '875 S. Rainbow Blvd', 'Suite 204', 'Las Vegas', 'NV', '89145'),
(4, '3420 Paradise Road', NULL, 'Las Vegas', 'NV', '89169'),
(5, '1850 E. Flamingo Road', 'Unit 8B', 'Las Vegas', 'NV', '89119'),
(6, '925 Charleston Blvd', NULL, 'Las Vegas', 'NV', '89101'),
(7, '4567 Maryland Pkwy', 'Apt 301', 'Las Vegas', 'NV', '89119'),
(8, '2130 Las Vegas Blvd N', NULL, 'Las Vegas', 'NV', '89030'),
(9, '675 E. Sahara Ave', 'Suite 15', 'Las Vegas', 'NV', '89104'),
(10, '3890 Blue Diamond Rd', NULL, 'Las Vegas', 'NV', '89139'),

-- Additional employees for comprehensive coverage across all branches
-- Las Vegas area employees (Branch 1)
(11, '1254 W. Sunset Road', 'Apt 7C', 'Henderson', 'NV', '89014'),
(12, '2975 Green Valley Pkwy', NULL, 'Henderson', 'NV', '89014'),
(13, '845 Gibson Road', 'Unit 12', 'Henderson', 'NV', '89011'),

-- Reno area employees (Branch 2)  
(14, '1450 Kietzke Lane', NULL, 'Reno', 'NV', '89502'),
(15, '875 Mill Street', 'Apt 4B', 'Reno', 'NV', '89502'),
(16, '2340 Northgate Lane', NULL, 'Reno', 'NV', '89502'),

-- Phoenix area employees (Branch 5)
(17, '4567 N. 7th Avenue', 'Suite 201', 'Phoenix', 'AZ', '85013'),
(18, '2890 E. McDowell Road', NULL, 'Phoenix', 'AZ', '85008'),
(19, '1675 W. Indian School Rd', 'Apt 305', 'Phoenix', 'AZ', '85015'),
(20, '3420 S. Central Avenue', NULL, 'Phoenix', 'AZ', '85040'),

-- Tucson area employees (Branch 6)
(21, '2145 E. Broadway Blvd', 'Unit 8', 'Tucson', 'AZ', '85719'),
(22, '975 N. Stone Avenue', NULL, 'Tucson', 'AZ', '85705'),
(23, '3680 E. Speedway Blvd', 'Apt 12', 'Tucson', 'AZ', '85716'),

-- Scottsdale area employees (Branch 7)  
(24, '7890 E. Shea Blvd', 'Suite 150', 'Scottsdale', 'AZ', '85260'),
(25, '4520 N. Scottsdale Road', NULL, 'Scottsdale', 'AZ', '85251'),
(26, '8765 E. Indian Bend Rd', 'Apt 401', 'Scottsdale', 'AZ', '85250'),

-- Los Angeles area employees (Branch 9)
(27, '12450 W. Olympic Blvd', 'Apt 205', 'Los Angeles', 'CA', '90064'),
(28, '8975 Sunset Strip', NULL, 'West Hollywood', 'CA', '90069'),
(29, '15675 Ventura Blvd', 'Suite 320', 'Sherman Oaks', 'CA', '91403'),
(30, '4890 Wilshire Blvd', NULL, 'Los Angeles', 'CA', '90010'),

-- San Diego area employees (Branch 10)
(31, '2847 University Avenue', 'Apt 8C', 'San Diego', 'CA', '92104'),
(32, '1456 Fifth Avenue', NULL, 'San Diego', 'CA', '92101'),
(33, '6789 Mission Gorge Rd', 'Unit 15', 'San Diego', 'CA', '92120'),

-- San Francisco area employees (Branch 11)
(34, '1847 Market Street', 'Apt 12B', 'San Francisco', 'CA', '94103'),
(35, '2950 Van Ness Avenue', NULL, 'San Francisco', 'CA', '94109'),
(36, '675 Mission Street', 'Suite 801', 'San Francisco', 'CA', '94105'),
(37, '4320 Geary Blvd', NULL, 'San Francisco', 'CA', '94118'),

-- Sacramento area employees (Branch 12)
(38, '3456 J Street', 'Apt 204', 'Sacramento', 'CA', '95816'),
(39, '1890 Capitol Avenue', NULL, 'Sacramento', 'CA', '95814'),
(40, '5670 Freeport Blvd', 'Unit 7', 'Sacramento', 'CA', '95822'),

-- Miami area employees (Branch 13)
(41, '8945 Biscayne Blvd', 'Apt 1205', 'Miami', 'FL', '33138'),
(42, '2567 Collins Avenue', NULL, 'Miami Beach', 'FL', '33139'),
(43, '4890 NW 7th Street', 'Suite 150', 'Miami', 'FL', '33126'),
(44, '1675 SW 8th Street', NULL, 'Miami', 'FL', '33135'),

-- Tampa area employees (Branch 14)
(45, '2145 W. Kennedy Blvd', 'Apt 8B', 'Tampa', 'FL', '33609'),
(46, '3670 Henderson Blvd', NULL, 'Tampa', 'FL', '33629'),
(47, '1456 N. Dale Mabry Hwy', 'Unit 12', 'Tampa', 'FL', '33618'),

-- Jacksonville area employees (Branch 15)
(48, '4567 Beach Blvd', 'Apt 304', 'Jacksonville', 'FL', '32207');
GO


--------------------------------------------------------
-- Insert Operating Hours for All 16 Branches
--------------------------------------------------------
INSERT INTO Operation.Operating_Hours (
    branch_id, day_of_week, open_time, close_time, after_hours_dropoff
)
VALUES
-- Branch 1: Las Vegas McCarran Airport (Extended airport hours)
(1, 'Monday', '05:00:00', '23:30:00', 1),
(1, 'Tuesday', '05:00:00', '23:30:00', 1),
(1, 'Wednesday', '05:00:00', '23:30:00', 1),
(1, 'Thursday', '05:00:00', '23:30:00', 1),
(1, 'Friday', '05:00:00', '23:30:00', 1),
(1, 'Saturday', '05:00:00', '23:30:00', 1),
(1, 'Sunday', '05:00:00', '23:30:00', 1),

-- Branch 2: Reno (City location - standard business hours)
(2, 'Monday', '07:00:00', '19:00:00', 1),
(2, 'Tuesday', '07:00:00', '19:00:00', 1),
(2, 'Wednesday', '07:00:00', '19:00:00', 1),
(2, 'Thursday', '07:00:00', '19:00:00', 1),
(2, 'Friday', '07:00:00', '19:00:00', 1),
(2, 'Saturday', '08:00:00', '18:00:00', 1),
(2, 'Sunday', '09:00:00', '17:00:00', 0),

-- Branch 3: Henderson (Suburban - standard hours)
(3, 'Monday', '08:00:00', '18:00:00', 1),
(3, 'Tuesday', '08:00:00', '18:00:00', 1),
(3, 'Wednesday', '08:00:00', '18:00:00', 1),
(3, 'Thursday', '08:00:00', '18:00:00', 1),
(3, 'Friday', '08:00:00', '18:00:00', 1),
(3, 'Saturday', '09:00:00', '17:00:00', 0),
(3, 'Sunday', '10:00:00', '16:00:00', 0),

-- Branch 4: North Las Vegas (Suburban - standard hours)
(4, 'Monday', '08:00:00', '18:00:00', 1),
(4, 'Tuesday', '08:00:00', '18:00:00', 1),
(4, 'Wednesday', '08:00:00', '18:00:00', 1),
(4, 'Thursday', '08:00:00', '18:00:00', 1),
(4, 'Friday', '08:00:00', '18:00:00', 1),
(4, 'Saturday', '09:00:00', '17:00:00', 0),
(4, 'Sunday', '10:00:00', '16:00:00', 0),

-- Branch 5: Phoenix Sky Harbor Airport (Extended airport hours)
(5, 'Monday', '05:00:00', '23:59:00', 1),
(5, 'Tuesday', '05:00:00', '23:59:00', 1),
(5, 'Wednesday', '05:00:00', '23:59:00', 1),
(5, 'Thursday', '05:00:00', '23:59:00', 1),
(5, 'Friday', '05:00:00', '23:59:00', 1),
(5, 'Saturday', '05:00:00', '23:59:00', 1),
(5, 'Sunday', '05:00:00', '23:59:00', 1),

-- Branch 6: Tucson (City location - standard business hours)
(6, 'Monday', '07:30:00', '18:30:00', 1),
(6, 'Tuesday', '07:30:00', '18:30:00', 1),
(6, 'Wednesday', '07:30:00', '18:30:00', 1),
(6, 'Thursday', '07:30:00', '18:30:00', 1),
(6, 'Friday', '07:30:00', '18:30:00', 1),
(6, 'Saturday', '08:00:00', '17:00:00', 1),
(6, 'Sunday', '09:00:00', '16:00:00', 0),

-- Branch 7: Scottsdale (City - extended hours for upscale clientele)
(7, 'Monday', '07:00:00', '20:00:00', 1),
(7, 'Tuesday', '07:00:00', '20:00:00', 1),
(7, 'Wednesday', '07:00:00', '20:00:00', 1),
(7, 'Thursday', '07:00:00', '20:00:00', 1),
(7, 'Friday', '07:00:00', '20:00:00', 1),
(7, 'Saturday', '08:00:00', '19:00:00', 1),
(7, 'Sunday', '09:00:00', '18:00:00', 0),

-- Branch 8: Tempe (Suburban - university area hours)
(8, 'Monday', '08:00:00', '19:00:00', 1),
(8, 'Tuesday', '08:00:00', '19:00:00', 1),
(8, 'Wednesday', '08:00:00', '19:00:00', 1),
(8, 'Thursday', '08:00:00', '19:00:00', 1),
(8, 'Friday', '08:00:00', '19:00:00', 1),
(8, 'Saturday', '09:00:00', '18:00:00', 1),
(8, 'Sunday', '10:00:00', '17:00:00', 0),

-- Branch 9: Los Angeles LAX Airport (24-hour airport operations)
(9, 'Monday', '00:00:00', '23:59:00', 1),
(9, 'Tuesday', '00:00:00', '23:59:00', 1),
(9, 'Wednesday', '00:00:00', '23:59:00', 1),
(9, 'Thursday', '00:00:00', '23:59:00', 1),
(9, 'Friday', '00:00:00', '23:59:00', 1),
(9, 'Saturday', '00:00:00', '23:59:00', 1),
(9, 'Sunday', '00:00:00', '23:59:00', 1),

-- Branch 10: San Diego (City - extended coastal hours)
(10, 'Monday', '07:00:00', '19:30:00', 1),
(10, 'Tuesday', '07:00:00', '19:30:00', 1),
(10, 'Wednesday', '07:00:00', '19:30:00', 1),
(10, 'Thursday', '07:00:00', '19:30:00', 1),
(10, 'Friday', '07:00:00', '19:30:00', 1),
(10, 'Saturday', '08:00:00', '18:30:00', 1),
(10, 'Sunday', '09:00:00', '17:30:00', 0),

-- Branch 11: San Francisco (City - business district hours)
(11, 'Monday', '06:30:00', '20:00:00', 1),
(11, 'Tuesday', '06:30:00', '20:00:00', 1),
(11, 'Wednesday', '06:30:00', '20:00:00', 1),
(11, 'Thursday', '06:30:00', '20:00:00', 1),
(11, 'Friday', '06:30:00', '20:00:00', 1),
(11, 'Saturday', '08:00:00', '18:00:00', 1),
(11, 'Sunday', '09:00:00', '17:00:00', 0),

-- Branch 12: Sacramento (Suburban - standard hours)
(12, 'Monday', '08:00:00', '18:00:00', 1),
(12, 'Tuesday', '08:00:00', '18:00:00', 1),
(12, 'Wednesday', '08:00:00', '18:00:00', 1),
(12, 'Thursday', '08:00:00', '18:00:00', 1),
(12, 'Friday', '08:00:00', '18:00:00', 1),
(12, 'Saturday', '09:00:00', '17:00:00', 0),
(12, 'Sunday', '10:00:00', '16:00:00', 0),

-- Branch 13: Miami International Airport (Extended airport hours)
(13, 'Monday', '05:00:00', '23:30:00', 1),
(13, 'Tuesday', '05:00:00', '23:30:00', 1),
(13, 'Wednesday', '05:00:00', '23:30:00', 1),
(13, 'Thursday', '05:00:00', '23:30:00', 1),
(13, 'Friday', '05:00:00', '23:30:00', 1),
(13, 'Saturday', '05:00:00', '23:30:00', 1),
(13, 'Sunday', '05:00:00', '23:30:00', 1),

-- Branch 14: Tampa (City - standard business hours)
(14, 'Monday', '07:30:00', '19:00:00', 1),
(14, 'Tuesday', '07:30:00', '19:00:00', 1),
(14, 'Wednesday', '07:30:00', '19:00:00', 1),
(14, 'Thursday', '07:30:00', '19:00:00', 1),
(14, 'Friday', '07:30:00', '19:00:00', 1),
(14, 'Saturday', '08:30:00', '18:00:00', 1),
(14, 'Sunday', '09:30:00', '17:00:00', 0),

-- Branch 15: Jacksonville (Suburban - standard hours)
(15, 'Monday', '08:00:00', '18:00:00', 1),
(15, 'Tuesday', '08:00:00', '18:00:00', 1),
(15, 'Wednesday', '08:00:00', '18:00:00', 1),
(15, 'Thursday', '08:00:00', '18:00:00', 1),
(15, 'Friday', '08:00:00', '18:00:00', 1),
(15, 'Saturday', '09:00:00', '17:00:00', 0),
(15, 'Sunday', '10:00:00', '16:00:00', 0),

-- Branch 16: Orlando (Suburban - tourist area extended hours)
(16, 'Monday', '07:00:00', '20:00:00', 1),
(16, 'Tuesday', '07:00:00', '20:00:00', 1),
(16, 'Wednesday', '07:00:00', '20:00:00', 1),
(16, 'Thursday', '07:00:00', '20:00:00', 1),
(16, 'Friday', '07:00:00', '20:00:00', 1),
(16, 'Saturday', '08:00:00', '19:00:00', 1),
(16, 'Sunday', '09:00:00', '18:00:00', 1);
GO


--------------------------------------------------------
-- Insert Branch Addresses for All 16 Branches
--------------------------------------------------------
INSERT INTO Operation.Branch_Address (
    branch_id, street_address, address_line2, city, state, zip_code
)
VALUES
-- Branch 1: Las Vegas McCarran Airport (Airport)
(1, '7135 Gilespie Street', 'Rental Car Center', 'Las Vegas', 'NV', '89119'),

-- Branch 2: Reno (City)
(2, '2001 E. Plumb Lane', NULL, 'Reno', 'NV', '89502'),

-- Branch 3: Henderson (Suburban)
(3, '1399 W. Horizon Ridge Parkway', 'Suite 115', 'Henderson', 'NV', '89012'),

-- Branch 4: North Las Vegas (Suburban)
(4, '2210 N. Decatur Boulevard', NULL, 'North Las Vegas', 'NV', '89108'),

-- Branch 5: Phoenix Sky Harbor Airport (Airport)
(5, '3400 E. Sky Harbor Blvd', 'Rental Car Center Level 1', 'Phoenix', 'AZ', '85034'),

-- Branch 6: Tucson (City)
(6, '6801 E. Tanque Verde Road', 'Suite 140', 'Tucson', 'AZ', '85715'),

-- Branch 7: Scottsdale (City - upscale)
(7, '15169 N. Scottsdale Road', NULL, 'Scottsdale', 'AZ', '85254'),

-- Branch 8: Tempe (Suburban - university area)
(8, '1625 W. University Drive', 'Building C', 'Tempe', 'AZ', '85281'),

-- Branch 9: Los Angeles LAX Airport (Airport - 24-hour)
(9, '9100 Airport Boulevard', 'Consolidated Rental Car Facility', 'Los Angeles', 'CA', '90045'),

-- Branch 10: San Diego (City - coastal)
(10, '3355 Admiral Boland Way', NULL, 'San Diego', 'CA', '92101'),

-- Branch 11: San Francisco (City - business district)
(11, '780 McDonnell Road', 'Level 5 Garage', 'San Francisco', 'CA', '94128'),

-- Branch 12: Sacramento (Suburban)
(12, '2631 El Centro Road', 'Suite 200', 'Sacramento', 'CA', '95833'),

-- Branch 13: Miami International Airport (Airport)
(13, '3900 NW 25th Street', 'Rental Car Center Level 2', 'Miami', 'FL', '33142'),

-- Branch 14: Tampa (City)
(14, '4620 W. Kennedy Boulevard', NULL, 'Tampa', 'FL', '33609'),

-- Branch 15: Jacksonville (Suburban)
(15, '13475 Atlantic Boulevard', 'Suite 105', 'Jacksonville', 'FL', '32225'),

-- Branch 16: Orlando (Suburban - tourist area)
(16, '5905 International Drive', 'Tourism Plaza', 'Orlando', 'FL', '32819');
GO


--------------------------------------------------------
-- Insert Customer.License data for all 200 customers
--------------------------------------------------------
INSERT INTO Customer.License (
    customer_id, license_number, license_state, license_type, 
    issue_date, expiry_date, license_status, is_verified, age_verified, verified_date
)
VALUES
-- First 50 customers (1-50)
(1, 'MN1234567', 'Minnesota', 'Class D', '2020-03-12', '2025-03-12', 'Active', 1, 1, '2020-03-13'),
(2, 'MN2234568', 'Minnesota', 'Class D', '2019-07-08', '2024-07-08', 'Active', 1, 1, '2019-07-09'),
(3, 'MN3234569', 'Minnesota', 'Class D', '2021-11-21', '2026-11-21', 'Active', 1, 1, '2021-11-22'),
(4, 'MN4234570', 'Minnesota', 'Class D', '2020-05-14', '2025-05-14', 'Active', 1, 1, '2020-05-15'),
(5, 'MN5234571', 'Minnesota', 'Class D', '2018-09-03', '2023-09-03', 'Expired', 1, 1, '2018-09-04'),
(6, 'MN6234572', 'Minnesota', 'Class D', '2019-01-20', '2024-01-20', 'Expired', 1, 1, '2019-01-21'),
(7, 'MN7234573', 'Minnesota', 'Class D', '2022-06-15', '2027-06-15', 'Active', 1, 1, '2022-06-16'),
(8, 'MN8234574', 'Minnesota', 'Class D', '2021-10-08', '2026-10-08', 'Active', 1, 1, '2021-10-09'),
(9, 'MN9234575', 'Minnesota', 'Class D', '2020-02-22', '2025-02-22', 'Active', 1, 1, '2020-02-23'),
(10, 'MN0234576', 'Minnesota', 'Class D', '2018-07-11', '2023-07-11', 'Expired', 1, 1, '2018-07-12'),
(11, 'MN1345678', 'Minnesota', 'Class D', '2021-04-05', '2026-04-05', 'Active', 1, 1, '2021-04-06'),
(12, 'MN1234590', 'Minnesota', 'Class D', '2019-12-18', '2024-12-18', 'Expired', 1, 1, '2019-12-19'),
(13, 'MN1345679', 'Minnesota', 'Class D', '2022-08-30', '2027-08-30', 'Active', 1, 1, '2022-08-31'),
(14, 'MN1456780', 'Minnesota', 'Class D', '2020-01-14', '2025-01-14', 'Active', 1, 1, '2020-01-15'),
(15, 'MN1567891', 'Minnesota', 'Class D', '2021-03-27', '2026-03-27', 'Active', 1, 1, '2021-03-28'),
(16, 'MN1678902', 'Minnesota', 'Class D', '2019-11-09', '2024-11-09', 'Expired', 1, 1, '2019-11-10'),
(17, 'MN1789013', 'Minnesota', 'Class D', '2020-09-16', '2025-09-16', 'Active', 1, 1, '2020-09-17'),
(18, 'MN1890124', 'Minnesota', 'Class D', '2021-07-23', '2026-07-23', 'Active', 1, 1, '2021-07-24'),
(19, 'MN1901235', 'Minnesota', 'Class D', '2018-05-02', '2023-05-02', 'Expired', 1, 1, '2018-05-03'),
(20, 'MN2012346', 'Minnesota', 'Class D', '2022-10-14', '2027-10-14', 'Active', 1, 1, '2022-10-15'),
(21, 'MN2123457', 'Minnesota', 'Class D', '2020-06-08', '2025-06-08', 'Active', 1, 1, '2020-06-09'),
(22, 'MN2234569', 'Minnesota', 'Class D', '2019-02-19', '2024-02-19', 'Expired', 1, 1, '2019-02-20'),
(23, 'MN2345680', 'Minnesota', 'Class D', '2021-08-12', '2026-08-12', 'Active', 1, 1, '2021-08-13'),
(24, 'MN2456791', 'Minnesota', 'Class D', '2020-04-25', '2025-04-25', 'Active', 1, 1, '2020-04-26'),
(25, 'MN2567892', 'Minnesota', 'Class D', '2018-12-07', '2023-12-07', 'Expired', 1, 1, '2018-12-08'),
(26, 'MN2678903', 'Minnesota', 'Class D', '2022-01-18', '2027-01-18', 'Active', 1, 1, '2022-01-19'),
(27, 'MN2789014', 'Minnesota', 'Class D', '2019-09-30', '2024-09-30', 'Active', 1, 1, '2019-10-01'),
(28, 'MN2890125', 'Minnesota', 'Class D', '2021-05-13', '2026-05-13', 'Active', 1, 1, '2021-05-14'),
(29, 'MN2901236', 'Minnesota', 'Class D', '2020-11-26', '2025-11-26', 'Active', 1, 1, '2020-11-27'),
(30, 'MN3012347', 'Minnesota', 'Class D', '2018-03-15', '2023-03-15', 'Expired', 1, 1, '2018-03-16'),
(31, 'CA1234578', 'California', 'Class D', '2021-03-14', '2026-03-14', 'Active', 1, 1, '2021-03-15'),
(32, 'CA2345679', 'California', 'Commercial', '2020-08-27', '2025-08-27', 'Active', 1, 1, '2020-08-28'),
(33, 'TX3456781', 'Texas', 'Class D', '2019-12-05', '2024-12-05', 'Expired', 1, 1, '2019-12-06'),
(34, 'FL4567895', 'Florida', 'Class D', '2022-07-18', '2027-07-18', 'Active', 1, 1, '2022-07-19'),
(35, 'NY5678903', 'New York', 'Class D', '2021-01-22', '2026-01-22', 'Active', 1, 1, '2021-01-23'),
(36, 'WA6789014', 'Washington', 'Class D', '2020-04-08', '2025-04-08', 'Active', 1, 1, '2020-04-09'),
(37, 'IL7890125', 'Illinois', 'Class D', '2018-10-11', '2023-10-11', 'Expired', 1, 1, '2018-10-12'),
(38, 'OH8901236', 'Ohio', 'Class D', '2021-06-24', '2026-06-24', 'Active', 1, 1, '2021-06-25'),
(39, 'MI9012347', 'Michigan', 'Class D', '2019-08-17', '2024-08-17', 'Active', 1, 1, '2019-08-18'),
(40, 'PA0123458', 'Pennsylvania', 'Class D', '2020-12-30', '2025-12-30', 'Active', 1, 1, '2020-12-31'),
(41, 'GA1234569', 'Georgia', 'Motorcycle', '2022-02-14', '2027-02-14', 'Active', 1, 1, '2022-02-15'),
(42, 'NC2345681', 'North Carolina', 'Class D', '2021-09-03', '2026-09-03', 'Active', 1, 1, '2021-09-04'),
(43, 'VA3456782', 'Virginia', 'Class D', '2019-05-16', '2024-05-16', 'Active', 1, 1, '2019-05-17'),
(44, 'TN4567893', 'Tennessee', 'Class D', '2020-11-29', '2025-11-29', 'Active', 1, 1, '2020-11-30'),
(45, 'CO5678903', 'Colorado', 'Class D', '2018-07-21', '2023-07-21', 'Expired', 1, 1, '2018-07-22'),
(46, 'AZ6789014', 'Arizona', 'Class D', '2021-01-04', '2026-01-04', 'Active', 1, 1, '2021-01-05'),
(47, 'NV7890125', 'Nevada', 'Class D', '2022-04-17', '2027-04-17', 'Active', 1, 1, '2022-04-18'),
(48, 'UT8901236', 'Utah', 'Class D', '2019-10-30', '2024-10-30', 'Active', 1, 1, '2019-10-31'),
(49, 'OR9012347', 'Oregon', 'Class D', '2020-08-13', '2025-08-13', 'Active', 1, 1, '2020-08-14'),
(50, 'WI0123458', 'Wisconsin', 'Class D', '2021-12-26', '2026-12-26', 'Active', 1, 1, '2021-12-27'),

-- Customers 51-100
(51, 'IA1234570', 'Iowa', 'Class D', '2018-06-09', '2023-06-09', 'Expired', 1, 1, '2018-06-10'),
(52, 'KS2345682', 'Kansas', 'Class D', '2020-02-21', '2025-02-21', 'Active', 1, 1, '2020-02-22'),
(53, 'NE3456783', 'Nebraska', 'Commercial', '2021-11-04', '2026-11-04', 'Active', 1, 1, '2021-11-05'),
(54, 'SD4567894', 'South Dakota', 'Class D', '2019-03-18', '2024-03-18', 'Active', 1, 1, '2019-03-19'),
(55, 'ND5678903', 'North Dakota', 'Class D', '2022-09-01', '2027-09-01', 'Active', 1, 1, '2022-09-02'),
(56, 'MT6789014', 'Montana', 'Class D', '2020-05-14', '2025-05-14', 'Active', 1, 1, '2020-05-15'),
(57, 'WY7890125', 'Wyoming', 'Class D', '2018-11-27', '2023-11-27', 'Expired', 1, 1, '2018-11-28'),
(58, 'ID8901236', 'Idaho', 'Class D', '2021-07-10', '2026-07-10', 'Active', 1, 1, '2021-07-11'),
(59, 'AK9012347', 'Alaska', 'Class D', '2019-01-23', '2024-01-23', 'Active', 1, 1, '2019-01-24'),
(60, 'HI0123458', 'Hawaii', 'Class D', '2020-10-06', '2025-10-06', 'Active', 1, 1, '2020-10-07'),
(61, 'ME1234571', 'Maine', 'Class D', '2022-03-19', '2027-03-19', 'Active', 1, 1, '2022-03-20'),
(62, 'NH2345681', 'New Hampshire', 'Class D', '2021-08-02', '2026-08-02', 'Active', 1, 1, '2021-08-03'),
(63, 'VT3456784', 'Vermont', 'Class D', '2018-04-15', '2023-04-15', 'Expired', 1, 1, '2018-04-16'),
(64, 'MA4567893', 'Massachusetts', 'Class D', '2020-12-28', '2025-12-28', 'Active', 1, 1, '2020-12-29'),
(65, 'CT5678904', 'Connecticut', 'Class D', '2019-06-11', '2024-06-11', 'Active', 1, 1, '2019-06-12'),
(66, 'RI6789015', 'Rhode Island', 'Class D', '2021-02-24', '2026-02-24', 'Active', 1, 1, '2021-02-25'),
(67, 'NJ7890126', 'New Jersey', 'Motorcycle', '2020-09-07', '2025-09-07', 'Active', 1, 1, '2020-09-08'),
(68, 'DE8901237', 'Delaware', 'Class D', '2018-12-20', '2023-12-20', 'Expired', 1, 1, '2018-12-21'),
(69, 'MD9012348', 'Maryland', 'Class D', '2022-05-03', '2027-05-03', 'Active', 1, 1, '2022-05-04'),
(70, 'DC0123459', 'Washington DC', 'Class D', '2021-10-16', '2026-10-16', 'Active', 1, 1, '2021-10-17'),
(71, 'SC1234572', 'South Carolina', 'Class D', '2019-07-29', '2024-07-29', 'Active', 1, 1, '2019-07-30'),
(72, 'KY2345683', 'Kentucky', 'Class D', '2020-01-12', '2025-01-12', 'Active', 1, 1, '2020-01-13'),
(73, 'WV3456785', 'West Virginia', 'Class D', '2021-04-25', '2026-04-25', 'Active', 1, 1, '2021-04-26'),
(74, 'AL4567896', 'Alabama', 'Class D', '2018-08-08', '2023-08-08', 'Expired', 1, 1, '2018-08-09'),
(75, 'MS5678905', 'Mississippi', 'Class D', '2022-11-21', '2027-11-21', 'Active', 1, 1, '2022-11-22'),
(76, 'LA6789016', 'Louisiana', 'Commercial', '2020-03-04', '2025-03-04', 'Active', 1, 1, '2020-03-05'),
(77, 'AR7890127', 'Arkansas', 'Class D', '2019-09-17', '2024-09-17', 'Active', 1, 1, '2019-09-18'),
(78, 'MO8901238', 'Missouri', 'Class D', '2021-06-30', '2026-06-30', 'Active', 1, 1, '2021-07-01'),
(79, 'OK9012349', 'Oklahoma', 'Class D', '2020-08-13', '2025-08-13', 'Active', 1, 1, '2020-08-14'),
(80, 'NM0123460', 'New Mexico', 'Class D', '2018-02-26', '2023-02-26', 'Expired', 1, 1, '2018-02-27'),
(81, 'TX1234579', 'Texas', 'Class D', '2021-11-09', '2026-11-09', 'Active', 1, 1, '2021-11-10'),
(82, 'CA2345691', 'California', 'Class D', '2020-07-22', '2025-07-22', 'Active', 1, 1, '2020-07-23'),
(83, 'FL3456792', 'Florida', 'Class D', '2019-03-05', '2024-03-05', 'Active', 1, 1, '2019-03-06'),
(84, 'NY4567893', 'New York', 'Class D', '2022-08-18', '2027-08-18', 'Active', 1, 1, '2022-08-19'),
(85, 'WA5678904', 'Washington', 'Class D', '2021-01-31', '2026-01-31', 'Active', 1, 1, '2021-02-01'),
(86, 'IL6789025', 'Illinois', 'Class D', '2018-10-14', '2023-10-14', 'Expired', 1, 1, '2018-10-15'),
(87, 'OH7890136', 'Ohio', 'Class D', '2020-04-27', '2025-04-27', 'Active', 1, 1, '2020-04-28'),
(88, 'MI8901247', 'Michigan', 'Class D', '2021-12-10', '2026-12-10', 'Active', 1, 1, '2021-12-11'),
(89, 'PA9012358', 'Pennsylvania', 'Class D', '2019-05-23', '2024-05-23', 'Active', 1, 1, '2019-05-24'),
(90, 'GA0123469', 'Georgia', 'Class D', '2020-09-06', '2025-09-06', 'Active', 1, 1, '2020-09-07'),
(91, 'NC1234580', 'North Carolina', 'Class D', '2018-06-19', '2023-06-19', 'Expired', 1, 1, '2018-06-20'),
(92, 'VA2345691', 'Virginia', 'Class D', '2022-02-01', '2027-02-01', 'Active', 1, 1, '2022-02-02'),
(93, 'TN3456792', 'Tennessee', 'Class D', '2021-07-15', '2026-07-15', 'Active', 1, 1, '2021-07-16'),
(94, 'CO4567893', 'Colorado', 'Class D', '2019-11-28', '2024-11-28', 'Active', 1, 1, '2019-11-29'),
(95, 'AZ5678904', 'Arizona', 'Class D', '2020-08-11', '2025-08-11', 'Active', 1, 1, '2020-08-12'),
(96, 'NV6789015', 'Nevada', 'Class D', '2018-04-24', '2023-04-24', 'Expired', 1, 1, '2018-04-25'),
(97, 'UT7890126', 'Utah', 'Class D', '2021-09-07', '2026-09-07', 'Active', 1, 1, '2021-09-08'),
(98, 'OR8901237', 'Oregon', 'Class D', '2020-01-20', '2025-01-20', 'Active', 1, 1, '2020-01-21'),
(99, 'WI9012348', 'Wisconsin', 'Class D', '2022-06-03', '2027-06-03', 'Active', 1, 1, '2022-06-04'),
(100, 'IA0123470', 'Iowa', 'Motorcycle', '2019-10-16', '2024-10-16', 'Active', 1, 1, '2019-10-17'),

-- Customers 101-150
(101, 'KS1234581', 'Kansas', 'Class D', '2021-03-29', '2026-03-29', 'Active', 1, 1, '2021-03-30'),
(102, 'NE2345692', 'Nebraska', 'Class D', '2020-11-12', '2025-11-12', 'Active', 1, 1, '2020-11-13'),
(103, 'SD3456793', 'South Dakota', 'Class D', '2018-07-25', '2023-07-25', 'Expired', 1, 1, '2018-07-26'),
(104, 'ND4567897', 'North Dakota', 'Class D', '2022-04-08', '2027-04-08', 'Active', 1, 1, '2022-04-09'),
(105, 'MT5678905', 'Montana', 'Class D', '2021-08-21', '2026-08-21', 'Active', 1, 1, '2021-08-22'),
(106, 'WY6789026', 'Wyoming', 'Class D', '2019-12-04', '2024-12-04', 'Expired', 1, 1, '2019-12-05'),
(107, 'ID7890137', 'Idaho', 'Class D', '2020-05-17', '2025-05-17', 'Active', 1, 1, '2020-05-18'),
(108, 'AK8901248', 'Alaska', 'Class D', '2018-09-30', '2023-09-30', 'Expired', 1, 1, '2018-10-01'),
(109, 'HI9012359', 'Hawaii', 'Class D', '2021-02-13', '2026-02-13', 'Active', 1, 1, '2021-02-14'),
(110, 'ME0123471', 'Maine', 'Class D', '2020-06-26', '2025-06-26', 'Active', 1, 1, '2020-06-27'),
(111, 'NH1234582', 'New Hampshire', 'Class D', '2022-10-09', '2027-10-09', 'Active', 1, 1, '2022-10-10'),
(112, 'VT2345693', 'Vermont', 'Class D', '2019-01-22', '2024-01-22', 'Active', 1, 1, '2019-01-23'),
(113, 'MA3456794', 'Massachusetts', 'Commercial', '2021-05-05', '2026-05-05', 'Active', 1, 1, '2021-05-06'),
(114, 'CT4567895', 'Connecticut', 'Class D', '2020-12-18', '2025-12-18', 'Active', 1, 1, '2020-12-19'),
(115, 'RI5678906', 'Rhode Island', 'Class D', '2018-08-31', '2023-08-31', 'Expired', 1, 1, '2018-09-01'),
(116, 'NJ6789027', 'New Jersey', 'Class D', '2022-03-14', '2027-03-14', 'Active', 1, 1, '2022-03-15'),
(117, 'DE7890138', 'Delaware', 'Class D', '2021-06-27', '2026-06-27', 'Active', 1, 1, '2021-06-28'),
(118, 'MD8901249', 'Maryland', 'Class D', '2019-11-10', '2024-11-10', 'Active', 1, 1, '2019-11-11'),
(119, 'DC9012350', 'Washington DC', 'Class D', '2020-07-23', '2025-07-23', 'Active', 1, 1, '2020-07-24'),
(120, 'SC0123472', 'South Carolina', 'Class D', '2018-04-06', '2023-04-06', 'Expired', 1, 1, '2018-04-07'),
(121, 'KY1234583', 'Kentucky', 'Class D', '2021-08-19', '2026-08-19', 'Active', 1, 1, '2021-08-20'),
(122, 'WV2345694', 'West Virginia', 'Class D', '2020-02-02', '2025-02-02', 'Active', 1, 1, '2020-02-03'),
(123, 'AL3456795', 'Alabama', 'Class D', '2022-09-15', '2027-09-15', 'Active', 1, 1, '2022-09-16'),
(124, 'MS4567896', 'Mississippi', 'Class D', '2019-05-28', '2024-05-28', 'Active', 1, 1, '2019-05-29'),
(125, 'LA5678907', 'Louisiana', 'Motorcycle', '2021-01-11', '2026-01-11', 'Active', 1, 1, '2021-01-12'),
(126, 'AR6789028', 'Arkansas', 'Class D', '2020-10-24', '2025-10-24', 'Active', 1, 1, '2020-10-25'),
(127, 'MO7890139', 'Missouri', 'Class D', '2018-07-07', '2023-07-07', 'Expired', 1, 1, '2018-07-08'),
(128, 'OK8901240', 'Oklahoma', 'Class D', '2022-12-20', '2027-12-20', 'Active', 1, 1, '2022-12-21'),
(129, 'NM9012351', 'New Mexico', 'Class D', '2021-04-03', '2026-04-03', 'Active', 1, 1, '2021-04-04'),
(130, 'TX0123473', 'Texas', 'Class D', '2019-08-16', '2024-08-16', 'Active', 1, 1, '2019-08-17'),
(131, 'CA1234584', 'California', 'Class D', '2020-11-29', '2025-11-29', 'Active', 1, 1, '2020-11-30'),
(132, 'FL2345695', 'Florida', 'Class D', '2018-03-12', '2023-03-12', 'Expired', 1, 1, '2018-03-13'),
(133, 'NY3456796', 'New York', 'Commercial', '2021-06-25', '2026-06-25', 'Active', 1, 1, '2021-06-26'),
(134, 'WA4567897', 'Washington', 'Class D', '2020-09-08', '2025-09-08', 'Active', 1, 1, '2020-09-09'),
(135, 'IL5678908', 'Illinois', 'Class D', '2022-01-21', '2027-01-21', 'Active', 1, 1, '2022-01-22'),
(136, 'OH6789029', 'Ohio', 'Class D', '2019-04-04', '2024-04-04', 'Active', 1, 1, '2019-04-05'),
(137, 'MI7890140', 'Michigan', 'Class D', '2021-10-17', '2026-10-17', 'Active', 1, 1, '2021-10-18'),
(138, 'PA8901241', 'Pennsylvania', 'Class D', '2020-05-30', '2025-05-30', 'Active', 1, 1, '2020-05-31'),
(139, 'GA9012352', 'Georgia', 'Class D', '2018-12-13', '2023-12-13', 'Expired', 1, 1, '2018-12-14'),
(140, 'NC0123474', 'North Carolina', 'Class D', '2022-07-26', '2027-07-26', 'Active', 1, 1, '2022-07-27'),
(141, 'VA1234585', 'Virginia', 'Class D', '2021-02-09', '2026-02-09', 'Active', 1, 1, '2021-02-10'),
(142, 'TN2345696', 'Tennessee', 'Class D', '2019-09-22', '2024-09-22', 'Active', 1, 1, '2019-09-23'),
(143, 'CO3456797', 'Colorado', 'Class D', '2020-12-05', '2025-12-05', 'Active', 1, 1, '2020-12-06'),
(144, 'AZ4567898', 'Arizona', 'Class D', '2018-06-18', '2023-06-18', 'Expired', 1, 1, '2018-06-19'),
(145, 'NV5678909', 'Nevada', 'Class D', '2021-11-01', '2026-11-01', 'Active', 1, 1, '2021-11-02'),
(146, 'UT6789030', 'Utah', 'Motorcycle', '2020-03-14', '2025-03-14', 'Active', 1, 1, '2020-03-15'),
(147, 'OR7890141', 'Oregon', 'Class D', '2022-08-27', '2027-08-27', 'Active', 1, 1, '2022-08-28'),
(148, 'WI8901242', 'Wisconsin', 'Class D', '2019-01-10', '2024-01-10', 'Active', 1, 1, '2019-01-11'),
(149, 'IA9012353', 'Iowa', 'Class D', '2021-05-23', '2026-05-23', 'Active', 1, 1, '2021-05-24'),
(150, 'KS0123475', 'Kansas', 'Class D', '2020-10-06', '2025-10-06', 'Active', 1, 1, '2020-10-07'),

-- Customers 151-200 (Final 50 customers)
(151, 'NE1234586', 'Nebraska', 'Class D', '2018-02-19', '2023-02-19', 'Expired', 1, 1, '2018-02-20'),
(152, 'SD2345697', 'South Dakota', 'Class D', '2022-04-04', '2027-04-04', 'Active', 1, 1, '2022-04-05'),
(153, 'ND3456798', 'North Dakota', 'Class D', '2021-07-17', '2026-07-17', 'Active', 1, 1, '2021-07-18'),
(154, 'MT4567899', 'Montana', 'Class D', '2019-11-30', '2024-11-30', 'Expired', 1, 1, '2019-12-01'),
(155, 'WY5678900', 'Wyoming', 'Commercial', '2020-06-13', '2025-06-13', 'Active', 1, 1, '2020-06-14'),
(156, 'ID6789031', 'Idaho', 'Class D', '2018-09-26', '2023-09-26', 'Expired', 1, 1, '2018-09-27'),
(157, 'AK7890142', 'Alaska', 'Class D', '2021-03-09', '2026-03-09', 'Active', 1, 1, '2021-03-10'),
(158, 'HI8901243', 'Hawaii', 'Class D', '2020-08-22', '2025-08-22', 'Active', 1, 1, '2020-08-23'),
(159, 'ME9012354', 'Maine', 'Class D', '2022-01-05', '2027-01-05', 'Active', 1, 1, '2022-01-06'),
(160, 'NH0123476', 'New Hampshire', 'Class D', '2019-06-18', '2024-06-18', 'Active', 1, 1, '2019-06-19'),
(161, 'VT1234587', 'Vermont', 'Class D', '2021-10-01', '2026-10-01', 'Active', 1, 1, '2021-10-02'),
(162, 'MA2345698', 'Massachusetts', 'Class D', '2020-04-14', '2025-04-14', 'Active', 1, 1, '2020-04-15'),
(163, 'CT3456799', 'Connecticut', 'Class D', '2018-11-27', '2023-11-27', 'Expired', 1, 1, '2018-11-28'),
(164, 'RI4567800', 'Rhode Island', 'Class D', '2022-05-10', '2027-05-10', 'Active', 1, 1, '2022-05-11'),
(165, 'NJ5678901', 'New Jersey', 'Class D', '2021-08-23', '2026-08-23', 'Active', 1, 1, '2021-08-24'),
(166, 'DE6789032', 'Delaware', 'Class D', '2019-12-06', '2024-12-06', 'Expired', 1, 1, '2019-12-07'),
(167, 'MD7890143', 'Maryland', 'Motorcycle', '2020-07-19', '2025-07-19', 'Active', 1, 1, '2020-07-20'),
(168, 'DC8901244', 'Washington DC', 'Class D', '2018-04-02', '2023-04-02', 'Expired', 1, 1, '2018-04-03'),
(169, 'SC9012355', 'South Carolina', 'Class D', '2021-09-15', '2026-09-15', 'Active', 1, 1, '2021-09-16'),
(170, 'KY0123477', 'Kentucky', 'Class D', '2020-02-28', '2025-02-28', 'Active', 1, 1, '2020-02-29'),
(171, 'WV1234588', 'West Virginia', 'Class D', '2022-06-11', '2027-06-11', 'Active', 1, 1, '2022-06-12'),
(172, 'AL2345699', 'Alabama', 'Class D', '2019-03-24', '2024-03-24', 'Active', 1, 1, '2019-03-25'),
(173, 'MS3456800', 'Mississippi', 'Class D', '2021-01-07', '2026-01-07', 'Active', 1, 1, '2021-01-08'),
(174, 'LA4567901', 'Louisiana', 'Commercial', '2020-09-20', '2025-09-20', 'Active', 1, 1, '2020-09-21'),
(175, 'AR5678902', 'Arkansas', 'Class D', '2018-06-03', '2023-06-03', 'Expired', 1, 1, '2018-06-04'),
(176, 'MO6789033', 'Missouri', 'Class D', '2022-11-16', '2027-11-16', 'Active', 1, 1, '2022-11-17'),
(177, 'OK7890144', 'Oklahoma', 'Class D', '2021-04-29', '2026-04-29', 'Active', 1, 1, '2021-04-30'),
(178, 'NM8901245', 'New Mexico', 'Class D', '2019-08-12', '2024-08-12', 'Active', 1, 1, '2019-08-13'),
(179, 'TX9012356', 'Texas', 'Class D', '2020-12-25', '2025-12-25', 'Active', 1, 1, '2020-12-26'),
(180, 'CA0123478', 'California', 'Class D', '2018-03-08', '2023-03-08', 'Expired', 1, 1, '2018-03-09'),
(181, 'FL1234589', 'Florida', 'Class D', '2021-07-21', '2026-07-21', 'Active', 1, 1, '2021-07-22'),
(182, 'NY2345700', 'New York', 'Class D', '2020-01-04', '2025-01-04', 'Active', 1, 1, '2020-01-05'),
(183, 'WA3456801', 'Washington', 'Motorcycle', '2022-10-17', '2027-10-17', 'Active', 1, 1, '2022-10-18'),
(184, 'IL4567902', 'Illinois', 'Class D', '2019-05-30', '2024-05-30', 'Active', 1, 1, '2019-05-31'),
(185, 'OH5678903', 'Ohio', 'Class D', '2021-12-13', '2026-12-13', 'Active', 1, 1, '2021-12-14'),
(186, 'MI6789034', 'Michigan', 'Class D', '2020-08-26', '2025-08-26', 'Active', 1, 1, '2020-08-27'),
(187, 'PA7890145', 'Pennsylvania', 'Class D', '2018-01-09', '2023-01-09', 'Expired', 1, 1, '2018-01-10'),
(188, 'GA8901246', 'Georgia', 'Class D', '2022-03-24', '2027-03-24', 'Active', 1, 1, '2022-03-25'),
(189, 'NC9012357', 'North Carolina', 'Commercial', '2021-06-07', '2026-06-07', 'Active', 1, 1, '2021-06-08'),
(190, 'VA0123479', 'Virginia', 'Class D', '2019-10-20', '2024-10-20', 'Active', 1, 1, '2019-10-21'),
(191, 'TN1234590', 'Tennessee', 'Class D', '2020-04-03', '2025-04-03', 'Active', 1, 1, '2020-04-04'),
(192, 'CO2345701', 'Colorado', 'Class D', '2018-11-16', '2023-11-16', 'Expired', 1, 1, '2018-11-17'),
(193, 'AZ3456802', 'Arizona', 'Class D', '2021-08-29', '2026-08-29', 'Active', 1, 1, '2021-08-30'),
(194, 'NV4567903', 'Nevada', 'Class D', '2020-01-12', '2025-01-12', 'Active', 1, 1, '2020-01-13'),
(195, 'UT5678904', 'Utah', 'Class D', '2022-09-25', '2027-09-25', 'Active', 1, 1, '2022-09-26'),
(196, 'OR6789035', 'Oregon', 'Class D', '2019-02-08', '2024-02-08', 'Active', 1, 1, '2019-02-09'),
(197, 'WI7890146', 'Wisconsin', 'Class D', '2021-05-21', '2026-05-21', 'Active', 1, 1, '2021-05-22'),
(198, 'IA8901247', 'Iowa', 'Class D', '2020-11-04', '2025-11-04', 'Active', 1, 1, '2020-11-05'),
(199, 'KS9012358', 'Kansas', 'Commercial', '2018-07-18', '2023-07-18', 'Expired', 1, 1, '2018-07-19'),
(200, 'NE0123480', 'Nebraska', 'Class D', '2022-02-01', '2027-02-01', 'Active', 1, 1, '2022-02-02');
GO

-------------------------------------------------------
-- Insert Customer.Customer_Address data for all 200 customers
--------------------------------------------------------
INSERT INTO Customer.Customer_Address (
    customer_id, street_address, address_line2, city, state, zip_code, country
)
VALUES
-- First 50 customers (1-50)
(1, '1247 Maple Street', NULL, 'Minneapolis', 'Minnesota', '55401', 'USA'),
(2, '856 Oak Avenue', 'Apt 2B', 'Saint Paul', 'Minnesota', '55102', 'USA'),
(3, '2341 Pine Road', NULL, 'Duluth', 'Minnesota', '55802', 'USA'),
(4, '782 Elm Drive', NULL, 'Rochester', 'Minnesota', '55901', 'USA'),
(5, '1523 Cedar Lane', 'Unit 5', 'Bloomington', 'Minnesota', '55420', 'USA'),
(6, '967 Birch Street', NULL, 'Plymouth', 'Minnesota', '55447', 'USA'),
(7, '445 Willow Court', NULL, 'Woodbury', 'Minnesota', '55125', 'USA'),
(8, '1789 Cherry Avenue', 'Apt 12', 'Eagan', 'Minnesota', '55121', 'USA'),
(9, '634 Spruce Way', NULL, 'Brooklyn Park', 'Minnesota', '55428', 'USA'),
(10, '1156 Ash Boulevard', NULL, 'Minnetonka', 'Minnesota', '55305', 'USA'),
(11, '823 Hickory Lane', NULL, 'Edina', 'Minnesota', '55424', 'USA'),
(12, '2078 Poplar Street', 'Suite 3', 'Burnsville', 'Minnesota', '55337', 'USA'),
(13, '567 Magnolia Drive', NULL, 'Coon Rapids', 'Minnesota', '55433', 'USA'),
(14, '1445 Walnut Avenue', NULL, 'Lakeville', 'Minnesota', '55044', 'USA'),
(15, '789 Chestnut Road', 'Apt 7A', 'Apple Valley', 'Minnesota', '55124', 'USA'),
(16, '1672 Sycamore Court', NULL, 'Blaine', 'Minnesota', '55449', 'USA'),
(17, '934 Dogwood Lane', NULL, 'Inver Grove Heights', 'Minnesota', '55077', 'USA'),
(18, '1287 Redwood Street', NULL, 'Roseville', 'Minnesota', '55113', 'USA'),
(19, '556 Cottonwood Way', 'Unit B', 'Shoreview', 'Minnesota', '55126', 'USA'),
(20, '1823 Basswood Drive', NULL, 'Maplewood', 'Minnesota', '55109', 'USA'),
(21, '712 Ironwood Avenue', NULL, 'Oakdale', 'Minnesota', '55128', 'USA'),
(22, '1459 Beech Street', 'Apt 4', 'White Bear Lake', 'Minnesota', '55110', 'USA'),
(23, '876 Hawthorn Road', NULL, 'Vadnais Heights', 'Minnesota', '55127', 'USA'),
(24, '1634 Linden Court', NULL, 'Little Canada', 'Minnesota', '55117', 'USA'),
(25, '598 Juniper Lane', NULL, 'North Saint Paul', 'Minnesota', '55109', 'USA'),
(26, '1756 Cypress Drive', 'Unit 12', 'Falcon Heights', 'Minnesota', '55108', 'USA'),
(27, '823 Fir Street', NULL, 'Lauderdale', 'Minnesota', '55113', 'USA'),
(28, '1467 Hemlock Avenue', NULL, 'Saint Anthony', 'Minnesota', '55418', 'USA'),
(29, '745 Locust Way', 'Apt 6', 'Columbia Heights', 'Minnesota', '55421', 'USA'),
(30, '1189 Mulberry Road', NULL, 'Fridley', 'Minnesota', '55432', 'USA'),
(31, '2456 Sunset Boulevard', NULL, 'Los Angeles', 'California', '90028', 'USA'),
(32, '1789 Market Street', 'Suite 500', 'San Francisco', 'California', '94102', 'USA'),
(33, '567 Main Street', NULL, 'Houston', 'Texas', '77002', 'USA'),
(34, '1234 Ocean Drive', 'Apt 15B', 'Miami Beach', 'Florida', '33139', 'USA'),
(35, '890 Broadway', NULL, 'New York', 'New York', '10003', 'USA'),
(36, '2345 Pine Street', 'Unit 7', 'Seattle', 'Washington', '98101', 'USA'),
(37, '678 Michigan Avenue', NULL, 'Chicago', 'Illinois', '60611', 'USA'),
(38, '1567 Euclid Avenue', NULL, 'Cleveland', 'Ohio', '44115', 'USA'),
(39, '789 Woodward Avenue', 'Apt 3C', 'Detroit', 'Michigan', '48226', 'USA'),
(40, '2123 Broad Street', NULL, 'Philadelphia', 'Pennsylvania', '19103', 'USA'),
(41, '456 Peachtree Street', NULL, 'Atlanta', 'Georgia', '30309', 'USA'),
(42, '1678 Trade Street', 'Suite 12', 'Charlotte', 'North Carolina', '28202', 'USA'),
(43, '234 Monument Avenue', NULL, 'Richmond', 'Virginia', '23220', 'USA'),
(44, '1845 Music Row', NULL, 'Nashville', 'Tennessee', '37203', 'USA'),
(45, '567 17th Street', 'Apt 9A', 'Denver', 'Colorado', '80202', 'USA'),
(46, '1289 Central Avenue', NULL, 'Phoenix', 'Arizona', '85004', 'USA'),
(47, '678 Las Vegas Boulevard', NULL, 'Las Vegas', 'Nevada', '89101', 'USA'),
(48, '2234 State Street', 'Unit 4', 'Salt Lake City', 'Utah', '84111', 'USA'),
(49, '789 Burnside Street', NULL, 'Portland', 'Oregon', '97209', 'USA'),
(50, '1456 Wisconsin Avenue', NULL, 'Milwaukee', 'Wisconsin', '53202', 'USA'),

-- Customers 51-100
(51, '567 Court Avenue', 'Apt 2A', 'Des Moines', 'Iowa', '50309', 'USA'),
(52, '1789 Kansas Avenue', NULL, 'Topeka', 'Kansas', '66603', 'USA'),
(53, '234 Dodge Street', NULL, 'Omaha', 'Nebraska', '68102', 'USA'),
(54, '1456 Main Street', 'Suite 8', 'Sioux Falls', 'South Dakota', '57104', 'USA'),
(55, '678 Broadway', NULL, 'Fargo', 'North Dakota', '58102', 'USA'),
(56, '2123 Last Chance Gulch', NULL, 'Helena', 'Montana', '59601', 'USA'),
(57, '789 Central Avenue', 'Unit 3', 'Cheyenne', 'Wyoming', '82001', 'USA'),
(58, '1567 State Street', NULL, 'Boise', 'Idaho', '83702', 'USA'),
(59, '456 4th Avenue', NULL, 'Anchorage', 'Alaska', '99501', 'USA'),
(60, '1234 Kalakaua Avenue', 'Apt 12B', 'Honolulu', 'Hawaii', '96815', 'USA'),
(61, '678 Exchange Street', NULL, 'Portland', 'Maine', '04101', 'USA'),
(62, '1789 Elm Street', NULL, 'Manchester', 'New Hampshire', '03101', 'USA'),
(63, '234 Main Street', 'Suite 5', 'Montpelier', 'Vermont', '05602', 'USA'),
(64, '1456 Beacon Street', NULL, 'Boston', 'Massachusetts', '02108', 'USA'),
(65, '567 Chapel Street', NULL, 'New Haven', 'Connecticut', '06511', 'USA'),
(66, '1789 Thames Street', 'Unit 7', 'Newport', 'Rhode Island', '02840', 'USA'),
(67, '234 Boardwalk', NULL, 'Atlantic City', 'New Jersey', '08401', 'USA'),
(68, '1456 Market Street', 'Apt 4B', 'Wilmington', 'Delaware', '19801', 'USA'),
(69, '678 Pratt Street', NULL, 'Baltimore', 'Maryland', '21202', 'USA'),
(70, '1234 Pennsylvania Avenue', NULL, 'Washington', 'District of Columbia', '20004', 'USA'),
(71, '567 King Street', 'Suite 10', 'Charleston', 'South Carolina', '29401', 'USA'),
(72, '1789 Main Street', NULL, 'Louisville', 'Kentucky', '40202', 'USA'),
(73, '234 Capitol Street', NULL, 'Charleston', 'West Virginia', '25301', 'USA'),
(74, '1456 Dexter Avenue', 'Unit 6', 'Montgomery', 'Alabama', '36104', 'USA'),
(75, '678 State Street', NULL, 'Jackson', 'Mississippi', '39201', 'USA'),
(76, '1234 Canal Street', NULL, 'New Orleans', 'Louisiana', '70112', 'USA'),
(77, '567 Main Street', 'Apt 8A', 'Little Rock', 'Arkansas', '72201', 'USA'),
(78, '1789 Market Street', NULL, 'Saint Louis', 'Missouri', '63101', 'USA'),
(79, '234 Broadway', NULL, 'Oklahoma City', 'Oklahoma', '73102', 'USA'),
(80, '1456 Central Avenue', 'Suite 3', 'Albuquerque', 'New Mexico', '87102', 'USA'),
(81, '678 Main Street', NULL, 'Dallas', 'Texas', '75201', 'USA'),
(82, '1234 Hollywood Boulevard', NULL, 'Hollywood', 'California', '90028', 'USA'),
(83, '567 Collins Avenue', 'Apt 20A', 'Miami Beach', 'Florida', '33139', 'USA'),
(84, '1789 Park Avenue', NULL, 'New York', 'New York', '10016', 'USA'),
(85, '234 1st Avenue', 'Unit 15', 'Seattle', 'Washington', '98104', 'USA'),
(86, '1456 State Street', NULL, 'Chicago', 'Illinois', '60605', 'USA'),
(87, '678 Superior Avenue', NULL, 'Cleveland', 'Ohio', '44113', 'USA'),
(88, '1234 Cass Avenue', 'Apt 5B', 'Detroit', 'Michigan', '48201', 'USA'),
(89, '567 Walnut Street', NULL, 'Philadelphia', 'Pennsylvania', '19106', 'USA'),
(90, '1789 Spring Street', NULL, 'Atlanta', 'Georgia', '30309', 'USA'),
(91, '234 Tryon Street', 'Suite 25', 'Charlotte', 'North Carolina', '28202', 'USA'),
(92, '1456 Broad Street', NULL, 'Richmond', 'Virginia', '23219', 'USA'),
(93, '678 Church Street', NULL, 'Nashville', 'Tennessee', '37201', 'USA'),
(94, '1234 Larimer Street', 'Unit 8', 'Denver', 'Colorado', '80205', 'USA'),
(95, '567 Washington Street', NULL, 'Phoenix', 'Arizona', '85003', 'USA'),
(96, '1789 Fremont Street', NULL, 'Las Vegas', 'Nevada', '89101', 'USA'),
(97, '234 South Temple', 'Apt 12', 'Salt Lake City', 'Utah', '84101', 'USA'),
(98, '1456 Hawthorne Boulevard', NULL, 'Portland', 'Oregon', '97214', 'USA'),
(99, '678 Water Street', NULL, 'Milwaukee', 'Wisconsin', '53202', 'USA'),
(100, '1234 Grand Avenue', 'Suite 6', 'Des Moines', 'Iowa', '50312', 'USA'),

-- Customers 101-150
(101, '567 Massachusetts Street', NULL, 'Lawrence', 'Kansas', '66044', 'USA'),
(102, '1789 Cuming Street', 'Unit 4', 'Omaha', 'Nebraska', '68131', 'USA'),
(103, '234 Phillips Avenue', NULL, 'Sioux Falls', 'South Dakota', '57104', 'USA'),
(104, '1456 University Drive', NULL, 'Fargo', 'North Dakota', '58102', 'USA'),
(105, '678 Harrison Avenue', 'Apt 3A', 'Butte', 'Montana', '59701', 'USA'),
(106, '1234 Lincolnway', NULL, 'Laramie', 'Wyoming', '82070', 'USA'),
(107, '567 Jefferson Street', NULL, 'Boise', 'Idaho', '83701', 'USA'),
(108, '1789 Northern Lights Boulevard', 'Suite 12', 'Anchorage', 'Alaska', '99503', 'USA'),
(109, '234 Beretania Street', NULL, 'Honolulu', 'Hawaii', '96813', 'USA'),
(110, '1456 Congress Street', 'Unit 9', 'Portland', 'Maine', '04102', 'USA'),
(111, '678 Hanover Street', NULL, 'Manchester', 'New Hampshire', '03104', 'USA'),
(112, '1234 State Street', NULL, 'Montpelier', 'Vermont', '05601', 'USA'),
(113, '567 Commonwealth Avenue', 'Apt 7B', 'Boston', 'Massachusetts', '02215', 'USA'),
(114, '1789 Whitney Avenue', NULL, 'Hamden', 'Connecticut', '06517', 'USA'),
(115, '234 Atwells Avenue', NULL, 'Providence', 'Rhode Island', '02903', 'USA'),
(116, '1456 Nassau Street', 'Suite 8', 'Princeton', 'New Jersey', '08540', 'USA'),
(117, '678 Delaware Avenue', NULL, 'Wilmington', 'Delaware', '19801', 'USA'),
(118, '1234 Charles Street', 'Unit 5', 'Baltimore', 'Maryland', '21201', 'USA'),
(119, '567 Connecticut Avenue', NULL, 'Washington', 'District of Columbia', '20008', 'USA'),
(120, '1789 Meeting Street', NULL, 'Charleston', 'South Carolina', '29401', 'USA'),
(121, '234 Bardstown Road', 'Apt 11A', 'Louisville', 'Kentucky', '40204', 'USA'),
(122, '1456 Quarrier Street', NULL, 'Charleston', 'West Virginia', '25301', 'USA'),
(123, '678 Government Street', NULL, 'Mobile', 'Alabama', '36602', 'USA'),
(124, '1234 Fortification Street', 'Suite 4', 'Jackson', 'Mississippi', '39202', 'USA'),
(125, '567 Magazine Street', NULL, 'New Orleans', 'Louisiana', '70130', 'USA'),
(126, '1789 Kavanaugh Boulevard', 'Unit 7', 'Little Rock', 'Arkansas', '72205', 'USA'),
(127, '234 Grand Boulevard', NULL, 'Saint Louis', 'Missouri', '63103', 'USA'),
(128, '1456 Main Street', NULL, 'Norman', 'Oklahoma', '73069', 'USA'),
(129, '678 4th Street', 'Apt 6B', 'Albuquerque', 'New Mexico', '87102', 'USA'),
(130, '1234 Commerce Street', NULL, 'Fort Worth', 'Texas', '76102', 'USA'),
(131, '567 Rodeo Drive', NULL, 'Beverly Hills', 'California', '90210', 'USA'),
(132, '1789 Las Olas Boulevard', 'Suite 15', 'Fort Lauderdale', 'Florida', '33301', 'USA'),
(133, '234 Madison Avenue', NULL, 'New York', 'New York', '10016', 'USA'),
(134, '1456 Capitol Hill', 'Unit 12', 'Seattle', 'Washington', '98102', 'USA'),
(135, '678 North Michigan Avenue', NULL, 'Chicago', 'Illinois', '60611', 'USA'),
(136, '1234 East 9th Street', 'Apt 8A', 'Cleveland', 'Ohio', '44115', 'USA'),
(137, '567 Jefferson Avenue', NULL, 'Detroit', 'Michigan', '48226', 'USA'),
(138, '1789 South Street', NULL, 'Philadelphia', 'Pennsylvania', '19146', 'USA'),
(139, '234 Piedmont Avenue', 'Suite 20', 'Atlanta', 'Georgia', '30309', 'USA'),
(140, '1456 South Boulevard', NULL, 'Charlotte', 'North Carolina', '28203', 'USA'),
(141, '678 Grove Avenue', 'Unit 3', 'Richmond', 'Virginia', '23221', 'USA'),
(142, '1234 Broadway', NULL, 'Nashville', 'Tennessee', '37203', 'USA'),
(143, '567 Colfax Avenue', NULL, 'Denver', 'Colorado', '80218', 'USA'),
(144, '1789 Indian School Road', 'Apt 14B', 'Phoenix', 'Arizona', '85016', 'USA'),
(145, '234 Sahara Avenue', NULL, 'Las Vegas', 'Nevada', '89104', 'USA'),
(146, '1456 1300 East', 'Suite 9', 'Salt Lake City', 'Utah', '84102', 'USA'),
(147, '678 Division Street', NULL, 'Portland', 'Oregon', '97202', 'USA'),
(148, '1234 North Avenue', 'Unit 6', 'Milwaukee', 'Wisconsin', '53202', 'USA'),
(149, '567 Locust Street', NULL, 'Des Moines', 'Iowa', '50309', 'USA'),
(150, '1789 Poyntz Avenue', NULL, 'Manhattan', 'Kansas', '66502', 'USA'),

-- Customers 151-200 (Final 50 customers)
(151, '234 North 16th Street', 'Apt 5A', 'Lincoln', 'Nebraska', '68508', 'USA'),
(152, '1456 8th Street', NULL, 'Rapid City', 'South Dakota', '57701', 'USA'),
(153, '678 1st Avenue North', 'Suite 7', 'Fargo', 'North Dakota', '58102', 'USA'),
(154, '1234 Euclid Avenue', NULL, 'Billings', 'Montana', '59101', 'USA'),
(155, '567 Pershing Boulevard', 'Unit 11', 'Cheyenne', 'Wyoming', '82001', 'USA'),
(156, '1789 Vista Avenue', NULL, 'Boise', 'Idaho', '83702', 'USA'),
(157, '234 C Street', NULL, 'Anchorage', 'Alaska', '99501', 'USA'),
(158, '1456 Kapiolani Boulevard', 'Apt 18B', 'Honolulu', 'Hawaii', '96814', 'USA'),
(159, '678 Forest Avenue', NULL, 'Portland', 'Maine', '04101', 'USA'),
(160, '1234 Concord Street', 'Suite 3', 'Manchester', 'New Hampshire', '03101', 'USA'),
(161, '567 College Street', NULL, 'Burlington', 'Vermont', '05401', 'USA'),
(162, '1789 Newbury Street', NULL, 'Boston', 'Massachusetts', '02116', 'USA'),
(163, '234 Crown Street', 'Unit 8', 'New Haven', 'Connecticut', '06510', 'USA'),
(164, '1456 Federal Hill', NULL, 'Providence', 'Rhode Island', '02903', 'USA'),
(165, '678 George Street', 'Apt 9A', 'New Brunswick', 'New Jersey', '08901', 'USA'),
(166, '1234 Christiana Mall', NULL, 'Newark', 'Delaware', '19702', 'USA'),
(167, '567 Light Street', 'Suite 12', 'Baltimore', 'Maryland', '21202', 'USA'),
(168, '1789 K Street', NULL, 'Washington', 'District of Columbia', '20006', 'USA'),
(169, '234 Bay Street', NULL, 'Charleston', 'South Carolina', '29401', 'USA'),
(170, '1456 River Road', 'Unit 4', 'Louisville', 'Kentucky', '40207', 'USA'),
(171, '678 Kanawha Boulevard', NULL, 'Charleston', 'West Virginia', '25301', 'USA'),
(172, '1234 University Boulevard', 'Apt 6B', 'Tuscaloosa', 'Alabama', '35401', 'USA'),
(173, '567 Millsaps Avenue', NULL, 'Jackson', 'Mississippi', '39210', 'USA'),
(174, '1789 St. Charles Avenue', 'Suite 15', 'New Orleans', 'Louisiana', '70130', 'USA'),
(175, '234 President Clinton Avenue', NULL, 'Little Rock', 'Arkansas', '72201', 'USA'),
(176, '1456 Washington Avenue', 'Unit 9', 'Saint Louis', 'Missouri', '63103', 'USA'),
(177, '678 Northwest Expressway', NULL, 'Oklahoma City', 'Oklahoma', '73116', 'USA'),
(178, '1234 San Mateo Boulevard', 'Apt 7A', 'Albuquerque', 'New Mexico', '87110', 'USA'),
(179, '567 Elm Street', NULL, 'Dallas', 'Texas', '75202', 'USA'),
(180, '1789 Melrose Avenue', NULL, 'Los Angeles', 'California', '90046', 'USA'),
(181, '234 Worth Avenue', 'Suite 20', 'Palm Beach', 'Florida', '33480', 'USA'),
(182, '1456 Fifth Avenue', NULL, 'New York', 'New York', '10016', 'USA'),
(183, '678 Queen Anne Avenue', 'Unit 12', 'Seattle', 'Washington', '98109', 'USA'),
(184, '1234 Rush Street', NULL, 'Chicago', 'Illinois', '60611', 'USA'),
(185, '567 Short North', 'Apt 5B', 'Columbus', 'Ohio', '43215', 'USA'),
(186, '1789 Fisher Building', NULL, 'Detroit', 'Michigan', '48202', 'USA'),
(187, '234 Rittenhouse Square', 'Suite 8', 'Philadelphia', 'Pennsylvania', '19103', 'USA'),
(188, '1456 Virginia Highland', NULL, 'Atlanta', 'Georgia', '30306', 'USA'),
(189, '678 Fourth Ward', 'Unit 6', 'Charlotte', 'North Carolina', '28202', 'USA'),
(190, '1234 Fan District', NULL, 'Richmond', 'Virginia', '23220', 'USA'),
(191, '567 Gulch', 'Apt 11A', 'Nashville', 'Tennessee', '37203', 'USA'),
(192, '1789 Highland', NULL, 'Denver', 'Colorado', '80205', 'USA'),
(193, '234 Central Phoenix', 'Suite 14', 'Phoenix', 'Arizona', '85004', 'USA'),
(194, '1456 Downtown Summerlin', NULL, 'Las Vegas', 'Nevada', '89144', 'USA'),
(195, '678 Sugarhouse', 'Unit 7', 'Salt Lake City', 'Utah', '84106', 'USA'),
(196, '1234 Pearl District', NULL, 'Portland', 'Oregon', '97209', 'USA'),
(197, '567 Third Ward', 'Apt 8B', 'Milwaukee', 'Wisconsin', '53202', 'USA'),
(198, '1789 East Village', NULL, 'Des Moines', 'Iowa', '50309', 'USA'),
(199, '234 Aggieville', 'Suite 5', 'Manhattan', 'Kansas', '66502', 'USA'),
(200, '1456 Dundee', NULL, 'Omaha', 'Nebraska', '68132', 'USA');
GO

-------------------------------------------------------
-- Insert Vehicle Transfer Records
--------------------------------------------------------
INSERT INTO Vehicle.Vehicle_Transfer (
   vehicle_id, from_branch_id, to_branch_id, transfer_date, transfer_reason, transfer_status, completed_date
)
VALUES
-- One-way rental transfers
(45, 1, 2, '2025-12-08 15:00:00', 'One-way rental return', 'Completed', '2025-12-08 16:30:00'),
(67, 2, 3, '2025-12-09 10:00:00', 'One-way rental return', 'Completed', '2025-12-09 11:45:00'),
(89, 3, 4, '2025-12-10 12:00:00', 'One-way rental return', 'Completed', '2025-12-10 13:20:00'),
(12, 4, 5, '2025-12-11 09:00:00', 'One-way rental return', 'Completed', '2025-12-11 10:15:00'),
(34, 5, 6, '2025-12-12 11:00:00', 'One-way rental return', 'Completed', '2025-12-12 12:30:00'),
(56, 6, 7, '2025-12-13 14:00:00', 'One-way rental return', 'Completed', '2025-12-13 15:45:00'),
(78, 7, 8, '2025-12-14 13:00:00', 'One-way rental return', 'Completed', '2025-12-14 14:30:00'),
(91, 8, 9, '2025-12-15 10:00:00', 'One-way rental return', 'Completed', '2025-12-15 11:15:00'),
(13, 9, 10, '2025-12-16 11:00:00', 'One-way rental return', 'Completed', '2025-12-16 12:45:00'),
(35, 10, 11, '2025-12-17 09:30:00', 'One-way rental return', 'Completed', '2025-12-17 10:50:00'),
(15, 1, 2, '2025-11-09 10:00:00', 'One-way rental return', 'Completed', '2025-11-09 11:30:00'),
(31, 1, 3, '2025-11-11 12:00:00', 'One-way rental return', 'Completed', '2025-11-11 13:45:00'),
(52, 1, 4, '2025-11-13 09:00:00', 'One-way rental return', 'Completed', '2025-11-13 10:20:00'),
(71, 1, 5, '2025-11-15 11:00:00', 'One-way rental return', 'Completed', '2025-11-15 12:30:00'),
(93, 1, 6, '2025-11-17 08:00:00', 'One-way rental return', 'Completed', '2025-11-17 09:15:00'),
(23, 3, 1, '2025-11-20 08:00:00', 'Inventory rebalancing', 'Completed', '2025-11-20 10:30:00'),
(47, 5, 2, '2025-11-21 09:00:00', 'Inventory rebalancing', 'Completed', '2025-11-21 11:45:00'),
(65, 7, 4, '2025-11-22 10:00:00', 'Inventory rebalancing', 'Completed', '2025-11-22 12:15:00'),
(82, 9, 6, '2025-11-23 11:00:00', 'Inventory rebalancing', 'Completed', '2025-11-23 13:30:00'),
(104, 11, 8, '2025-11-24 12:00:00', 'Inventory rebalancing', 'Completed', '2025-11-24 14:45:00'),
(29, 2, 5, '2025-11-16 14:00:00', 'One-way rental return', 'In Transit', NULL),
(58, 4, 7, '2025-11-16 15:00:00', 'Inventory rebalancing', 'Pending', NULL),
(76, 6, 9, '2025-11-16 16:00:00', 'One-way rental return', 'In Transit', NULL),
(95, 8, 11, '2025-11-16 17:00:00', 'Maintenance transfer', 'Pending', NULL),
(18, 10, 1, '2025-11-16 18:00:00', 'Inventory rebalancing', 'Pending', NULL);
GO