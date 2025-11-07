USE CarRentalDB;
GO

-- Create Schemas. We are not dropping any schemas or tables
-- because we are creating a branch new database
CREATE SCHEMA Operation;
GO
CREATE SCHEMA Customer;
GO
CREATE SCHEMA Vehicle;
GO
CREATE SCHEMA Finance;
GO
CREATE SCHEMA Rental;
GO

--------------------------------------------------------
-- Creating Branch Table Under Operations Schema
--------------------------------------------------------
CREATE TABLE Operation.Branch (
    branch_id INT IDENTITY(1,1) PRIMARY KEY,
    branch_name VARCHAR(50) NOT NULL,
    branch_type VARCHAR(50) NOT NULL, -- Airport, City, Suburban
    phone_number VARCHAR(15) NOT NULL,
    email VARCHAR(50) NOT NULL,
    branch_status VARCHAR(20) NOT NULL DEFAULT 'Active'
);
GO

--------------------------------------------------------
-- Insert Sample Data into Operations.Branch
--------------------------------------------------------
INSERT INTO Operation.Branch (branch_name, branch_type, phone_number, email, branch_status)
VALUES
('Minneapolis Downtown', 'City', '612-555-1020', 'mpls_downtown@carrental.com', 'Active'),
('Los Angeles Intl Airport', 'Airport', '310-555-2234', 'la_airport@carrental.com', 'Active'),
('New York JFK Airport', 'Airport', '718-555-3412', 'ny_jfk@carrental.com', 'Active'),
('Chicago O’Hare Airport', 'Airport', '773-555-0198', 'chi_ohare@carrental.com', 'Active'),
('Dallas Love Field', 'Airport', '214-555-0912', 'dal_lovefield@carrental.com', 'Active'),
('Houston Downtown', 'City', '713-555-8821', 'houston_city@carrental.com', 'Inactive'),
('Miami Intl Airport', 'Airport', '305-555-7612', 'mia_airport@carrental.com', 'Active'),
('Orlando Suburban', 'Suburban', '407-555-6620', 'orl_suburban@carrental.com', 'Active'),
('Seattle Downtown', 'City', '206-555-1934', 'sea_downtown@carrental.com', 'Active'),
('Denver Airport', 'Airport', '303-555-7721', 'den_airport@carrental.com', 'Active'),
('San Francisco Intl', 'Airport', '415-555-2341', 'sfo_airport@carrental.com', 'Active'),
('Boston Logan Airport', 'Airport', '617-555-9034', 'bos_logan@carrental.com', 'Active'),
('Las Vegas Strip', 'City', '702-555-2211', 'vegas_strip@carrental.com', 'Active'),
('Phoenix Downtown', 'City', '602-555-1203', 'phx_downtown@carrental.com', 'Active'),
('Atlanta Hartsfield Airport', 'Airport', '404-555-3234', 'atl_airport@carrental.com', 'Active'),
('Cleveland Suburban', 'Suburban', '216-555-8712', 'cle_suburban@carrental.com', 'Inactive'),
('San Diego North', 'Suburban', '619-555-4421', 'sd_north@carrental.com', 'Active'),
('Portland City Center', 'City', '503-555-2109', 'pdx_citycenter@carrental.com', 'Active'),
('Minneapolis Airport', 'Airport', '952-555-8890', 'mpls_airport@carrental.com', 'Active'),
('Charlotte Uptown', 'City', '980-555-7711', 'clt_uptown@carrental.com', 'Active'),
('Detroit Metro', 'Airport', '313-555-9821', 'dtw_airport@carrental.com', 'Active'),
('Tampa Bay Suburban', 'Suburban', '813-555-9910', 'tpa_suburban@carrental.com', 'Active'),
('San Jose Airport', 'Airport', '408-555-4301', 'sjc_airport@carrental.com', 'Active'),
('Cincinnati Downtown', 'City', '513-555-2202', 'cin_city@carrental.com', 'Inactive'),
('Indianapolis East', 'Suburban', '317-555-1832', 'indy_east@carrental.com', 'Active'),
('Baltimore BWI', 'Airport', '410-555-9011', 'bwi_airport@carrental.com', 'Active'),
('St. Louis Central', 'City', '314-555-7177', 'stl_central@carrental.com', 'Active'),
('Nashville Downtown', 'City', '615-555-3833', 'bna_city@carrental.com', 'Active'),
('Kansas City North', 'Suburban', '816-555-6402', 'kc_north@carrental.com', 'Active'),
('Cayman Islands Airport', 'Airport', '345-555-2231', 'cay_airport@carrental.com', 'Active');
GO

-------------------------------------------------------
-- Create Customer Table Under Customer Schema.
--------------------------------------------------------
CREATE TABLE Customer.Customer (
    customer_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    middle_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    date_of_birth DATE NOT NULL,
    gender VARCHAR(10) CHECK (gender IN ('Male','Female','Other'))
);
GO

--------------------------------------------------------
-- Insert Sample Data into Customer.Customer
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
('Grace', 'Marie', 'Roberts', '320-555-9821', 'grace.roberts@email.com', '1994-01-03', 'Female');
GO

--------------------------------------------------------
-- Create Vehicle_Purchase Table
--------------------------------------------------------
CREATE TABLE Vehicle.Vehicle_Purchase (
    purchase_id INT IDENTITY(1,1) PRIMARY KEY,
    purchase_date DATE NOT NULL,
    purchase_type VARCHAR(30) NOT NULL,
    purchase_from VARCHAR(100) NOT NULL,
    purchase_price DECIMAL(10,2) NOT NULL
);
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
('2025-05-01', 'Outright', 'Tesla Store Los Angeles', 59000.00);
GO

--------------------------------------------------------
-- Create Vehicle_Fuel_Type Table in Vehicle_Schema
--------------------------------------------------------
CREATE TABLE Vehicle.Fuel_Type (
    fuel_type_id INT IDENTITY(1,1) PRIMARY KEY,
    fuel_type_name VARCHAR(30) NOT NULL,
    fuel_efficiency DECIMAL(5,2) NOT NULL
);
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
-- Create Vehicle_Type Table
--------------------------------------------------------
CREATE TABLE Vehicle.Vehicle_Type (
    vehicle_type_id INT IDENTITY(1,1) PRIMARY KEY,
    vehicle_type_name VARCHAR(30) NOT NULL
);
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
-- Create Vehicle_Class Table
--------------------------------------------------------
CREATE TABLE Vehicle.Vehicle_Class (
    vehicle_class_id INT IDENTITY(1,1) PRIMARY KEY,
    class_name VARCHAR(30) NOT NULL
);
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
-- Create Vehicle Table
--------------------------------------------------------
CREATE TABLE Vehicle.Vehicle (
    vehicle_vin VARCHAR(17) PRIMARY KEY,
    vehicle_class_id INT NOT NULL,
    vehicle_type_id INT NOT NULL,
    fuel_type_id INT NOT NULL,
    purchase_id INT NOT NULL,
    branch_id INT NOT NULL,
    make VARCHAR(30) NOT NULL,
    model VARCHAR(30) NOT NULL,
    year INT NOT NULL,
    color VARCHAR(30) NULL,
    status VARCHAR(30) NOT NULL,
    mileage DECIMAL(10,2) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    updated_at DATETIME NULL,

    CONSTRAINT FK_Vehicle_Class FOREIGN KEY (vehicle_class_id) REFERENCES Vehicle.Vehicle_Class(vehicle_class_id),
    CONSTRAINT FK_Vehicle_Type FOREIGN KEY (vehicle_type_id) REFERENCES Vehicle.Vehicle_Type(vehicle_type_id),
    CONSTRAINT FK_Vehicle_Fuel FOREIGN KEY (fuel_type_id) REFERENCES Vehicle.Fuel_Type(fuel_type_id),
    CONSTRAINT FK_Vehicle_Branch FOREIGN KEY (branch_id) REFERENCES Operation.Branch(branch_id),
    CONSTRAINT FK_Vehicle_Purchase FOREIGN KEY (purchase_id) REFERENCES Vehicle.Vehicle_Purchase(purchase_id),
    CONSTRAINT CK_Vehicle_Status CHECK (status IN ('Available','Reserved','Rented','Maintenance','Retired'))
);
GO

--------------------------------------------------------
-- Insert Sample Data into Vehicle.Vehicle
--------------------------------------------------------
INSERT INTO Vehicle.Vehicle (
    vehicle_vin, vehicle_class_id, vehicle_type_id, fuel_type_id, purchase_id, branch_id,
    make, model, year, color, status, mileage, updated_at
)
VALUES
('1HGCM82633A004352', 1, 1, 1, 3, 2, 'Toyota', 'Corolla', 2019, 'Silver', 'Available', 43210.25, NULL),
('2T1BURHE5KC012457', 2, 2, 2, 7, 9, 'Honda', 'CR-V', 2020, 'Blue', 'Rented', 38150.88, '2025-04-12'),
('1FADP3F25HL220956', 3, 1, 1, 4, 5, 'Ford', 'Focus', 2018, 'White', 'Maintenance', 50210.00, '2025-02-21'),
('1FTFW1E52JKC20230', 4, 3, 2, 2, 1, 'Ford', 'F-150', 2021, 'Black', 'Available', 27450.76, NULL),
('1C4PJMDX8LD507962', 5, 2, 3, 6, 3, 'Jeep', 'Cherokee', 2020, NULL, 'Reserved', 36190.00, NULL),
('5NPE24AF4KH887345', 2, 1, 1, 8, 4, 'Hyundai', 'Sonata', 2022, 'Gray', 'Rented', 21120.59, '2025-05-02'),
('3VW2B7AJ5EM384910', 1, 1, 1, 5, 6, 'Volkswagen', 'Jetta', 2019, 'Red', 'Available', 44230.17, NULL),
('1HGCV1F32MA003842', 3, 1, 3, 10, 10, 'Honda', 'Accord Hybrid', 2023, 'White', 'Available', 15230.00, NULL),
('1N4AL3AP9JC149782', 4, 1, 1, 9, 11, 'Nissan', 'Altima', 2018, NULL, 'Retired', 61200.90, '2024-11-10'),
('2HGFC2F52KH568931', 1, 1, 1, 12, 8, 'Honda', 'Civic', 2021, 'Blue', 'Available', 27310.44, NULL),
('1FAFP404X2F224319', 3, 4, 1, 11, 13, 'Ford', 'Fiesta', 2019, 'White', 'Available', 41290.20, NULL),
('1FTCR10A5RUB47283', 4, 3, 2, 13, 15, 'Chevrolet', 'Silverado', 2021, 'Black', 'Rented', 30122.70, '2025-01-19'),
('5UXWX9C55H0T41597', 6, 2, 3, 14, 14, 'BMW', 'X3', 2023, 'Gray', 'Available', 18300.10, NULL),
('WBA3A5C56CF207894', 7, 1, 3, 16, 17, 'BMW', '330i', 2022, 'White', 'Reserved', 20980.40, NULL),
('1N6AA1F41GN520843', 4, 3, 2, 15, 19, 'Nissan', 'Titan', 2020, 'Blue', 'Maintenance', 47210.35, '2025-06-14'),
('3FA6P0H76HR377420', 3, 1, 1, 17, 18, 'Ford', 'Fusion', 2021, 'Red', 'Available', 28990.21, NULL),
('4T1BE46K19U387462', 1, 1, 1, 19, 7, 'Toyota', 'Camry', 2022, 'Silver', 'Rented', 19850.60, '2025-04-05'),
('1G1ZD5ST7LF031290', 2, 1, 1, 20, 12, 'Chevrolet', 'Malibu', 2021, NULL, 'Available', 24390.00, NULL),
('3GNAXHEV8LS694531', 4, 2, 2, 22, 16, 'Chevrolet', 'Equinox', 2023, 'Black', 'Available', 15700.43, NULL),
('1FT7W2BT7KEC03495', 7, 3, 2, 23, 20, 'Ford', 'Super Duty', 2022, 'White', 'Available', 19200.12, NULL),
('1C4HJXDG1LW268953', 4, 2, 2, 21, 9, 'Jeep', 'Wrangler', 2023, 'Green', 'Reserved', 9800.00, NULL),
('5FNRL6H73NB098342', 5, 4, 1, 24, 8, 'Honda', 'Odyssey', 2024, 'Gray', 'Available', 11200.50, NULL),
('1FTYR10C8XTA01823', 7, 4, 2, 25, 5, 'Ford', 'Transit', 2023, 'White', 'Available', 12300.00, NULL),
('5YJSA1CN5DFP23451', 7, 1, 4, 26, 4, 'Tesla', 'Model S', 2023, 'Red', 'Rented', 8200.00, '2025-06-01'),
('5YJ3E1EA7KF275613', 6, 1, 4, 27, 6, 'Tesla', 'Model 3', 2024, 'White', 'Available', 5900.00, NULL),
('3C6UR5DL3FG623894', 7, 3, 2, 28, 11, 'RAM', '2500', 2022, 'Silver', 'Rented', 15400.20, '2025-03-10'),
('1GNEVGKW9MJ113852', 4, 2, 2, 29, 15, 'Chevrolet', 'Traverse', 2021, NULL, 'Maintenance', 21800.00, '2025-02-18'),
('WBA7E4C55GG932471', 7, 1, 3, 30, 13, 'BMW', '740i', 2024, 'Black', 'Available', 8500.00, NULL),
('1HGCV1F31MA097853', 2, 1, 3, 1, 10, 'Honda', 'Insight', 2020, 'Silver', 'Available', 22900.55, NULL),
('1HGFA16526L045971', 3, 5, 1, 5, 17, 'Mazda', 'CX-5', 2023, 'Gray', 'Available', 13400.00, '2025-07-01');
GO

--------------------------------------------------------
-- Create Vehicle_Rate Table under Finance Schema
--------------------------------------------------------
CREATE TABLE Finance.Vehicle_Rate (
    vehicle_rate_id INT IDENTITY(1,1) PRIMARY KEY,
    vehicle_class_id INT NOT NULL,
    branch_id INT NOT NULL,
    vehicle_hourly_rate DECIMAL(10,2) NULL,
    vehicle_daily_rate DECIMAL(10,2) NULL,
    vehicle_weekly_rate DECIMAL(10,2) NULL,
    vehicle_monthly_rate DECIMAL(10,2) NULL,

    CONSTRAINT FK_vehicle_rate_vehicle_class 
        FOREIGN KEY (vehicle_class_id) REFERENCES Vehicle.Vehicle_Class(vehicle_class_id),

    CONSTRAINT FK_vehicle_rate_branch 
        FOREIGN KEY (branch_id) REFERENCES Operation.Branch(branch_id)
);
GO

--------------------------------------------------------
-- Insert Sample Data into Finance.Vehicle_Rate
--------------------------------------------------------
INSERT INTO Finance.Vehicle_Rate
(vehicle_class_id, branch_id, vehicle_hourly_rate, vehicle_daily_rate, vehicle_weekly_rate, vehicle_monthly_rate)
VALUES
(1, 1, 12.00, 65.00, 380.00, 1450.00),
(2, 2, 13.50, 72.00, 420.00, 1580.00),
(3, 3, 15.00, 80.00, 465.00, 1700.00),
(4, 4, 17.00, 89.00, 500.00, 1850.00),
(5, 5, 18.50, 95.00, 525.00, 1950.00),
(6, 6, 21.00, 110.00, 630.00, 2250.00),
(7, 7, 25.00, 135.00, 780.00, 2600.00),
(1, 8, 11.50, 63.00, 375.00, 1400.00),
(2, 9, 13.00, 70.00, 410.00, 1550.00),
(3, 10, 14.00, 77.00, 445.00, 1675.00),
(4, 11, 16.50, 88.00, 495.00, 1820.00),
(5, 12, 18.00, 93.00, 520.00, 1900.00),
(6, 13, 21.50, 112.00, 640.00, 2280.00),
(7, 14, 26.00, 140.00, 790.00, 2650.00),
(1, 15, 12.25, 65.00, 385.00, 1460.00),
(2, 16, 13.75, 73.00, 430.00, 1600.00),
(3, 17, 15.50, 81.00, 470.00, 1720.00),
(4, 18, 17.25, 90.00, 505.00, 1875.00),
(5, 19, 18.75, 96.00, 530.00, 1975.00),
(6, 20, 21.25, 111.00, 635.00, 2260.00),
(7, 21, 25.50, 137.00, 785.00, 2625.00),
(1, 22, 12.10, 64.00, 382.00, NULL),
(2, 23, 13.60, 71.00, 425.00, 1590.00),
(3, 24, 15.10, 79.00, NULL, 1710.00),
(4, 25, 17.10, 88.50, 498.00, 1855.00),
(5, 26, 18.60, 94.50, 523.00, NULL),
(6, 27, 21.10, 109.00, 628.00, 2240.00),
(7, 28, 25.20, 136.00, 782.00, 2610.00),
(3, 29, 14.80, 78.00, 450.00, 1690.00),
(4, 30, 16.80, 89.00, 499.00, 1840.00);
GO

--------------------------------------------------------
-- Create a Rental_Estimate table under Finance Schema
--------------------------------------------------------

CREATE TABLE Finance.Rental_Estimate (
    estimate_id INT IDENTITY(1,1) PRIMARY KEY,
    vehicle_rate_id INT NOT NULL,
    base_rate DECIMAL(10,2) NOT NULL,
    surcharge_total DECIMAL(10,2) NULL,
    discount_total DECIMAL(10,2) NULL,
    tax_total DECIMAL(10,2) NULL,
    total_estimate DECIMAL(10,2) NOT NULL,

    CONSTRAINT FK_rental_estimate_vehicle_rate
        FOREIGN KEY (vehicle_rate_id) REFERENCES Finance.Vehicle_Rate(vehicle_rate_id)
);
GO

--------------------------------------------------------
-- Insert Sample Data into Finance.Rental_Estimate
--------------------------------------------------------
INSERT INTO Finance.Rental_Estimate
(vehicle_rate_id, base_rate, surcharge_total, discount_total, tax_total, total_estimate)
VALUES
(1, 65.00, 5.00, 0.00, 4.68, 74.68),
(2, 72.00, 6.50, 2.00, 5.04, 81.54),
(3, 80.00, 4.00, 3.50, 5.80, 86.30),
(4, 89.00, NULL, 5.00, 6.23, 90.23),
(5, 95.00, 6.00, 0.00, 6.65, 107.65),
(6, 110.00, 7.50, 4.00, 8.33, 121.83),
(7, 135.00, 10.00, 7.50, 10.12, 147.62),
(8, 63.00, 3.00, NULL, 4.41, 70.41),
(9, 70.00, 5.00, 2.00, 4.90, 77.90),
(10, 77.00, 6.00, 0.00, 5.39, 88.39),
(11, 88.00, 5.50, 1.50, 6.11, 98.11),
(12, 93.00, 4.00, 0.00, 6.45, 103.45),
(13, 112.00, 7.00, 4.00, 8.09, 123.09),
(14, 140.00, 9.00, 6.00, 9.73, 152.73),
(15, 65.00, 4.00, 0.00, 4.55, 73.55),
(16, 73.00, 5.00, 1.00, 5.11, 82.11),
(17, 81.00, 5.50, 2.50, 5.68, 89.68),
(18, 90.00, 6.00, NULL, 6.21, 102.21),
(19, 96.00, 6.50, 0.00, 6.67, 109.17),
(20, 111.00, 7.50, 4.50, 8.03, 122.03),
(21, 137.00, 10.00, 6.00, 9.91, 150.91),
(22, 64.00, 4.00, 1.00, 4.48, 71.48),
(23, 71.00, 5.00, 0.00, 5.02, 81.02),
(24, 79.00, 6.00, NULL, 5.56, 90.56),
(25, 88.50, 5.00, 2.50, 6.11, 97.11),
(26, 94.50, 6.00, 0.00, 6.52, 107.02),
(27, 109.00, 8.00, 4.00, 7.80, 120.80),
(28, 136.00, 9.00, 7.00, 9.52, 147.52),
(29, 78.00, 5.00, 2.00, 5.46, 86.46),
(30, 89.00, 6.00, NULL, 6.23, 101.23);
GO

--------------------------------------------------------
-- Create Reservation Table under Rental Schema
--------------------------------------------------------
CREATE TABLE Rental.Reservation (
    reservation_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT NOT NULL,
    vehicle_vin VARCHAR(17) NOT NULL,
    estimate_id INT NOT NULL,
    pickup_branch_id INT NOT NULL,
    dropoff_branch_id INT NOT NULL,
    reservation_date DATE NOT NULL DEFAULT CAST(GETDATE() AS DATE),
    pickup_date DATE NOT NULL,
    return_date DATE NOT NULL,
    reservation_status VARCHAR(20) NOT NULL CHECK (reservation_status IN ('Pending','Confirmed','Cancelled','Completed')),
    confirmation_number VARCHAR(20) NOT NULL UNIQUE,
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    updated_at DATETIME NOT NULL DEFAULT GETDATE(),

    CONSTRAINT FK_reservation_customer
        FOREIGN KEY (customer_id) REFERENCES Customer.Customer(customer_id),

    CONSTRAINT FK_reservation_vehicle
        FOREIGN KEY (vehicle_vin) REFERENCES Vehicle.Vehicle(vehicle_vin),

    CONSTRAINT FK_reservation_estimate
        FOREIGN KEY (estimate_id) REFERENCES Finance.Rental_Estimate(estimate_id),

    CONSTRAINT FK_reservation_pickup_branch
        FOREIGN KEY (pickup_branch_id) REFERENCES Operation.Branch(branch_id),

    CONSTRAINT FK_reservation_dropoff_branch
        FOREIGN KEY (dropoff_branch_id) REFERENCES Operation.Branch(branch_id)
);
GO

--------------------------------------------------------
-- Insert Sample Data into Rental.Reservation
--------------------------------------------------------
INSERT INTO Rental.Reservation
(customer_id, vehicle_vin, estimate_id, pickup_branch_id, dropoff_branch_id,
 pickup_date, return_date, reservation_status, confirmation_number)
VALUES
(1, '1HGCM82633A004352', 1, 1, 3, '2025-03-02', '2025-03-05', 'Completed', 'CNF0001'),
(2, '2T1BURHE5KC012457', 2, 2, 2, '2025-03-07', '2025-03-10', 'Completed', 'CNF0002'),
(3, '1FADP3F25HL220956', 3, 5, 8, '2025-03-12', '2025-03-15', 'Confirmed', 'CNF0003'),
(4, '1FTFW1E52JKC20230', 4, 4, 6, '2025-03-20', '2025-03-25', 'Completed', 'CNF0004'),
(5, '1C4PJMDX8LD507962', 5, 9, 10, '2025-03-26', '2025-03-30', 'Cancelled', 'CNF0005'),
(6, '5NPE24AF4KH887345', 6, 12, 12, '2025-04-01', '2025-04-05', 'Completed', 'CNF0006'),
(7, '3VW2B7AJ5EM384910', 7, 7, 9, '2025-04-08', '2025-04-10', 'Completed', 'CNF0007'),
(8, '1HGCV1F32MA003842', 8, 15, 17, '2025-04-12', '2025-04-14', 'Confirmed', 'CNF0008'),
(9, '1N4AL3AP9JC149782', 9, 14, 13, '2025-04-15', '2025-04-18', 'Completed', 'CNF0009'),
(10, '2HGFC2F52KH568931', 10, 10, 9, '2025-04-20', '2025-04-23', 'Pending', 'CNF0010'),
(11, '1FAFP404X2F224319', 11, 5, 4, '2025-04-25', '2025-04-29', 'Confirmed', 'CNF0011'),
(12, '1FTCR10A5RUB47283', 12, 8, 8, '2025-04-30', '2025-05-03', 'Cancelled', 'CNF0012'),
(13, '5UXWX9C55H0T41597', 13, 6, 6, '2025-05-04', '2025-05-08', 'Confirmed', 'CNF0013'),
(14, 'WBA3A5C56CF207894', 14, 3, 3, '2025-05-10', '2025-05-13', 'Completed', 'CNF0014'),
(15, '1N6AA1F41GN520843', 15, 9, 11, '2025-05-14', '2025-05-16', 'Confirmed', 'CNF0015'),
(16, '3FA6P0H76HR377420', 16, 2, 1, '2025-05-18', '2025-05-21', 'Completed', 'CNF0016'),
(17, '4T1BE46K19U387462', 17, 13, 13, '2025-05-23', '2025-05-26', 'Pending', 'CNF0017'),
(18, '1G1ZD5ST7LF031290', 18, 11, 15, '2025-05-28', '2025-05-31', 'Completed', 'CNF0018'),
(19, '3GNAXHEV8LS694531', 19, 16, 18, '2025-06-02', '2025-06-05', 'Confirmed', 'CNF0019'),
(20, '1FT7W2BT7KEC03495', 20, 10, 9, '2025-06-08', '2025-06-12', 'Cancelled', 'CNF0020'),
(21, '1C4HJXDG1LW268953', 21, 1, 4, '2025-06-14', '2025-06-18', 'Completed', 'CNF0021'),
(22, '5FNRL6H73NB098342', 22, 3, 3, '2025-06-20', '2025-06-23', 'Confirmed', 'CNF0022'),
(23, '1FTYR10C8XTA01823', 23, 4, 7, '2025-06-25', '2025-06-27', 'Completed', 'CNF0023'),
(24, '5YJSA1CN5DFP23451', 24, 5, 5, '2025-06-29', '2025-07-02', 'Confirmed', 'CNF0024'),
(25, '5YJ3E1EA7KF275613', 25, 8, 8, '2025-07-03', '2025-07-05', 'Pending', 'CNF0025');
GO

--------------------------------------------------------
-- Create Rental Table under Rental Schema
--------------------------------------------------------

CREATE TABLE Rental.Rental (
    rental_id INT IDENTITY(1,1) PRIMARY KEY,
    reservation_id INT NULL,                    -- Will link to Reservation later
    customer_id INT NOT NULL,                   -- FK to Customer.Customer
    vehicle_vin VARCHAR(17) NOT NULL,              -- FK to Vehicle.Vehicle
    rental_start DATETIME NOT NULL,
    rental_end DATETIME NOT NULL,
    total_mileage_used DECIMAL(10,2) NULL,
    rental_status VARCHAR(30) NOT NULL CHECK (rental_status IN ('Ongoing', 'Completed', 'Cancelled', 'Overdue')),
    rental_total DECIMAL(10,2) NOT NULL,
    security_deposit DECIMAL(10,2) NULL,
    rental_notes VARCHAR(300) NULL,
    rental_acknowledgement_signed BIT NOT NULL DEFAULT 0,
    created_at DATETIME NOT NULL DEFAULT GETDATE(),

    CONSTRAINT FK_Rental_Customer FOREIGN KEY (customer_id)
        REFERENCES Customer.Customer(customer_id)
        ON DELETE CASCADE ON UPDATE CASCADE,

    CONSTRAINT FK_Rental_Vehicle FOREIGN KEY (vehicle_vin)
        REFERENCES Vehicle.Vehicle(vehicle_vin)
        ON DELETE CASCADE ON UPDATE CASCADE
);
GO

--------------------------------------------------------
-- Insert Sample Data into Rental.Rental
--------------------------------------------------------
INSERT INTO Rental.Rental
(reservation_id, customer_id, vehicle_vin, rental_start, rental_end,
 total_mileage_used, rental_status, rental_total, security_deposit, rental_notes, rental_acknowledgement_signed)
VALUES
(1, 1, '1HGCM82633A004352', '2025-03-02 09:00', '2025-03-05 10:00', 320.5, 'Completed', 245.50, 150.00, 'Returned in good condition.', 1),
(2, 2, '2T1BURHE5KC012457', '2025-03-07 08:30', '2025-03-10 09:00', 280.3, 'Completed', 265.00, 200.00, 'No damages.', 1),
(3, 3, '1FADP3F25HL220956', '2025-03-12 07:45', '2025-03-15 09:15', 310.0, 'Completed', 275.40, 150.00, NULL, 1),
(4, 4, '1FTFW1E52JKC20230', '2025-03-20 10:00', '2025-03-25 11:00', 420.7, 'Completed', 360.00, 200.00, 'Full-size truck used for business.', 1),
(5, 5, '1C4PJMDX8LD507962', '2025-03-26 12:00', '2025-03-30 10:30', NULL, 'Cancelled', 0.00, NULL, 'Cancelled before pickup.', 0),
(6, 6, '5NPE24AF4KH887345', '2025-04-01 09:00', '2025-04-05 09:00', 215.8, 'Completed', 198.75, 150.00, 'Returned 1 day early.', 1),
(7, 7, '3VW2B7AJ5EM384910', '2025-04-08 08:15', '2025-04-10 08:45', 190.0, 'Completed', 175.25, 100.00, NULL, 1),
(8, 8, '1HGCV1F32MA003842', '2025-04-12 10:00', '2025-04-14 09:00', 205.6, 'Completed', 186.50, 100.00, 'Hybrid model, smooth drive.', 1),
(9, 9, '1N4AL3AP9JC149782', '2025-04-15 09:00', '2025-04-18 09:00', 300.2, 'Completed', 220.00, 150.00, NULL, 1),
(10, 10, '2HGFC2F52KH568931', '2025-04-20 11:00', '2025-04-23 09:00', 250.3, 'Ongoing', 198.00, 150.00, 'Customer extended rental by one day.', 1),
(11, 11, '1FAFP404X2F224319', '2025-04-25 09:00', '2025-04-29 09:00', 312.9, 'Completed', 260.50, 150.00, 'Returned on time.', 1),
(12, 12, '1FTCR10A5RUB47283', '2025-04-30 10:00', '2025-05-03 11:00', NULL, 'Cancelled', 0.00, NULL, 'Customer cancelled due to weather.', 0),
(13, 13, '5UXWX9C55H0T41597', '2025-05-04 09:00', '2025-05-08 09:00', 415.5, 'Completed', 370.00, 200.00, NULL, 1),
(14, 14, 'WBA3A5C56CF207894', '2025-05-10 08:30', '2025-05-13 09:00', 260.4, 'Completed', 295.50, 250.00, 'Luxury class rental.', 1),
(15, 15, '1N6AA1F41GN520843', '2025-05-14 09:00', '2025-05-16 08:45', 198.3, 'Completed', 185.00, 150.00, 'Pickup truck for delivery.', 1),
(16, 16, '3FA6P0H76HR377420', '2025-05-18 10:00', '2025-05-21 09:00', 284.7, 'Completed', 250.00, 200.00, NULL, 1),
(17, 17, '4T1BE46K19U387462', '2025-05-23 09:30', '2025-05-26 10:00', 310.2, 'Overdue', 310.00, 200.00, 'Customer overdue by 1 day.', 0),
(18, 18, '1G1ZD5ST7LF031290', '2025-05-28 09:00', '2025-05-31 10:00', 330.0, 'Completed', 295.20, 150.00, 'Returned clean.', 1),
(19, 19, '3GNAXHEV8LS694531', '2025-06-02 09:00', '2025-06-05 08:30', 210.4, 'Completed', 280.00, 150.00, NULL, 1),
(20, 20, '1FT7W2BT7KEC03495', '2025-06-08 08:00', '2025-06-12 09:00', NULL, 'Cancelled', 0.00, NULL, 'Cancelled by branch due to maintenance.', 0),
(21, 21, '1C4HJXDG1LW268953', '2025-06-14 10:00', '2025-06-18 10:00', 365.7, 'Completed', 320.50, 150.00, 'Off-road Jeep rental.', 1),
(22, 22, '5FNRL6H73NB098342', '2025-06-20 09:00', '2025-06-23 09:00', 280.8, 'Completed', 260.25, 150.00, 'Family trip.', 1),
(23, 23, '1FTYR10C8XTA01823', '2025-06-25 09:30', '2025-06-27 09:00', 190.2, 'Completed', 210.00, 150.00, NULL, 1),
(24, 24, '5YJSA1CN5DFP23451', '2025-06-29 10:00', '2025-07-02 10:00', 150.6, 'Completed', 400.00, 250.00, 'Tesla rental, charged fully.', 1),
(25, 25, '5YJ3E1EA7KF275613', '2025-07-03 09:00', '2025-07-05 09:30', 180.3, 'Ongoing', 345.50, 250.00, 'Extended booking.', 1);
GO

--------------------------------------------------------
-- Create Customer_Payment_Method Table
--------------------------------------------------------
CREATE TABLE Customer.Customer_Payment_Method (
    payment_method_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT NOT NULL,
    payment_type VARCHAR(20) NOT NULL,
    card_brand VARCHAR(20) NOT NULL,
    payment_token VARCHAR(100) NOT NULL,
    card_last_four CHAR(4) NOT NULL,
    cardholder_first_name VARCHAR(50) NOT NULL,
    cardholder_last_name VARCHAR(50) NULL,
    expiry_month INT NOT NULL,
    expiry_year INT NOT NULL,
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    updated_at DATETIME NOT NULL DEFAULT GETDATE(),

    CONSTRAINT FK_customer_payment_method_customer
        FOREIGN KEY (customer_id)
        REFERENCES Customer.Customer(customer_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
GO

--------------------------------------------------------
-- Insert Sample Data into Customer.Customer_Payment_Method
--------------------------------------------------------
INSERT INTO Customer.Customer_Payment_Method
(customer_id, payment_type, card_brand, payment_token, card_last_four,
 cardholder_first_name, cardholder_last_name, expiry_month, expiry_year)
VALUES
(1, 'Credit', 'Visa', 'tok_9a7f12b3d4e', '4821', 'John', 'Doe', 5, 2028),
(2, 'Debit', 'MasterCard', 'tok_a1c2e3f4g5h', '1298', 'Sarah', 'Miller', 7, 2027),
(3, 'Credit', 'Visa', 'tok_b3d4e5f6g7h', '7741', 'Alex', 'Brown', 11, 2026),
(4, 'Credit', 'Amex', 'tok_c4f5g6h7i8j', '3345', 'Emily', 'Wang', 9, 2029),
(5, 'Debit', 'Visa', 'tok_d5g6h7i8j9k', '5521', 'Michael', NULL, 4, 2027),
(6, 'Credit', 'Discover', 'tok_e6h7i8j9k0l', '2210', 'Olivia', 'Clark', 8, 2028),
(7, 'Credit', 'Visa', 'tok_f7i8j9k0l1m', '9473', 'Daniel', 'Lee', 10, 2026),
(8, 'Debit', 'MasterCard', 'tok_g8j9k0l1m2n', '7850', 'Sophia', 'Nguyen', 3, 2029),
(9, 'Credit', 'Amex', 'tok_h9k0l1m2n3o', '1189', 'Ryan', 'Taylor', 6, 2028),
(10, 'Credit', 'Visa', 'tok_i0l1m2n3o4p', '9045', 'Grace', 'Hernandez', 12, 2026),
(11, 'Credit', 'MasterCard', 'tok_j1m2n3o4p5q', '5562', 'Lucas', 'White', 9, 2029),
(12, 'Debit', 'Visa', 'tok_k2n3o4p5q6r', '8209', 'Emma', 'Lopez', 4, 2028),
(13, 'Credit', 'Discover', 'tok_l3o4p5q6r7s', '2904', 'Jacob', 'Hall', 1, 2027),
(14, 'Credit', 'Visa', 'tok_m4p5q6r7s8t', '1193', 'Ella', 'Adams', 8, 2029),
(15, 'Debit', 'Visa', 'tok_n5q6r7s8t9u', '3408', 'Liam', NULL, 11, 2026),
(16, 'Credit', 'MasterCard', 'tok_o6r7s8t9u0v', '6725', 'Chloe', 'Martinez', 7, 2027),
(17, 'Credit', 'Visa', 'tok_p7s8t9u0v1w', '9321', 'Henry', 'Cooper', 10, 2028),
(18, 'Credit', 'Amex', 'tok_q8t9u0v1w2x', '0058', 'Mia', 'Gomez', 2, 2029),
(19, 'Debit', 'Visa', 'tok_r9u0v1w2x3y', '7654', 'Benjamin', 'King', 9, 2027),
(20, 'Credit', 'Discover', 'tok_s0v1w2x3y4z', '4730', 'Natalie', 'Evans', 5, 2028),
(21, 'Credit', 'Visa', 'tok_t1w2x3y4z5a', '8899', 'William', 'Scott', 3, 2026),
(22, 'Debit', 'MasterCard', 'tok_u2x3y4z5a6b', '2784', 'Isabella', 'Nelson', 12, 2028),
(23, 'Credit', 'Visa', 'tok_v3y4z5a6b7c', '1460', 'Ethan', 'Perez', 1, 2029),
(24, 'Credit', 'Amex', 'tok_w4z5a6b7c8d', '9033', 'Ava', 'Bennett', 6, 2027),
(25, 'Debit', 'Visa', 'tok_x5a6b7c8d9e', '6722', 'Noah', 'Rivera', 8, 2029);
GO

--------------------------------------------------------
-- Create a Rental_Payment table under Finance Schema
--------------------------------------------------------

CREATE TABLE Finance.Rental_Payment (
    payment_id INT IDENTITY(1,1) PRIMARY KEY,
    payment_method_id INT NOT NULL,
    rental_id INT NOT NULL,
    payment_date DATETIME NOT NULL,
    payment_amount DECIMAL(10,2) NOT NULL,
    payment_status VARCHAR(20) NOT NULL,
    reference_number VARCHAR(30) NOT NULL,

    CONSTRAINT FK_rental_payment_method 
        FOREIGN KEY (payment_method_id) REFERENCES Customer.Customer_Payment_Method(payment_method_id),

    CONSTRAINT FK_rental_payment_rental 
        FOREIGN KEY (rental_id) REFERENCES Rental.Rental(rental_id)
);
GO

--------------------------------------------------------
-- Insert Sample Data into Finance.Rental_Payment
--------------------------------------------------------
INSERT INTO Finance.Rental_Payment
(payment_method_id, rental_id, payment_date, payment_amount, payment_status, reference_number)
VALUES
(1, 1, '2025-03-05 10:15', 245.50, 'Completed', 'PAY-20250305-001'),
(2, 2, '2025-03-10 09:40', 265.00, 'Completed', 'PAY-20250310-002'),
(3, 3, '2025-03-15 10:25', 275.40, 'Completed', 'PAY-20250315-003'),
(4, 4, '2025-03-25 11:30', 360.00, 'Completed', 'PAY-20250325-004'),
(5, 5, '2025-03-26 08:00', 0.00, 'Refunded', 'PAY-20250326-005'),
(6, 6, '2025-04-05 09:20', 198.75, 'Completed', 'PAY-20250405-006'),
(7, 7, '2025-04-10 08:30', 175.25, 'Completed', 'PAY-20250410-007'),
(8, 8, '2025-04-14 09:15', 186.50, 'Completed', 'PAY-20250414-008'),
(9, 9, '2025-04-18 10:00', 220.00, 'Completed', 'PAY-20250418-009'),
(10, 10, '2025-04-23 09:30', 198.00, 'Pending', 'PAY-20250423-010'),
(11, 11, '2025-04-29 10:00', 260.50, 'Completed', 'PAY-20250429-011'),
(12, 12, '2025-05-03 09:40', 0.00, 'Refunded', 'PAY-20250503-012'),
(13, 13, '2025-05-08 08:55', 370.00, 'Completed', 'PAY-20250508-013'),
(14, 14, '2025-05-13 09:30', 295.50, 'Completed', 'PAY-20250513-014'),
(15, 15, '2025-05-16 08:15', 185.00, 'Completed', 'PAY-20250516-015'),
(16, 16, '2025-05-21 09:45', 250.00, 'Completed', 'PAY-20250521-016'),
(17, 17, '2025-05-26 10:10', 0.00, 'Failed', 'PAY-20250526-017'),
(18, 18, '2025-05-31 09:20', 295.20, 'Completed', 'PAY-20250531-018'),
(19, 19, '2025-06-05 08:35', 280.00, 'Completed', 'PAY-20250605-019'),
(20, 20, '2025-06-08 08:10', 0.00, 'Refunded', 'PAY-20250608-020'),
(21, 21, '2025-06-18 09:10', 320.50, 'Completed', 'PAY-20250618-021'),
(22, 22, '2025-06-23 09:20', 260.25, 'Completed', 'PAY-20250623-022'),
(23, 23, '2025-06-27 09:50', 210.00, 'Completed', 'PAY-20250627-023'),
(24, 24, '2025-07-02 10:05', 400.00, 'Completed', 'PAY-20250702-024'),
(25, 25, '2025-07-05 09:35', 345.50, 'Pending', 'PAY-20250705-025');
GO

--------------------------------------------------------
-- Create a Refund table under Finance Schema
--------------------------------------------------------

CREATE TABLE Finance.Refund (
    refund_id INT IDENTITY(1,1) PRIMARY KEY,
    payment_id INT NOT NULL,
    refund_date DATETIME NOT NULL,
    refund_amount DECIMAL(10,2) NOT NULL,
    refund_reason VARCHAR(100) NULL,
    refund_status VARCHAR(20) NOT NULL,

    CONSTRAINT FK_refund_payment
        FOREIGN KEY (payment_id)
        REFERENCES Finance.Rental_Payment(payment_id)
);
GO

--------------------------------------------------------
-- Insert Sample Data into Finance.Refund
--------------------------------------------------------
INSERT INTO Finance.Refund
(payment_id, refund_date, refund_amount, refund_reason, refund_status)
VALUES
(5, '2025-03-27 10:15', 150.00, 'Reservation cancelled before pickup', 'Processed'),
(12, '2025-05-04 09:00', 198.75, 'Weather-related cancellation', 'Processed'),
(17, '2025-05-27 11:00', 250.00, 'Payment failure refund', 'Processed'),
(20, '2025-06-09 08:30', 300.00, 'Vehicle unavailable for rental', 'Processed'),
(10, '2025-04-24 10:00', 198.00, 'Pending payment manually reversed', 'Pending'),
(3, '2025-03-16 09:15', 50.00, 'Partial mileage overcharge correction', 'Processed'),
(8, '2025-04-15 09:40', 25.00, 'Discount adjustment after billing error', 'Processed'),
(15, '2025-05-17 08:30', 50.00, 'Customer loyalty adjustment', 'Processed'),
(25, '2025-07-06 09:00', 345.50, 'Rental not completed due to early return', 'Pending'),
(18, '2025-06-01 10:30', 45.00, 'Minor complaint compensation', 'Processed');
GO

--------------------------------------------------------
-- Create Accounting_Entry Table under Finance Schema
--------------------------------------------------------
CREATE TABLE Finance.Accounting_Entry (
    accounting_entry_id INT IDENTITY(1,1) PRIMARY KEY,
    payment_id INT NOT NULL,                           -- FK to Finance.Rental_Payment
    branch_id INT NOT NULL,                            -- FK to Operation.Branch
    transaction_date DATETIME NOT NULL DEFAULT GETDATE(),
    debit_amount DECIMAL(10,2) NULL,                   -- Expenses or outflows (e.g., refunds, maintenance)
    credit_amount DECIMAL(10,2) NULL,                  -- Income or inflows (e.g., rental payments)
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    updated_at DATETIME NULL,
    remarks VARCHAR(200) NULL,

    CONSTRAINT FK_accounting_payment 
        FOREIGN KEY (payment_id) REFERENCES Finance.Rental_Payment(payment_id),

    CONSTRAINT FK_accounting_branch 
        FOREIGN KEY (branch_id) REFERENCES Operation.Branch(branch_id)
);
GO

--------------------------------------------------------
-- Insert Sample Data into Finance.Accounting_Entry
--------------------------------------------------------
INSERT INTO Finance.Accounting_Entry
(payment_id, branch_id, transaction_date, debit_amount, credit_amount, remarks)
VALUES
(1, 1, '2025-03-05 10:15', NULL, 245.50, 'Rental payment credited to Branch 1'),
(2, 2, '2025-03-10 09:40', NULL, 265.00, 'Rental payment credited to Branch 2'),
(3, 3, '2025-03-15 10:25', NULL, 275.40, 'Rental payment credited to Branch 3'),
(4, 4, '2025-03-25 11:30', NULL, 360.00, 'Rental payment credited to Branch 4'),
(5, 5, '2025-03-27 10:00', 150.00, NULL, 'Refund issued due to cancellation'),
(6, 1, '2025-04-05 09:20', NULL, 198.75, 'Rental payment received'),
(7, 2, '2025-04-10 08:30', NULL, 175.25, 'Rental payment received'),
(8, 3, '2025-04-15 09:40', 25.00, NULL, 'Small refund adjustment'),
(9, 4, '2025-04-18 10:00', NULL, 220.00, 'Rental payment credited'),
(10, 5, '2025-04-23 09:30', 198.00, NULL, 'Pending payment reversed'),
(11, 6, '2025-04-29 10:00', NULL, 260.50, 'Rental payment completed'),
(12, 7, '2025-05-03 09:40', 198.75, NULL, 'Full refund processed'),
(13, 8, '2025-05-08 08:55', NULL, 370.00, 'Rental payment credited'),
(14, 9, '2025-05-13 09:30', NULL, 295.50, 'Luxury vehicle rental income'),
(15, 10, '2025-05-17 08:30', 50.00, NULL, 'Loyalty refund adjustment'),
(16, 1, '2025-05-21 09:45', NULL, 250.00, 'Rental payment credited'),
(17, 2, '2025-05-26 10:10', 250.00, NULL, 'Payment failure refund'),
(18, 3, '2025-05-31 09:20', NULL, 295.20, 'Rental income'),
(19, 4, '2025-06-05 08:35', NULL, 280.00, 'Rental payment credited'),
(20, 5, '2025-06-09 08:30', 300.00, NULL, 'Refund due to vehicle maintenance issue');
GO

--------------------------------------------------------
-- Create Invoice Table
--------------------------------------------------------
CREATE TABLE Finance.Invoice (
    invoice_id INT IDENTITY(1,1) PRIMARY KEY,
    branch_id INT NOT NULL,
    rental_id INT NOT NULL,
    customer_id INT NOT NULL,
    invoice_date DATETIME NOT NULL DEFAULT GETDATE(),
    subtotal_amount DECIMAL(11,2) NOT NULL,
    tax_amount      DECIMAL(11,2) NOT NULL,
    discount_amount DECIMAL(11,2) NULL,
    total_amount    DECIMAL(11,2) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT GETDATE(),

    -- One invoice per rental
    CONSTRAINT UQ_Invoice_Rental UNIQUE (rental_id),

    -- Non-negative amounts
    CONSTRAINT CK_Invoice_NonNegative
        CHECK (
            subtotal_amount >= 0
            AND tax_amount >= 0
            AND (discount_amount IS NULL OR discount_amount >= 0)
            AND total_amount >= 0
        ),

    -- Arithmetic consistency
    CONSTRAINT CK_Invoice_TotalConsistency
        CHECK (
            total_amount = subtotal_amount - COALESCE(discount_amount, 0) + tax_amount
        ),

    CONSTRAINT FK_Invoice_Branch FOREIGN KEY (branch_id)
        REFERENCES Operation.Branch(branch_id)
        ON DELETE NO ACTION ON UPDATE NO ACTION,

    CONSTRAINT FK_Invoice_Customer FOREIGN KEY (customer_id)
        REFERENCES Customer.Customer(customer_id)
        ON DELETE NO ACTION ON UPDATE NO ACTION,

    CONSTRAINT FK_Invoice_Rental FOREIGN KEY (rental_id)
        REFERENCES Rental.Rental(rental_id)
        ON DELETE NO ACTION ON UPDATE NO ACTION
);
GO

--------------------------------------------------------
-- Insert Sample Data into Finance.Invoice
--------------------------------------------------------
INSERT INTO Finance.Invoice
(branch_id, rental_id, customer_id, subtotal_amount, tax_amount, discount_amount, total_amount)
VALUES
-- rental 1 (customer 1)
(1,  1,  1, 245.50, 18.41, 0.00, 263.91),
-- rental 2 (customer 2)
(2,  2,  2, 265.00, 19.13, 10.00, 274.13),
-- rental 3 (customer 3)
(3,  3,  3, 275.40, 20.27, 5.00, 290.67),
-- rental 4 (customer 4)
(4,  4,  4, 360.00, 28.80, 0.00, 388.80),
-- rental 6 (customer 6)
(5,  6,  6, 198.75, 14.90, 0.00, 213.65),
-- rental 7 (customer 7)
(6,  7,  7, 175.25, 13.14, 0.00, 188.39),
-- rental 8 (customer 8)
(7,  8,  8, 186.50, 13.64, 5.00, 195.14),
-- rental 9 (customer 9)
(8,  9,  9, 220.00, 17.60, 0.00, 237.60),
-- rental 11 (customer 11)
(9, 11, 11, 260.50, 20.00, 10.50, 270.00),
-- rental 13 (customer 13)
(10, 13, 13, 370.00, 29.60, 0.00, 399.60),
-- rental 14 (customer 14)
(11, 14, 14, 295.50, 22.40, 15.50, 302.40),
-- rental 15 (customer 15)
(12, 15, 15, 185.00, 13.32, 0.00, 198.32),
-- rental 16 (customer 16)
(13, 16, 16, 250.00, 18.75, 0.00, 268.75),
-- rental 18 (customer 18)
(14, 18, 18, 295.20, 23.00, 5.20, 313.00),
-- rental 19 (customer 19)
(15, 19, 19, 280.00, 22.40, 0.00, 302.40);
GO

--------------------------------------------------------
-- Create Invoice_Line Table
--------------------------------------------------------
CREATE TABLE Finance.Invoice_Line (
    invoice_line_id INT IDENTITY(1,1) PRIMARY KEY,
    invoice_id INT NOT NULL,
    rental_id INT NOT NULL,
    item_description VARCHAR(200) NOT NULL,
    quantity DECIMAL(10,2) NOT NULL DEFAULT 1,
    unit_price DECIMAL(10,2) NOT NULL,
    line_amount AS (quantity * unit_price) PERSISTED,  -- auto-calculated
    tax_rate DECIMAL(5,2) NULL,
    tax_amount DECIMAL(10,2) NULL,
    created_at DATETIME NOT NULL DEFAULT GETDATE(),

    --------------------------------------------------------
    -- FK to Invoice
    --------------------------------------------------------
    CONSTRAINT FK_InvoiceLine_Invoice FOREIGN KEY (invoice_id)
        REFERENCES Finance.Invoice(invoice_id)
        ON DELETE CASCADE       -- If invoice deleted, delete all lines
        ON UPDATE CASCADE,      -- Keep line items aligned with updated IDs

    --------------------------------------------------------
    -- FK to Rental
    --------------------------------------------------------
    CONSTRAINT FK_InvoiceLine_Rental FOREIGN KEY (rental_id)
        REFERENCES Rental.Rental(rental_id)
        ON DELETE NO ACTION     --Prevent accidental loss of rental data
        ON UPDATE CASCADE       --Allow rental_id changes (rare)
);
GO

--------------------------------------------------------
-- Insert Sample Data into Finance.Invoice_Line
--------------------------------------------------------
INSERT INTO Finance.Invoice_Line
(invoice_id, rental_id, item_description, quantity, unit_price, tax_rate, tax_amount)
VALUES
-- Invoice 1
(1, 1, 'Base Rental Charge (3 days)', 3, 75.00, 7.50, 16.88),
(1, 1, 'GPS Add-on', 1, 15.00, 7.50, 1.13),

-- Invoice 2
(2, 2, 'Base Rental Charge (3 days)', 3, 80.00, 7.25, 17.40),
(2, 2, 'Collision Damage Waiver (CDW)', 1, 20.00, 7.25, 1.45),

-- Invoice 3
(3, 3, 'Base Rental Charge (4 days)', 4, 70.00, 7.25, 20.30),
(3, 3, 'Child Seat', 1, 10.00, 7.25, 0.73),

-- Invoice 4
(4, 4, 'Base Rental Charge (5 days)', 5, 72.00, 8.00, 28.80),
(4, 4, 'Insurance Coverage', 1, 30.00, 8.00, 2.40),

-- Invoice 6
(5, 6, 'Base Rental Charge (4 days)', 4, 60.00, 7.25, 17.40),
(5, 6, 'GPS Add-on', 1, 15.00, 7.25, 1.09),

-- Invoice 7
(6, 7, 'Base Rental Charge (2 days)', 2, 85.00, 7.50, 12.75),
(6, 7, 'Roadside Assistance', 1, 10.00, 7.50, 0.75),

-- Invoice 8
(7, 8, 'Base Rental Charge (3 days)', 3, 62.00, 7.25, 13.46),
(7, 8, 'Full Insurance Package', 1, 25.00, 7.25, 1.81),

-- Invoice 9
(8, 9, 'Base Rental Charge (3 days)', 3, 68.00, 8.00, 16.32),
(8, 9, 'Premium GPS Add-on', 1, 20.00, 8.00, 1.60),

-- Invoice 11
(9, 11, 'Base Rental Charge (4 days)', 4, 65.00, 7.25, 18.85),
(9, 11, 'Fuel Refill Fee', 1, 30.00, 7.25, 2.18),

-- Invoice 12
(10, 13, 'Base Rental Charge (5 days)', 5, 72.00, 7.25, 26.10),
(10, 13, 'Luxury Car Surcharge', 1, 45.00, 7.25, 3.26),

-- Invoice 13
(11, 14, 'Base Rental Charge (4 days)', 4, 70.00, 7.25, 20.30),
(11, 14, 'Insurance Coverage', 1, 25.00, 7.25, 1.81),

-- Invoice 14
(12, 15, 'Base Rental Charge (3 days)', 3, 65.00, 7.25, 14.14),
(12, 15, 'GPS Add-on', 1, 15.00, 7.25, 1.09),

-- Invoice 15
(13, 16, 'Base Rental Charge (4 days)', 4, 68.00, 8.00, 21.76),
(13, 16, 'Collision Damage Waiver (CDW)', 1, 25.00, 8.00, 2.00);
GO

--------------------------------------------------------
-- Create Tax Table under Finance Schema
--------------------------------------------------------
CREATE TABLE Finance.Tax (
    tax_id INT IDENTITY(1,1) PRIMARY KEY,
    estimate_id INT NOT NULL,
    branch_id INT NOT NULL,
    tax_name VARCHAR(30) NOT NULL,
    tax_rate DECIMAL(5,2) NOT NULL CHECK (tax_rate >= 0),
    effective_start_date DATE NOT NULL,
    effective_end_date DATE NULL,
    tax_notes VARCHAR(150) NULL,

    --------------------------------------------------------
    -- Foreign Keys
    --------------------------------------------------------
    CONSTRAINT FK_tax_estimate
        FOREIGN KEY (estimate_id)
        REFERENCES Finance.Rental_Estimate(estimate_id)
        ON DELETE CASCADE       --  If estimate removed, delete its tax data
        ON UPDATE CASCADE,

    CONSTRAINT FK_tax_branch
        FOREIGN KEY (branch_id)
        REFERENCES Operation.Branch(branch_id)
        ON DELETE NO ACTION      -- Don’t delete tax history if branch removed
        ON UPDATE CASCADE
);
GO

--------------------------------------------------------
-- Insert Sample Data into Finance.Tax
--------------------------------------------------------
INSERT INTO Finance.Tax
(estimate_id, branch_id, tax_name, tax_rate, effective_start_date, effective_end_date, tax_notes)
VALUES
(1, 1, 'State Tax', 7.25, '2024-01-01', NULL, 'Standard state vehicle rental tax'),
(2, 2, 'City Tax', 3.50, '2024-01-01', NULL, 'City transportation surcharge'),
(3, 3, 'Environmental Fee', 1.25, '2024-01-01', NULL, 'Eco sustainability fund'),
(4, 4, 'State Tax', 7.00, '2024-01-01', NULL, 'General state tax for rentals'),
(5, 5, 'Tourism Tax', 4.50, '2024-01-01', NULL, 'Applies to tourist rental zones'),
(6, 6, 'State Tax', 7.25, '2024-01-01', NULL, NULL),
(7, 7, 'Local Tax', 2.50, '2024-01-01', NULL, 'Minor local rental tax'),
(8, 8, 'Road Maintenance Fee', 1.75, '2024-01-01', NULL, 'Road infrastructure maintenance fund'),
(9, 9, 'Airport Surcharge', 5.00, '2024-01-01', NULL, 'Applicable to airport branches'),
(10, 10, 'State Tax', 7.25, '2024-01-01', NULL, 'Applies statewide'),
(11, 11, 'Environmental Fee', 1.50, '2024-01-01', NULL, 'Environmental recovery charge'),
(12, 12, 'Tourism Tax', 3.75, '2024-01-01', NULL, NULL),
(13, 13, 'Luxury Vehicle Tax', 9.00, '2024-01-01', NULL, 'Applies to premium class rentals'),
(14, 14, 'City Surcharge', 2.25, '2024-01-01', NULL, 'Applies to high-traffic city locations'),
(15, 15, 'Electric Vehicle Discount', 0.00, '2024-01-01', NULL, 'No tax for electric vehicle rentals');
GO

--------------------------------------------------------
-- Create Charge_Type Table under Finance Schema (final)
--------------------------------------------------------
CREATE TABLE Finance.Charge_Type (
    charge_type_id INT IDENTITY(1,1) PRIMARY KEY,
    charge_code VARCHAR(10) NOT NULL UNIQUE,       -- e.g., 'BASE', 'GPS', 'INS'
    charge_name VARCHAR(50) NOT NULL,              -- Descriptive name
    charge_category VARCHAR(30) NULL,              -- e.g., 'Rental', 'Insurance', 'Fee'
    charge_basis VARCHAR(30) NULL,                 -- e.g., 'Per Day', 'Flat Rate', 'Per Hour'

    CONSTRAINT CK_ChargeType_Basis CHECK (
        charge_basis IN ('Per Day','Per Hour','Flat Rate','Per Week','Per Month')
        OR charge_basis IS NULL
    )
);
GO

INSERT INTO Finance.Charge_Type
(charge_code, charge_name, charge_category, charge_basis)
VALUES
('BASE', 'Base Rental Charge', 'Rental', 'Per Day'),
('GPS', 'GPS Navigation System', 'Add-On', 'Flat Rate'),
('INS', 'Insurance Coverage', 'Insurance', 'Per Day'),
('CDW', 'Collision Damage Waiver', 'Insurance', 'Per Day'),
('CHSEAT', 'Child Seat', 'Add-On', 'Flat Rate'),
('FUEL', 'Fuel Refill Fee', 'Fee', 'Flat Rate'),
('LUX', 'Luxury Vehicle Surcharge', 'Surcharge', 'Per Day'),
('ROADS', 'Roadside Assistance', 'Add-On', 'Flat Rate'),
('CLEAN', 'Cleaning Fee', 'Fee', 'Flat Rate'),
('DELAY', 'Late Return Penalty', 'Fee', 'Per Hour'),
('ELEC', 'Electric Vehicle Charging', 'Usage', 'Per Hour'),
('ENV', 'Environmental Fee', 'Fee', 'Flat Rate'),
('TOUR', 'Tourism Surcharge', 'Tax', 'Flat Rate'),
('LOYAL', 'Loyalty Discount', 'Discount', 'Flat Rate');
GO

--------------------------------------------------------
-- Create Rental_Charge Table under Finance Schema
--------------------------------------------------------
CREATE TABLE Finance.Rental_Charge (
    rental_charge_id INT IDENTITY(1,1) PRIMARY KEY,
    estimate_id INT NOT NULL,
    branch_id INT NOT NULL,
    charge_type_id INT NOT NULL,
    charge_date DATETIME NOT NULL DEFAULT GETDATE(),
    charge_description VARCHAR(200) NULL,
    charge_unit_quantity DECIMAL(10,2) NULL CHECK (charge_unit_quantity >= 0),
    charge_unit_rate DECIMAL(10,2) NULL CHECK (charge_unit_rate >= 0),
    charge_amount AS (charge_unit_quantity * charge_unit_rate) PERSISTED, -- ✅ auto-calculated total
    created_at DATETIME NOT NULL DEFAULT GETDATE(),

    --------------------------------------------------------
    -- Foreign Keys
    --------------------------------------------------------
    CONSTRAINT FK_rental_charge_estimate 
        FOREIGN KEY (estimate_id) 
        REFERENCES Finance.Rental_Estimate(estimate_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT FK_rental_charge_branch 
        FOREIGN KEY (branch_id) 
        REFERENCES Operation.Branch(branch_id)
        ON DELETE NO ACTION
        ON UPDATE CASCADE,

    CONSTRAINT FK_rental_charge_type 
        FOREIGN KEY (charge_type_id) 
        REFERENCES Finance.Charge_Type(charge_type_id)
        ON DELETE NO ACTION
        ON UPDATE CASCADE
);
GO

--------------------------------------------------------
-- Corrected Insert into Finance.Rental_Charge
--------------------------------------------------------
INSERT INTO Finance.Rental_Charge
(estimate_id, branch_id, charge_type_id, charge_date, charge_description, charge_unit_quantity, charge_unit_rate)
VALUES
(1, 1, 5, '2025-03-01', 'Base Rental Charge (3 Days)', 3, 75.00),
(1, 1, 6, '2025-03-01', 'GPS Add-on', 1, 15.00),
(2, 2, 5, '2025-03-07', 'Base Rental Charge (3 Days)', 3, 80.00),
(2, 2, 7, '2025-03-07', 'Insurance Coverage', 1, 20.00),
(3, 3, 5, '2025-03-12', 'Base Rental Charge (4 Days)', 4, 70.00),
(3, 3, 9, '2025-03-12', 'Child Seat', 1, 10.00),
(4, 4, 5, '2025-03-20', 'Base Rental Charge (5 Days)', 5, 72.00),
(4, 4, 8, '2025-03-20', 'Collision Damage Waiver', 1, 30.00),
(5, 5, 5, '2025-03-26', 'Base Rental Charge (2 Days)', 2, 65.00),
(5, 5, 12, '2025-03-26', 'Roadside Assistance', 1, 10.00),
(6, 6, 5, '2025-04-01', 'Base Rental Charge (3 Days)', 3, 68.00),
(6, 6, 11, '2025-04-01', 'Luxury Vehicle Surcharge', 1, 25.00),
(7, 7, 5, '2025-04-08', 'Base Rental Charge (4 Days)', 4, 60.00),
(7, 7, 7, '2025-04-08', 'Insurance Coverage', 1, 15.00),
(8, 8, 5, '2025-04-15', 'Base Rental Charge (3 Days)', 3, 70.00);
GO


--------------------------------------------------------
-- Create Loyalty Table (with optional membership)
--------------------------------------------------------
CREATE TABLE Customer.Loyalty (
    loyalty_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT NOT NULL,
    loyalty_type VARCHAR(20) NULL CHECK (loyalty_type IN ('Basic','Silver','Gold','Platinum') OR loyalty_type IS NULL),
    loyalty_rewards DECIMAL(10,2) NULL CHECK (loyalty_rewards IS NULL OR loyalty_rewards >= 0),
    loyalty_join_date DATE NULL DEFAULT CAST(GETDATE() AS DATE),

    CONSTRAINT FK_loyalty_customer
        FOREIGN KEY (customer_id)
        REFERENCES Customer.Customer(customer_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
GO

--------------------------------------------------------
-- Insert Sample Data into Customer.Loyalty (mixed enrollment)
--------------------------------------------------------
INSERT INTO Customer.Loyalty
(customer_id, loyalty_type, loyalty_rewards, loyalty_join_date)
VALUES
(1,  'Silver',   125.00, '2023-02-15'),
(2,  'Gold',     260.50, '2022-08-10'),
(3,  NULL,        NULL,   NULL),
(4,  'Platinum', 480.00, '2021-09-03'),
(5,  'Silver',   175.25, '2022-05-14'),
(6,  NULL,        NULL,   NULL),
(7,  'Gold',     315.00, '2023-11-21'),
(8,  NULL,        NULL,   NULL),
(9,  'Silver',   145.00, '2023-07-08'),
(10, NULL,        NULL,   NULL),
(11, 'Platinum', 500.00, '2021-12-11'),
(12, 'Basic',     55.00,  '2024-02-01'),
(13, NULL,        NULL,   NULL),
(14, 'Gold',     275.75, '2022-09-10'),
(15, 'Basic',     20.00,  '2024-05-02'),
(16, 'Silver',   195.50, '2023-04-20'),
(17, NULL,        NULL,   NULL),
(18, 'Gold',     310.00, '2022-11-23'),
(19, 'Silver',   140.00, '2023-01-30'),
(20, NULL,        NULL,   NULL),
(21, 'Platinum', 550.00, '2021-06-25'),
(22, 'Gold',     290.00, '2022-12-14'),
(23, 'Silver',   165.00, '2023-08-02'),
(24, NULL,        NULL,   NULL),
(25, 'Gold',     285.00, '2022-09-18');
GO

--------------------------------------------------------
-- Create Promotions Table under Finance Schema
--------------------------------------------------------
CREATE TABLE Finance.Promotions (
    promotion_id INT IDENTITY(1,1) PRIMARY KEY,
    loyalty_id INT NULL,
    estimate_id INT NULL,
    promotion_code VARCHAR(20) NOT NULL UNIQUE,
    promotion_name VARCHAR(50) NOT NULL,
    promotion_description VARCHAR(150) NULL,
    promotion_value DECIMAL(10,2) NOT NULL CHECK (promotion_value >= 0),
    promotion_type VARCHAR(30) NOT NULL 
        CHECK (promotion_type IN ('Public','Loyalty','Seasonal','Referral','Corporate')),
    promotion_start_date DATETIME NOT NULL,
    promotion_end_date DATETIME NOT NULL,
    is_active BIT NOT NULL DEFAULT 1,
    created_at DATETIME NOT NULL DEFAULT GETDATE(),

    --------------------------------------------------------
    -- Table-level CHECK constraint (valid date range)
    --------------------------------------------------------
    CONSTRAINT CK_Promotions_DateRange 
        CHECK (promotion_end_date > promotion_start_date),

    --------------------------------------------------------
    -- Foreign Keys (optional)
    --------------------------------------------------------
    CONSTRAINT FK_promotions_loyalty
        FOREIGN KEY (loyalty_id)
        REFERENCES Customer.Loyalty(loyalty_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,

    CONSTRAINT FK_promotions_estimate
        FOREIGN KEY (estimate_id)
        REFERENCES Finance.Rental_Estimate(estimate_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);
GO

--------------------------------------------------------
-- Insert Sample Data into Finance.Promotions
--------------------------------------------------------
INSERT INTO Finance.Promotions
(loyalty_id, estimate_id, promotion_code, promotion_name, promotion_description,
 promotion_value, promotion_type, promotion_start_date, promotion_end_date, is_active)
VALUES
-- Public Promotions
(NULL,  NULL, 'SPRING10',   'Spring Sale', 
 '10% off all rentals during March and April', 
 10.00, 'Public', '2025-03-01', '2025-04-30', 1),

(NULL,  NULL, 'NEWCUSTOMER50', 'Welcome Offer', 
 '50% off for first-time customers', 
 50.00, 'Public', '2025-01-01', '2025-06-30', 1),

(NULL,  NULL, 'STUDENT15', 'Student Discount', 
 '15% off with valid student ID', 
 15.00, 'Public', '2025-04-01', '2025-12-31', 1),

(NULL,  NULL, 'WEEKEND25', 'Weekend Saver', 
 '25% off weekend rentals (Fri–Sun only)', 
 25.00, 'Public', '2025-05-01', '2025-09-01', 1),

(NULL,  NULL, 'ECO5', 'Eco Drive', 
 '5% off hybrid and electric vehicles', 
 5.00, 'Public', '2025-03-01', '2025-12-31', 1),


-- Loyalty-Based Promotions
(1,  1,  'LOYAL15', 'Silver Bonus', 
 '15% discount for Silver loyalty members', 
 15.00, 'Loyalty', '2025-01-01', '2025-12-31', 1),

(2,  2,  'GOLD25', 'Gold Elite Offer', 
 '25% discount for Gold loyalty members', 
 25.00, 'Loyalty', '2025-01-01', '2025-12-31', 1),

(4,  4,  'PLAT40', 'Platinum Reward', 
 '40% discount for Platinum members', 
 40.00, 'Loyalty', '2025-02-01', '2025-12-31', 1),

(7,  7,  'LOYAL05', 'Member Appreciation', 
 '5% loyalty bonus for active members', 
 5.00, 'Loyalty', '2025-03-01', '2025-12-31', 1),

(10, 10, 'LOYAL20', 'Gold Annual Reward', 
 '20% annual discount for Gold loyalty members', 
 20.00, 'Loyalty', '2025-01-01', '2025-12-31', 1),


-- Seasonal Promotions
(NULL,  3,  'SUMMER20', 'Summer Savings', 
 '20% discount for rentals between June and August', 
 20.00, 'Seasonal', '2025-06-01', '2025-08-31', 1),

(NULL,  NULL, 'HOLIDAY30', 'Holiday Special', 
 '30% discount for bookings during holidays', 
 30.00, 'Seasonal', '2025-12-01', '2026-01-05', 0),

(NULL,  NULL, 'FALL10', 'Fall Discount', 
 '10% off all rentals during the fall season', 
 10.00, 'Seasonal', '2025-09-01', '2025-11-30', 1),


-- Referral and Corporate Promotions
(NULL,  5,  'REF10', 'Referral Bonus', 
 '10% off when referred by a friend', 
 10.00, 'Referral', '2025-03-01', '2025-09-30', 1),

(NULL,  8,  'CORP20', 'Corporate Deal', 
 '20% off for registered corporate partners', 
 20.00, 'Corporate', '2025-01-01', '2025-12-31', 1);
GO

--------------------------------------------------------
-- Create Employee_Role Table under Operation Schema
--------------------------------------------------------
CREATE TABLE Operation.Employee_Role (
    employee_role_id INT IDENTITY(1,1) PRIMARY KEY,
    role VARCHAR(30) NOT NULL,
    access_level VARCHAR(20) NULL CHECK (access_level IN ('Admin','Manager','Staff','Limited'))
);
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

--------------------------------------------------------
-- Create Employee Table under Operation Schema 
--------------------------------------------------------
CREATE TABLE Operation.Employee (
    employee_id INT IDENTITY(1,1) PRIMARY KEY,
    branch_id INT NOT NULL,
    employee_role_id INT NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    middle_name VARCHAR(30) NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    phone_number VARCHAR(15) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR(10) NOT NULL CHECK (gender IN ('Male','Female','Other')),
    hire_date DATE NOT NULL,
    status VARCHAR(20) NOT NULL CHECK (status IN ('Active','On Leave','Terminated','Retired')),
    created_at DATETIME NOT NULL DEFAULT GETDATE(),

    CONSTRAINT FK_Employee_Branch 
        FOREIGN KEY (branch_id) REFERENCES Operation.Branch(branch_id)
        ON DELETE CASCADE ON UPDATE CASCADE,

    CONSTRAINT FK_Employee_Role 
        FOREIGN KEY (employee_role_id) REFERENCES Operation.Employee_Role(employee_role_id)
        ON DELETE NO ACTION ON UPDATE CASCADE
);
GO

--------------------------------------------------------
-- Insert data to Employees into Operation.Employee
--------------------------------------------------------
INSERT INTO Operation.Employee
(branch_id, employee_role_id, first_name, middle_name, last_name, email, phone_number,
 date_of_birth, gender, hire_date, status)
VALUES
(1, 7,  'Michael', NULL, 'Thompson', 'michael.thompson@carrental.com', '507-555-1001', '1985-03-14', 'Male',   '2015-06-01', 'Active'),
(1, 9,  'Sarah', 'L', 'Johnson', 'sarah.johnson@carrental.com', '507-555-1002', '1990-11-22', 'Female', '2018-04-12', 'Active'),
(1, 1, 'Anthony', NULL, 'Perez', 'anthony.perez@carrental.com', '507-555-1003', '1991-12-09', 'Male', '2018-05-12', 'Active'),
(1, 2, 'Ethan', NULL, 'Ward', 'ethan.ward@carrental.com', '507-555-1004', '1982-09-08', 'Male', '2010-11-15', 'Retired'),
(2, 8,  'David', NULL, 'Nguyen', 'david.nguyen@carrental.com', '507-555-2001', '1988-09-09', 'Male', '2016-09-01', 'Active'),
(2, 5, 'Natalie', NULL, 'Carter', 'natalie.carter@carrental.com', '507-555-2002', '1994-03-01', 'Female', '2021-07-19', 'Active'),
(2, 4, 'Ava', 'M', 'Cook', 'ava.cook@carrental.com', '507-555-2003', '1997-07-23', 'Female', '2021-03-22', 'Active'),
(3, 9,  'Joshua', NULL, 'Martinez', 'joshua.martinez@carrental.com', '507-555-3001', '1992-12-04', 'Male', '2017-03-18', 'Active'),
(3, 3, 'Amanda', 'K', 'Clark', 'amanda.clark@carrental.com', '507-555-3002', '1996-08-12', 'Female', '2021-06-23', 'Active'),
(3, 4, 'Andrew', NULL, 'Baker', 'andrew.baker@carrental.com', '507-555-3003', '1987-01-16', 'Male', '2015-04-05', 'Active'),
(3, 8, 'Logan', NULL, 'Price', 'logan.price@carrental.com', '507-555-3004', '1990-05-19', 'Male', '2017-12-04', 'Active'),
(4, 7,  'James', NULL, 'Anderson', 'james.anderson@carrental.com', '507-555-4001', '1983-04-11', 'Male', '2012-02-10', 'Active'),
(4, 9, 'Maria', NULL, 'Lopez', 'maria.lopez@carrental.com', '507-555-4002', '1995-07-08', 'Female', '2022-03-05', 'Active'),
(4, 3, 'Hannah', NULL, 'Evans', 'hannah.evans@carrental.com', '507-555-4003', '1996-06-28', 'Female', '2022-01-10', 'Active'),
(4, 2, 'Daniel', NULL, 'Rogers', 'daniel.rogers@carrental.com', '507-555-4004', '1991-05-04', 'Male', '2016-10-14', 'Active'),
(4, 1, 'Chloe', NULL, 'Bell', 'chloe.bell@carrental.com', '507-555-4005', '1996-09-10', 'Female', '2020-10-19', 'Active'),
(5, 10, 'Robert', 'E', 'White', 'robert.white@carrental.com', '507-555-5001', '1989-05-18', 'Male', '2016-10-21', 'Active'),
(5, 8, 'Jennifer', NULL, 'Kim', 'jennifer.kim@carrental.com', '507-555-5002', '1993-01-07', 'Female', '2019-07-11', 'Active'),
(5, 9,  'Brandon', NULL, 'Green', 'brandon.green@carrental.com', '507-555-5003', '1993-02-21', 'Male', '2018-03-18', 'On Leave'),
(5, 5, 'William', NULL, 'Adams', 'william.adams@carrental.com', '507-555-5004', '1989-08-22', 'Male', '2015-02-17', 'Terminated'),
(6, 9,  'Thomas', NULL, 'Scott', 'thomas.scott@carrental.com', '507-555-6001', '1991-09-03', 'Male', '2018-11-09', 'Active'),
(6, 6, 'Olivia', 'M', 'Reed', 'olivia.reed@carrental.com', '507-555-6002', '1997-05-25', 'Female', '2021-09-14', 'On Leave'),
(6, 7,  'Victoria', NULL, 'Morris', 'victoria.morris@carrental.com', '507-555-6003', '1988-11-30', 'Female', '2014-09-07', 'Active'),
(6, 8, 'Ella', NULL, 'Murphy', 'ella.murphy@carrental.com', '507-555-6004', '1994-10-11', 'Female', '2020-05-08', 'Active'),
(7, 9, 'Christopher', NULL, 'Walker', 'christopher.walker@carrental.com', '507-555-7001', '1980-02-19', 'Male', '2010-01-01', 'Active'),
(7, 8,  'Sophia', NULL, 'Rivera', 'sophia.rivera@carrental.com', '507-555-7002', '1992-10-22', 'Female', '2017-02-20', 'Active'),
(7, 4, 'Daniel', NULL, 'Rogers', 'daniel.rogers2@carrental.com', '507-555-7003', '1990-05-14', 'Male', '2015-05-11', 'Active'),
(8, 9,  'Jacob', NULL, 'Hill', 'jacob.hill@carrental.com', '507-555-8001', '1990-07-30', 'Male', '2016-08-25', 'Active'),
(8, 10, 'Grace', 'L', 'Young', 'grace.young@carrental.com', '507-555-8002', '1995-02-13', 'Female', '2020-06-02', 'Active'),
(8, 10, 'Zoe', NULL, 'Reyes', 'zoe.reyes@carrental.com', '507-555-8003', '1998-04-20', 'Female', '2023-02-03', 'Active');
GO

--------------------------------------------------------
-- Create Vehicle_Warranty Table
--------------------------------------------------------
CREATE TABLE Vehicle.Vehicle_Warranty (
    warranty_id INT IDENTITY(1,1) PRIMARY KEY,
    vehicle_vin VARCHAR(17) NOT NULL,
    warranty_type VARCHAR(30) NOT NULL,
    warranty_provider VARCHAR(50) NULL,
    warranty_period_months INT NOT NULL,
    warranty_mileage_limit DECIMAL(10,2) NULL,
    warranty_start_date DATE NOT NULL,
    warranty_end_date DATE NOT NULL,
    warranty_status VARCHAR(20) NOT NULL DEFAULT 'Active',
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    updated_at DATETIME NULL,

    CONSTRAINT FK_VehicleWarranty_Vehicle FOREIGN KEY (vehicle_vin) REFERENCES Vehicle.Vehicle(vehicle_vin)
        ON DELETE CASCADE ON UPDATE CASCADE,

    CONSTRAINT CK_Warranty_Expiry CHECK (warranty_end_date > warranty_start_date)
);
GO

--------------------------------------------------------
-- Insert data into Vehicle.Vehicle_Warranty
--------------------------------------------------------

INSERT INTO Vehicle.Vehicle
(vehicle_vin, vehicle_class_id, vehicle_type_id, fuel_type_id, purchase_id, branch_id,
 make, model, year, color, status, mileage)
VALUES
('VIN0001A123456789', 1, 1, 1, 1, 1, 'Toyota', 'Camry', 2022, 'White', 'Available', 15400),
('VIN0002B123456781', 1, 2, 1, 2, 2, 'Honda', 'CR-V', 2023, 'Blue', 'Available', 8200),
('VIN0003C123456782', 2, 3, 2, 3, 3, 'Ford', 'F-150', 2021, 'Black', 'Rented', 24500),
('VIN0004D123456783', 3, 2, 1, 4, 4, 'Chevrolet', 'Tahoe', 2022, 'Silver', 'Available', 17300),
('VIN0005E123456784', 1, 1, 3, 5, 5, 'Hyundai', 'Elantra', 2021, 'Gray', 'Available', 26500),
('VIN0006F123456785', 3, 1, 4, 6, 6, 'Tesla', 'Model 3', 2022, 'Red', 'Available', 11000),
('VIN0007G123456786', 3, 1, 4, 7, 7, 'Nissan', 'Leaf', 2020, 'Blue', 'Maintenance', 28000),
('VIN0008H123456787', 1, 1, 1, 8, 8, 'Toyota', 'Corolla', 2020, 'White', 'Available', 39000),
('VIN0009I123456788', 2, 2, 1, 9, 1, 'Kia', 'Sorento', 2023, 'Black', 'Available', 8900),
('VIN0010J123456789', 3, 2, 1, 10, 2, 'Ford', 'Escape', 2022, 'Gray', 'Rented', 14400),
('VIN0011K123456780', 3, 3, 3, 11, 3, 'Hyundai', 'Tucson Hybrid', 2023, 'White', 'Available', 9600),
('VIN0012L123456781', 1, 1, 1, 12, 4, 'Honda', 'Civic', 2022, 'Silver', 'Available', 15300),
('VIN0013M123456782', 2, 2, 1, 13, 5, 'Chevrolet', 'Traverse', 2021, 'Blue', 'Rented', 27800),
('VIN0014N123456783', 3, 3, 3, 14, 6, 'Tesla', 'Model Y', 2023, 'Black', 'Available', 6500),
('VIN0015O123456784', 1, 1, 1, 15, 7, 'Mazda', '3 Sedan', 2022, 'Red', 'Available', 9900);
GO

--------------------------------------------------------
-- Create Vehicle_Registration Table 
--------------------------------------------------------
CREATE TABLE Vehicle.Vehicle_Registration (
    registration_id INT IDENTITY(1,1) PRIMARY KEY,
    vehicle_vin VARCHAR(17) NOT NULL,
    registration_number VARCHAR(20) NOT NULL UNIQUE,
    license_plate VARCHAR(20) NOT NULL UNIQUE,
    registration_state VARCHAR(30) NOT NULL,
    registration_issue_date DATE NOT NULL,
    registration_expiry_date DATE NOT NULL,
    registration_status VARCHAR(20) NOT NULL DEFAULT 'Active',
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    updated_at DATETIME NULL,

    CONSTRAINT FK_VehicleRegistration_Vehicle 
        FOREIGN KEY (vehicle_vin) 
        REFERENCES Vehicle.Vehicle(vehicle_vin)
        ON DELETE CASCADE 
        ON UPDATE CASCADE,

    CONSTRAINT CK_Registration_Expiry 
        CHECK (registration_expiry_date > registration_issue_date)
);
GO

--------------------------------------------------------
-- Insert Sample Data into Vehicle.Vehicle_Registration
--------------------------------------------------------
INSERT INTO Vehicle.Vehicle_Registration
(vehicle_vin, registration_number, license_plate, registration_state, 
 registration_issue_date, registration_expiry_date, registration_status)
VALUES
('VIN0001A123456789', 'REG2022MN001', 'MNX-3210', 'Minnesota', '2022-01-10', '2025-01-10', 'Active'),
('VIN0002B123456781', 'REG2023CA002', 'CAZ-1145', 'California', '2023-03-15', '2026-03-15', 'Active'),
('VIN0003C123456782', 'REG2021TX003', 'TXA-8891', 'Texas', '2021-06-01', '2024-06-01', 'Expired'),
('VIN0004D123456783', 'REG2022NY004', 'NYH-5523', 'New York', '2022-08-20', '2025-08-20', 'Active'),
('VIN0005E123456784', 'REG2021FL005', 'FLR-3390', 'Florida', '2021-12-05', '2024-12-05', 'Expired'),
('VIN0006F123456785', 'REG2020NV006', 'NVG-7082', 'Nevada', '2020-02-10', '2023-02-10', 'Expired'),
('VIN0007G123456786', 'REG2021WA007', 'WAP-4621', 'Washington', '2021-09-12', '2024-09-12', 'Active'),
('VIN0008H123456787', 'REG2020IL008', 'ILB-9914', 'Illinois', '2020-05-01', '2023-05-01', 'Expired'),
('VIN0009I123456788', 'REG2023AZ009', 'AZM-7765', 'Arizona', '2023-04-01', '2026-04-01', 'Active'),
('VIN0010J123456789', 'REG2022OH010', 'OHC-1229', 'Ohio', '2022-07-07', '2025-07-07', 'Active'),
('VIN0011K123456780', 'REG2021CO011', 'COV-3487', 'Colorado', '2021-03-22', '2024-03-22', 'Expired'),
('VIN0012L123456781', 'REG2022GA012', 'GAT-6441', 'Georgia', '2022-10-10', '2025-10-10', 'Active'),
('VIN0013M123456782', 'REG2020MI013', 'MIX-5533', 'Michigan', '2020-12-12', '2023-12-12', 'Expired'),
('VIN0014N123456783', 'REG2021UT014', 'UTR-2208', 'Utah', '2021-02-18', '2024-02-18', 'Active'),
('VIN0015O123456784', 'REG2023WI015', 'WIX-8832', 'Wisconsin', '2023-05-10', '2026-05-10', 'Active');
GO

--------------------------------------------------------
-- Create Inspection Table
--------------------------------------------------------
CREATE TABLE Vehicle.Inspection (
    inspection_id INT IDENTITY(1,1) PRIMARY KEY,
    employee_id INT NOT NULL,
    vehicle_vin VARCHAR(17) NOT NULL,
    rental_id INT NULL,  -- Uncomment when Rental.Rental is available
    inspection_date DATETIME NOT NULL,
    inspection_type VARCHAR(4) NOT NULL,  -- 'Pre' or 'Post'
    inspection_mileage DECIMAL(10,2) NOT NULL,
    fuel_level DECIMAL(5,2) NULL,
    inspection_media_path VARCHAR(100) NULL,
    inspection_status VARCHAR(30) NOT NULL,
    inspection_signoff BIT NOT NULL DEFAULT 0,
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    updated_at DATETIME NULL,

    CONSTRAINT FK_Inspection_Vehicle FOREIGN KEY (vehicle_vin) REFERENCES Vehicle.Vehicle(vehicle_vin),
    CONSTRAINT FK_Inspection_Employee FOREIGN KEY (employee_id) REFERENCES Operation.Employee(employee_id),

    CONSTRAINT CK_Inspection_Type CHECK (inspection_type IN ('Pre','Post'))
);
GO

--------------------------------------------------------
-- Insert Sample Data into Vehicle.Inspection
--------------------------------------------------------
INSERT INTO Vehicle.Inspection
(employee_id, vehicle_vin, rental_id, inspection_date, inspection_type, inspection_mileage, 
 fuel_level, inspection_media_path, inspection_status, inspection_signoff)
VALUES
(2,  'VIN0001A123456789', NULL, '2025-03-01 09:00', 'Pre', 15400, 95.0, '/media/inspections/pre_camry_001.jpg', 'Passed', 1),
(3,  'VIN0001A123456789', 1,    '2025-03-05 17:30', 'Post', 15510, 60.0, '/media/inspections/post_camry_001.jpg', 'Passed', 1),
(4,  'VIN0002B123456781', NULL, '2025-04-10 08:45', 'Pre', 8200, 85.0, '/media/inspections/pre_crv_002.jpg', 'Passed', 1),
(5,  'VIN0003C123456782', 3,    '2025-04-13 18:20', 'Post', 24800, 50.0, '/media/inspections/post_f150_003.jpg', 'Requires Maintenance', 0),
(6,  'VIN0004D123456783', NULL, '2025-02-22 09:30', 'Pre', 17300, 90.0, '/media/inspections/pre_tahoe_004.jpg', 'Passed', 1),
(7,  'VIN0005E123456784', NULL, '2025-03-02 08:15', 'Pre', 26500, 80.0, '/media/inspections/pre_elantra_005.jpg', 'Passed', 1),
(8,  'VIN0005E123456784', 5,    '2025-03-07 17:45', 'Post', 26700, 40.0, '/media/inspections/post_elantra_005.jpg', 'Passed', 1),
(9,  'VIN0006F123456785', NULL, '2025-04-01 09:10', 'Pre', 11000, 98.0, '/media/inspections/pre_tesla_006.jpg', 'Passed', 1),
(10, 'VIN0007G123456786', NULL, '2025-03-05 08:40', 'Pre', 28000, 75.0, '/media/inspections/pre_leaf_007.jpg', 'Passed', 1),
(11, 'VIN0008H123456787', NULL, '2025-02-20 09:00', 'Pre', 39000, 88.0, '/media/inspections/pre_corolla_008.jpg', 'Failed', 0),
(12, 'VIN0008H123456787', 10,   '2025-02-25 18:15', 'Post', 39120, 50.0, '/media/inspections/post_corolla_008.jpg', 'Passed', 1),
(13, 'VIN0009I123456788', NULL, '2025-03-03 08:55', 'Pre', 8900, 97.0, '/media/inspections/pre_sorento_009.jpg', 'Passed', 1),
(14, 'VIN0010J123456789', NULL, '2025-03-08 09:05', 'Pre', 14400, 90.0, '/media/inspections/pre_escape_010.jpg', 'Passed', 1),
(15, 'VIN0011K123456780', NULL, '2025-03-10 08:50', 'Pre', 9600, 95.0, '/media/inspections/pre_tucson_011.jpg', 'Passed', 1),
(16, 'VIN0012L123456781', NULL, '2025-03-12 09:10', 'Pre', 15300, 92.0, '/media/inspections/pre_civic_012.jpg', 'Passed', 1);
GO

--------------------------------------------------------
-- Create Vehicle.Damage Table
--------------------------------------------------------
CREATE TABLE Vehicle.Damage (
    damage_id INT IDENTITY(1,1) PRIMARY KEY,
    inspection_id INT NOT NULL,
    damage_description VARCHAR(200) NOT NULL,
    estimated_repair_cost DECIMAL(10,2) NULL,          -- optional for future finance tracking
    damage_severity VARCHAR(20) NULL CHECK (damage_severity IN ('Minor','Moderate','Severe')),
    damage_status VARCHAR(20) NOT NULL DEFAULT 'Unresolved' 
        CHECK (damage_status IN ('Unresolved','Under Repair','Resolved')),
    reported_date DATETIME NOT NULL DEFAULT GETDATE(),

    CONSTRAINT FK_Damage_Inspection 
        FOREIGN KEY (inspection_id) 
        REFERENCES Vehicle.Inspection(inspection_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);
GO

--------------------------------------------------------
-- Insert Sample Data into Vehicle.Damage
--------------------------------------------------------
INSERT INTO Vehicle.Damage
(inspection_id, damage_description, estimated_repair_cost, damage_severity, damage_status)
VALUES
(4, 'Rear bumper scratch and dent detected after rental.', 350.00, 'Minor', 'Under Repair'),
(5, 'Left side mirror broken, likely collision impact.', 220.00, 'Moderate', 'Unresolved'),
(7, 'Front windshield cracked at lower corner.', 600.00, 'Moderate', 'Unresolved'),
(10, 'Engine noise detected — possible belt issue.', 480.00, 'Moderate', 'Under Repair'),
(11, 'Front tire puncture reported during return.', 120.00, 'Minor', 'Resolved'),
(12, 'Right door panel scuffed — paint damage.', 200.00, 'Minor', 'Resolved'),
(13, 'Rear brake lights not working properly.', 180.00, 'Minor', 'Under Repair'),
(14, 'AC system malfunction reported during inspection.', 750.00, 'Moderate', 'Unresolved'),
(15, 'Minor dent on trunk door.', 150.00, 'Minor', 'Resolved'),
(6, 'Front bumper alignment slightly off.', 300.00, 'Minor', 'Under Repair'),
(8, 'Battery corrosion observed — cleaning required.', 80.00, 'Minor', 'Resolved'),
(9, 'Left headlight moisture inside cover.', 130.00, 'Minor', 'Unresolved');
GO

--------------------------------------------------------
-- Create Vehicle.Maintenance_Record Table 
--------------------------------------------------------
CREATE TABLE Vehicle.Maintenance_Record (
    maintenance_id INT IDENTITY(1,1) PRIMARY KEY,
    vehicle_vin VARCHAR(17) NOT NULL,
    service_provider VARCHAR(50) NOT NULL,
    maintenance_date DATE NOT NULL,
    maintenance_type VARCHAR(30) NOT NULL CHECK (maintenance_type IN 
        ('Oil Change','Tire Rotation','Brake Service','Battery Replacement','General Inspection','Transmission Service','Detailing','Other')),
    maintenance_cost DECIMAL(10,2) NOT NULL CHECK (maintenance_cost >= 0),
    mileage_at_maintenance DECIMAL(10,2) NULL CHECK (mileage_at_maintenance >= 0),
    next_due_date DATE NULL,
    maintenance_status VARCHAR(20) NOT NULL DEFAULT 'Completed' CHECK (maintenance_status IN ('Completed','Scheduled','Pending')),
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    updated_at DATETIME NULL,

    CONSTRAINT FK_Maintenance_Vehicle 
        FOREIGN KEY (vehicle_vin) 
        REFERENCES Vehicle.Vehicle(vehicle_vin)
        ON DELETE CASCADE ON UPDATE CASCADE,

    CONSTRAINT CK_Maintenance_DueDate CHECK (
        next_due_date IS NULL OR next_due_date > maintenance_date
    )
);
GO

--------------------------------------------------------
-- Insert Sample Data into Vehicle.Maintenance_Record
--------------------------------------------------------
INSERT INTO Vehicle.Maintenance_Record
(vehicle_vin, service_provider, maintenance_date, maintenance_type, maintenance_cost,
 mileage_at_maintenance, next_due_date, maintenance_status)
VALUES
('VIN0001A123456789', 'Goodyear Auto Service', '2025-02-15', 'Oil Change', 89.99, 15400, '2025-08-15', 'Completed'),
('VIN0002B123456781', 'Jiffy Lube', '2025-01-20', 'Brake Service', 240.00, 8100, '2026-01-20', 'Completed'),
('VIN0003C123456782', 'Midas Auto Repair', '2025-03-10', 'Tire Rotation', 75.00, 24800, '2025-09-10', 'Completed'),
('VIN0004D123456783', 'Valvoline Express', '2025-04-05', 'Oil Change', 95.50, 17300, '2025-10-05', 'Completed'),
('VIN0005E123456784', 'Firestone Complete Auto Care', '2025-02-02', 'Battery Replacement', 180.00, 26500, '2027-02-02', 'Completed'),
('VIN0006F123456785', 'Tesla Service Center', '2025-03-22', 'General Inspection', 120.00, 11000, '2026-03-22', 'Completed'),
('VIN0007G123456786', 'Nissan Certified Service', '2025-01-30', 'Brake Service', 310.00, 28000, '2026-01-30', 'Completed'),
('VIN0008H123456787', 'Toyota Care Center', '2025-04-01', 'Oil Change', 89.00, 39120, '2025-10-01', 'Completed'),
('VIN0009I123456788', 'Kia Dealership', '2025-03-28', 'Transmission Service', 450.00, 8900, '2026-03-28', 'Completed'),
('VIN0010J123456789', 'Ford Auto Center', '2025-03-07', 'Brake Service', 295.00, 14400, '2026-03-07', 'Completed'),
('VIN0011K123456780', 'Hyundai AutoCare', '2025-02-15', 'Tire Rotation', 85.00, 9600, '2025-08-15', 'Scheduled'),
('VIN0012L123456781', 'Honda Auto Service', '2025-04-12', 'General Inspection', 99.00, 15300, '2026-04-12', 'Completed'),
('VIN0013M123456782', 'Chevrolet Maintenance', '2025-03-02', 'Brake Service', 310.00, 27800, '2026-03-02', 'Completed'),
('VIN0014N123456783', 'Tesla Service Center', '2025-04-10', 'Battery Replacement', 500.00, 6500, '2028-04-10', 'Completed'),
('VIN0015O123456784', 'Mazda Auto Center', '2025-03-18', 'Oil Change', 95.00, 9900, '2025-09-18', 'Completed');
GO

--------------------------------------------------------
-- Create Vehicle.Maintenance_Inspection Table
--------------------------------------------------------
CREATE TABLE Vehicle.Maintenance_Inspection (
    maintenance_id INT NOT NULL,
    inspection_id INT NOT NULL,
    request_date DATE NOT NULL DEFAULT GETDATE(),
    request_type VARCHAR(30) NOT NULL CHECK (request_type IN 
        ('Repair Request','Preventive Check','Damage Follow-up','Routine Service')),
    description VARCHAR(200) NULL,
    priority_level VARCHAR(20) NULL CHECK (priority_level IN ('Low','Medium','High','Critical')),
    status VARCHAR(20) NOT NULL DEFAULT 'Pending' 
        CHECK (status IN ('Pending','In Progress','Completed','Cancelled')),
    PRIMARY KEY (maintenance_id, inspection_id),

    CONSTRAINT FK_MI_Maintenance 
        FOREIGN KEY (maintenance_id) 
        REFERENCES Vehicle.Maintenance_Record(maintenance_id)
        ON DELETE CASCADE ON UPDATE CASCADE,

    CONSTRAINT FK_MI_Inspection 
        FOREIGN KEY (inspection_id) 
        REFERENCES Vehicle.Inspection(inspection_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);
GO

--------------------------------------------------------
-- Insert Sample Data into Vehicle.Maintenance_Inspection
--------------------------------------------------------
INSERT INTO Vehicle.Maintenance_Inspection
(maintenance_id, inspection_id, request_date, request_type, description, priority_level, status)
VALUES
(1, 4,  '2025-03-12', 'Damage Follow-up', 'Follow-up on bumper dent noted during post-rental inspection.', 'Medium', 'In Progress'),
(2, 5,  '2025-03-18', 'Repair Request', 'Replace broken side mirror and recalibrate sensors.', 'High', 'Pending'),
(3, 7,  '2025-03-25', 'Preventive Check', 'Inspect brakes before customer rental.', 'Low', 'Completed'),
(4, 10, '2025-04-01', 'Repair Request', 'Investigate engine noise reported in inspection.', 'High', 'In Progress'),
(5, 11, '2025-04-02', 'Routine Service', 'Scheduled maintenance per 25,000 mile interval.', 'Medium', 'Completed'),
(6, 12, '2025-04-05', 'Damage Follow-up', 'Repaint right door panel scratches.', 'Low', 'Pending'),
(7, 13, '2025-04-06', 'Preventive Check', 'General systems check post-maintenance.', 'Low', 'Completed'),
(8, 14, '2025-04-07', 'Repair Request', 'AC system not cooling effectively.', 'High', 'In Progress'),
(9, 15, '2025-04-08', 'Preventive Check', 'Inspect tire tread and pressure before next booking.', 'Medium', 'Completed'),
(10, 6, '2025-04-09', 'Routine Service', 'Periodic maintenance scheduling for hybrid battery.', 'Medium', 'Pending');
GO

--------------------------------------------------------
-- Create Vehicle.Vehicle_Insurance Table
--------------------------------------------------------
CREATE TABLE Vehicle.Vehicle_Insurance (
    insurance_id INT IDENTITY(1,1) PRIMARY KEY,
    vehicle_vin VARCHAR(17) NOT NULL,
    policy_number VARCHAR(20) NOT NULL UNIQUE,
    provider_name VARCHAR(50) NOT NULL,
    coverage_type VARCHAR(30) NOT NULL CHECK (coverage_type IN 
        ('Comprehensive','Collision','Liability','Personal Injury','Full Coverage')),
    policy_start_date DATE NOT NULL,
    policy_expiry_date DATE NOT NULL,
    policy_status VARCHAR(20) NOT NULL DEFAULT 'Active' 
        CHECK (policy_status IN ('Active','Expired','Pending Renewal','Cancelled')),
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    updated_at DATETIME NULL,

    CONSTRAINT FK_VehicleInsurance_Vehicle 
        FOREIGN KEY (vehicle_vin) REFERENCES Vehicle.Vehicle(vehicle_vin)
        ON DELETE CASCADE ON UPDATE CASCADE,

    CONSTRAINT CK_Policy_Expiry 
        CHECK (policy_expiry_date > policy_start_date)
);
GO

--------------------------------------------------------
-- Insert Sample Data into Vehicle.Vehicle_Insurance
--------------------------------------------------------
INSERT INTO Vehicle.Vehicle_Insurance
(vehicle_vin, policy_number, provider_name, coverage_type, 
 policy_start_date, policy_expiry_date, policy_status)
VALUES
('VIN0001A123456789', 'POL2022MN001', 'State Farm Insurance', 'Full Coverage', '2024-01-10', '2025-01-10', 'Active'),
('VIN0002B123456781', 'POL2023CA002', 'GEICO', 'Comprehensive', '2024-03-15', '2025-03-15', 'Active'),
('VIN0003C123456782', 'POL2021TX003', 'Allstate', 'Collision', '2023-06-01', '2024-06-01', 'Expired'),
('VIN0004D123456783', 'POL2022NY004', 'Progressive', 'Full Coverage', '2024-08-20', '2025-08-20', 'Active'),
('VIN0005E123456784', 'POL2021FL005', 'Liberty Mutual', 'Liability', '2023-12-05', '2024-12-05', 'Pending Renewal'),
('VIN0006F123456785', 'POL2020NV006', 'Nationwide', 'Comprehensive', '2023-02-10', '2024-02-10', 'Expired'),
('VIN0007G123456786', 'POL2021WA007', 'Travelers Insurance', 'Full Coverage', '2024-09-12', '2025-09-12', 'Active'),
('VIN0008H123456787', 'POL2020IL008', 'USAA', 'Collision', '2023-05-01', '2024-05-01', 'Expired'),
('VIN0009I123456788', 'POL2023AZ009', 'Farmers Insurance', 'Comprehensive', '2024-04-01', '2025-04-01', 'Active'),
('VIN0010J123456789', 'POL2022OH010', 'Erie Insurance', 'Full Coverage', '2024-07-07', '2025-07-07', 'Active'),
('VIN0011K123456780', 'POL2021CO011', 'Nationwide', 'Liability', '2023-03-22', '2024-03-22', 'Expired'),
('VIN0012L123456781', 'POL2022GA012', 'State Farm Insurance', 'Personal Injury', '2024-10-10', '2025-10-10', 'Active'),
('VIN0013M123456782', 'POL2020MI013', 'Progressive', 'Collision', '2023-12-12', '2024-12-12', 'Active'),
('VIN0014N123456783', 'POL2021UT014', 'Allstate', 'Comprehensive', '2024-02-18', '2025-02-18', 'Active'),
('VIN0015O123456784', 'POL2023WI015', 'GEICO', 'Full Coverage', '2024-05-10', '2025-05-10', 'Active');
GO

--------------------------------------------------------
-- Create Operation.Expense_Category Table 
--------------------------------------------------------
CREATE TABLE Operation.Expense_Category (
    expense_category_id INT IDENTITY(1,1) PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL UNIQUE,
    category_description VARCHAR(150) NULL,
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    updated_at DATETIME NULL
);
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

--------------------------------------------------------
-- Create Operation.Branch_Expenses Table 
--------------------------------------------------------
CREATE TABLE Operation.Branch_Expenses (
    expense_id INT IDENTITY(1,1) PRIMARY KEY,
    branch_id INT NOT NULL,
    expense_category_id INT NOT NULL,
    vendor_name VARCHAR(50) NOT NULL,
    expense_description VARCHAR(150) NULL,
    amount DECIMAL(10,2) NOT NULL CHECK (amount >= 0),
    expense_date DATETIME NOT NULL DEFAULT GETDATE(),
    payment_status VARCHAR(20) NOT NULL DEFAULT 'Paid' CHECK (payment_status IN ('Paid','Pending','Overdue')),

    --------------------------------------------------------
    -- Foreign Keys
    --------------------------------------------------------
    CONSTRAINT FK_Branch_Expenses_Branch 
        FOREIGN KEY (branch_id) 
        REFERENCES Operation.Branch(branch_id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE,

    CONSTRAINT FK_Branch_Expenses_Expense_Category 
        FOREIGN KEY (expense_category_id) 
        REFERENCES Operation.Expense_Category(expense_category_id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);
GO

--------------------------------------------------------
-- Insert Sample Data into Operation.Branch_Expenses
--------------------------------------------------------
INSERT INTO Operation.Branch_Expenses
(branch_id, expense_category_id, vendor_name, expense_description, amount, expense_date, payment_status)
VALUES
(1, 1, 'Firestone Auto Care', 'Oil change and tire rotation for 3 fleet vehicles.', 450.00, '2025-03-15', 'Paid'),
(2, 3, 'AT&T', 'Monthly branch internet and phone service.', 180.00, '2025-03-01', 'Paid'),
(3, 2, 'Shell Gas Station', 'Fuel refill for shuttle vehicles.', 320.50, '2025-03-14', 'Paid'),
(4, 4, 'Payroll Department', 'Monthly salary payouts for branch employees.', 8500.00, '2025-03-31', 'Paid'),
(5, 5, 'CleanPro Services', 'Interior detailing and cleaning supplies.', 210.75, '2025-03-12', 'Paid'),
(6, 6, 'Office Depot', 'Printer ink and office stationery restock.', 95.60, '2025-03-20', 'Paid'),
(7, 7, 'State Farm Insurance', 'Quarterly vehicle insurance premium payment.', 1200.00, '2025-03-25', 'Paid'),
(8, 8, 'Billboard Media', 'Promotional banner for airport branch.', 600.00, '2025-03-05', 'Pending'),
(1, 9, 'Toyota Motors', 'Down payment for 2 new Camry fleet cars.', 52000.00, '2025-02-18', 'Paid'),
(2, 10, 'Microsoft', 'Annual Microsoft 365 license renewal.', 999.99, '2025-03-10', 'Paid'),
(3, 11, 'AutoZone', 'Purchase of brake pads and filters.', 425.00, '2025-03-16', 'Paid'),
(4, 12, 'Miscellaneous Vendor', 'Minor branch maintenance and repairs.', 75.00, '2025-03-22', 'Paid'),
(5, 3, 'ExxonMobil', 'Fuel expense for branch delivery truck.', 285.40, '2025-03-08', 'Paid'),
(6, 8, 'Google Ads', 'Local branch promotion campaign.', 480.00, '2025-03-02', 'Pending'),
(7, 5, 'CleanFleet Services', 'Weekly fleet cleaning and sanitation.', 350.00, '2025-03-28', 'Paid');
GO

--------------------------------------------------------
-- Create Employee_Address Table under Operation Schema
--------------------------------------------------------
CREATE TABLE Operation.Employee_Address (
    employee_address_id INT IDENTITY(1,1) PRIMARY KEY,
    employee_id INT NOT NULL,
    street_address VARCHAR(100) NOT NULL,
    address_line2 VARCHAR(100) NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(30) NOT NULL,
    zip_code VARCHAR(10) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    updated_at DATETIME NULL,

    CONSTRAINT FK_EmployeeAddress_Employee 
        FOREIGN KEY (employee_id) 
        REFERENCES Operation.Employee(employee_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);
GO
--------------------------------------------------------
-- InsertEmployee Addresses into Operations.Employee_Address
--------------------------------------------------------
INSERT INTO Operation.Employee_Address
(employee_id, street_address, address_line2, city, state, zip_code)
VALUES
(1,  '120 Main St',     NULL,             'Minneapolis', 'MN', 55401),
(2,  '98 River Ave',    'Apt 2B',         'Mankato',     'MN', 56001),
(3,  '457 Elm Drive',   NULL,             'Bloomington', 'MN', 55420),
(4,  '22 Oak Ln',       NULL,             'Rochester',   'MN', 55901),
(5,  '760 Birch Rd',    'Unit 3',         'Duluth',      'MN', 55802),
(6,  '550 Cedar St',    NULL,             'St Paul',     'MN', 55102),
(7,  '411 Pine Ave',    NULL,             'St Cloud',    'MN', 56301),
(8,  '92 Maple Ct',     NULL,             'Eagan',       'MN', 55122),
(9,  '14 Willow Way',   NULL,             'Woodbury',    'MN', 55125),
(10, '633 Oak Blvd',    NULL,             'Edina',       'MN', 55424),
(11, '509 Lake St',     NULL,             'Minneapolis', 'MN', 55408),
(12, '208 College Ave', NULL,             'Mankato',     'MN', 56001),
(13, '700 East 5th St', 'Suite 5',        'Rochester',   'MN', 55904),
(14, '330 Park Rd',     NULL,             'Duluth',      'MN', 55811),
(15, '71 Northview Dr', NULL,             'Bloomington', 'MN', 55425),
(16, '860 Riverfront Rd', NULL,           'St Cloud',    'MN', 56302),
(17, '52 Cedar Point',  'Apt 7',          'Eagan',       'MN', 55123),
(18, '913 Broadway Ave', NULL,            'Minneapolis', 'MN', 55403),
(19, '144 Hilltop Blvd', NULL,            'Mankato',     'MN', 56002),
(20, '27 Maple View Dr', NULL,            'Woodbury',    'MN', 55126),
(21, '38 East Lake Dr',  NULL,            'Rochester',   'MN', 55902),
(22, '920 Spruce Rd',    'Apt 11',        'St Paul',     'MN', 55103),
(23, '18 Mill Creek Ln', NULL,            'Duluth',      'MN', 55804),
(24, '700 Willow Ct',    NULL,            'Bloomington', 'MN', 55421),
(25, '290 E Main St',    NULL,            'Eagan',       'MN', 55120),
(26, '33 Red Pine Blvd', NULL,            'Mankato',     'MN', 56003),
(27, '102 Summit Ave',   'Unit 4',        'St Paul',     'MN', 55101),
(28, '611 Prairie Rd',   NULL,            'Rochester',   'MN', 55906),
(29, '770 Greenway Dr',  NULL,            'Duluth',      'MN', 55805),
(30, '25 Highland Ave',  NULL,            'Minneapolis', 'MN', 55411);
GO


--------------------------------------------------------
-- Create Operation.Operating_Hours Table 
--------------------------------------------------------
CREATE TABLE Operation.Operating_Hours (
    operating_hours_id INT IDENTITY(1,1) PRIMARY KEY,
    branch_id INT NOT NULL,
    day_of_week VARCHAR(10) NOT NULL CHECK (day_of_week IN 
        ('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday')),
    open_time TIME NOT NULL,
    close_time TIME NOT NULL,
    after_hours_dropoff BIT NOT NULL DEFAULT 0,
    created_at DATETIME NOT NULL DEFAULT GETDATE(),

    CONSTRAINT FK_OperatingHours_Branch 
        FOREIGN KEY (branch_id) 
        REFERENCES Operation.Branch(branch_id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE,

    CONSTRAINT CK_OperatingHours_ValidTime 
        CHECK (close_time > open_time)
);
GO

--------------------------------------------------------
-- Insert Sample Data into Operation.Operating_Hours
--------------------------------------------------------
INSERT INTO Operation.Operating_Hours
(branch_id, day_of_week, open_time, close_time, after_hours_dropoff)
VALUES
(1, 'Monday', '07:30', '20:00', 1),
(1, 'Tuesday', '07:30', '20:00', 1),
(1, 'Wednesday', '07:30', '20:00', 1),
(1, 'Thursday', '07:30', '20:00', 1),
(1, 'Friday', '07:30', '21:00', 1),
(1, 'Saturday', '08:00', '18:00', 1),
(1, 'Sunday', '09:00', '16:00', 0),

(2, 'Monday', '08:00', '19:00', 0),
(2, 'Tuesday', '08:00', '19:00', 0),
(2, 'Wednesday', '08:00', '19:00', 0),
(2, 'Thursday', '08:00', '19:00', 0),
(2, 'Friday', '08:00', '20:00', 1),
(2, 'Saturday', '09:00', '17:00', 1),
(2, 'Sunday', '09:00', '15:00', 0),

(3, 'Monday', '07:00', '22:00', 1),
(3, 'Tuesday', '07:00', '22:00', 1),
(3, 'Wednesday', '07:00', '22:00', 1),
(3, 'Thursday', '07:00', '22:00', 1),
(3, 'Friday', '07:00', '23:00', 1),
(3, 'Saturday', '08:00', '21:00', 1);
GO

--------------------------------------------------------
-- Create Operation.Branch_Address Table 
--------------------------------------------------------
CREATE TABLE Operation.Branch_Address (
    branch_address_id INT IDENTITY(1,1) PRIMARY KEY,
    branch_id INT NOT NULL,
    street_address VARCHAR(100) NOT NULL,
    address_line2 VARCHAR(100) NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(30) NOT NULL,
    zip_code VARCHAR(10) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    updated_at DATETIME NULL,

    CONSTRAINT FK_BranchAddress_Branch 
        FOREIGN KEY (branch_id) 
        REFERENCES Operation.Branch(branch_id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);
GO

--------------------------------------------------------
-- Insert Sample Data into Operation.Branch_Address
--------------------------------------------------------
INSERT INTO Operation.Branch_Address
(branch_id, street_address, address_line2, city, state, zip_code)
VALUES
(1, '123 Airport Blvd', 'Suite 200', 'Minneapolis', 'MN', '55450'),
(2, '455 Market St', NULL, 'Los Angeles', 'CA', '90013'),
(3, '782 Main Ave', 'Building B', 'New York', 'NY', '10018'),
(4, '99 Bay St', NULL, 'Miami', 'FL', '33101'),
(5, '640 Central Pkwy', NULL, 'Chicago', 'IL', '60606'),
(6, '415 1st Ave N', NULL, 'Seattle', 'WA', '98109'),
(7, '210 Queen St', '2nd Floor', 'London', 'ENG', 'SW1A2AA'),
(8, '102 Harbor Rd', NULL, 'George Town', 'CAY', 'KY11100');
GO

--------------------------------------------------------
-- Create Customer.License Table
--------------------------------------------------------
CREATE TABLE Customer.License (
    license_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT NOT NULL,
    license_number VARCHAR(20) NOT NULL UNIQUE,
    license_state VARCHAR(30) NOT NULL,
    license_type VARCHAR(20) NOT NULL CHECK (license_type IN ('Class D','Commercial','Motorcycle','International')),
    issue_date DATE NOT NULL,
    expiry_date DATE NOT NULL,
    license_status VARCHAR(20) NOT NULL DEFAULT 'Active'
        CHECK (license_status IN ('Active','Suspended','Expired','Revoked')),
    is_verified BIT NOT NULL DEFAULT 0,
    age_verified BIT NOT NULL DEFAULT 0,
    verified_date DATE NOT NULL DEFAULT '1900-01-01',
    created_at DATETIME NOT NULL DEFAULT GETDATE(),

    CONSTRAINT FK_license_customer
        FOREIGN KEY (customer_id)
        REFERENCES Customer.Customer(customer_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT CK_License_Expiry CHECK (expiry_date > issue_date)
);
GO

--------------------------------------------------------
-- Insert Sample Data into Customer.License
--------------------------------------------------------
INSERT INTO Customer.License
(customer_id, license_number, license_state, license_type, issue_date, expiry_date,
 license_status, is_verified, age_verified, verified_date)
VALUES
(1, 'MN1234567', 'Minnesota', 'Class D', '2021-06-10', '2026-06-10', 'Active', 1, 1, '2021-06-11'),
(2, 'CA9876543', 'California', 'Class D', '2020-05-14', '2025-05-14', 'Active', 1, 1, '2020-05-15'),
(3, 'TX2345678', 'Texas', 'Commercial', '2019-08-20', '2024-08-20', 'Expired', 1, 1, '2019-08-22'),
(4, 'FL8765432', 'Florida', 'Class D', '2022-01-12', '2027-01-12', 'Active', 1, 1, '2022-01-13'),
(5, 'NY3456789', 'New York', 'Class D', '2021-09-01', '2026-09-01', 'Active', 1, 1, '2021-09-03'),
(6, 'WA6543210', 'Washington', 'Motorcycle', '2020-11-25', '2025-11-25', 'Active', 0, 0, '1900-01-01'),
(7, 'IL1928374', 'Illinois', 'Class D', '2019-02-17', '2024-02-17', 'Expired', 1, 1, '2019-02-18'),
(8, 'CO9182736', 'Colorado', 'Class D', '2023-03-08', '2028-03-08', 'Active', 1, 1, '2023-03-09'),
(9, 'GA1112223', 'Georgia', 'Commercial', '2021-05-19', '2026-05-19', 'Active', 1, 1, '2021-05-20'),
(10, 'OH5678901', 'Ohio', 'Class D', '2020-12-01', '2025-12-01', 'Suspended', 1, 1, '2020-12-02'),
(11, 'NV1122334', 'Nevada', 'International', '2022-04-10', '2027-04-10', 'Active', 1, 1, '2022-04-11'),
(12, 'MI6677889', 'Michigan', 'Class D', '2019-09-09', '2024-09-09', 'Expired', 1, 1, '2019-09-10'),
(13, 'AZ5566778', 'Arizona', 'Commercial', '2023-01-14', '2028-01-14', 'Active', 1, 1, '2023-01-15'),
(14, 'WI3344556', 'Wisconsin', 'Class D', '2022-02-18', '2027-02-18', 'Active', 1, 1, '2022-02-19'),
(15, 'MN0099887', 'Minnesota', 'Motorcycle', '2021-07-07', '2026-07-07', 'Active', 0, 1, '1900-01-01');
GO

--------------------------------------------------------
-- Create Customer.Customer_Address Table
--------------------------------------------------------
CREATE TABLE Customer.Customer_Address (
    customer_address_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT NOT NULL,
    street_address VARCHAR(100) NOT NULL,
    address_line2 VARCHAR(100) NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(30) NOT NULL,
    zip_code VARCHAR(10) NOT NULL,
    country VARCHAR(50) NOT NULL DEFAULT 'USA',
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    updated_at DATETIME NULL,

    CONSTRAINT FK_customer_address_customer
        FOREIGN KEY (customer_id)
        REFERENCES Customer.Customer(customer_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
GO

--------------------------------------------------------
-- Insert Sample Data into Customer.Customer_Address
--------------------------------------------------------
INSERT INTO Customer.Customer_Address
(customer_id, street_address, address_line2, city, state, zip_code, country)
VALUES
(1, '120 Elm Street', 'Apt 3A', 'Mankato', 'MN', '56001', 'USA'),
(2, '415 Pine Avenue', NULL, 'Los Angeles', 'CA', '90013', 'USA'),
(3, '87 Maple Blvd', 'Suite 204', 'Dallas', 'TX', '75201', 'USA'),
(4, '200 Lakeview Dr', NULL, 'Miami', 'FL', '33101', 'USA'),
(5, '512 Broadway', 'Unit 5B', 'New York', 'NY', '10012', 'USA'),
(6, '99 Oak Street', NULL, 'Seattle', 'WA', '98109', 'USA'),
(7, '220 Birch Rd', NULL, 'Chicago', 'IL', '60605', 'USA'),
(8, '44 Park Hill', 'Floor 2', 'Denver', 'CO', '80203', 'USA'),
(9, '910 Cedar Ave', NULL, 'Atlanta', 'GA', '30303', 'USA'),
(10, '15 River Ln', 'Apt 1', 'Columbus', 'OH', '43215', 'USA'),
(11, '780 Valley View', NULL, 'Las Vegas', 'NV', '89109', 'USA'),
(12, '310 Highland Dr', NULL, 'Detroit', 'MI', '48226', 'USA'),
(13, '900 Desert Rd', NULL, 'Phoenix', 'AZ', '85004', 'USA'),
(14, '330 Forest St', 'Unit 4C', 'Madison', 'WI', '53703', 'USA'),
(15, '650 North St', NULL, 'Rochester', 'MN', '55901', 'USA');
GO

