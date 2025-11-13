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
    vehicle_id INT IDENTITY(1,1) PRIMARY KEY,
    vehicle_vin VARCHAR(17) NOT NULL,
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


------------------------------------------------------------
-- Insert Data to the Vehicle.Vehicle_Rate Table
---------------------------------------------------------
-- Inserting data into Finance.Vehicle_Rate tables. All the prices for each branches and each vehicle class will
-- be calculated automatically. Currently, each branch has 7 different vehicle class. The base rate of  vehicle
-- is used to modify the rates for hourly, daily, weekly, and monthly. The rules for dynamic pricing has been        
-- included below in the comments.
---------------------------------------------------------------------------------


-------------------------------------------------------------
-- Creating usp_Generate_Vehicle_Rates, to automatically generate vehicle rental rates for ever (Branch * Vehicle)
-------------------------------------------------------------
CREATE PROCEDURE Finance.usp_Generate_Vehicle_Rates
AS
BEGIN
   
    SET NOCOUNT ON;


    ---------------------------------------------------------
    -- 3. Insert vehicle rate records for each
    --    (Vehicle Class × Branch) combination
    --    using CROSS JOIN to generate all pairs.
   
    --    CROSS APPLY
    --      - Vehicle class base price
    --      - Branch type multiplier (Airport/City/Suburban)
    ---------------------------------------------------------
    INSERT INTO Finance.Vehicle_Rate
    (
        vehicle_class_id,
        branch_id,
        vehicle_hourly_rate,
        vehicle_daily_rate,
        vehicle_weekly_rate,
        vehicle_monthly_rate
    )
    SELECT
        vc.vehicle_class_id,
        b.branch_id,


        -- Derived rates calculated dynamically
        ROUND(base_rate * multiplier / 5.0, 2)  AS vehicle_hourly_rate,
        ROUND(base_rate * multiplier, 2)        AS vehicle_daily_rate,
        ROUND(base_rate * multiplier * 5.5, 2)  AS vehicle_weekly_rate,
        ROUND(base_rate * multiplier * 22, 2)   AS vehicle_monthly_rate


    FROM Vehicle.Vehicle_Class vc
    CROSS JOIN Operation.Branch b  -- Generate all class × branch combinations


    ---------------------------------------------------------
    -- 4. Defines base rate and multiplier logic per to apply the rates differenty based on the location.
    -- In our case, Airports cost 1.2 times of the base rate, and suburban are 0.90 times of the base rate,
    -- while the cities are flat base rate.
    ---------------------------------------------------------
    CROSS APPLY (
        SELECT
            -- Base rate determined by vehicle class
            CASE vc.vehicle_class_id
                WHEN 1 THEN 60.00   -- Economy
                WHEN 2 THEN 70.00   -- Compact
                WHEN 3 THEN 80.00   -- Standard
                WHEN 4 THEN 90.00   -- Full-size
                WHEN 5 THEN 100.00  -- SUV
                WHEN 6 THEN 140.00  -- Luxury
                WHEN 7 THEN 120.00  -- Truck / Van
                ELSE 70.00
            END AS base_rate,


            -- Branch type multiplier (Airport costs more, Suburban less)
            CASE b.branch_type
                WHEN 'Airport'  THEN 1.20
                WHEN 'Suburban' THEN 0.90
                ELSE 1.00       -- Default for City branches
            END AS multiplier
    ) rate_logic;
END;
GO


------------------------------------------------------------------------------------------
-- Executing this stored procedure will enter the 609 vehicle rates.
-- 7 vehicle class * 30 branches = 210 different vehcile rates, which is based on branch and
-- vehicle class.
--------------------------------------------------------------------------------------------
EXEC Finance.usp_Generate_Vehicle_Rates;


--------------------------------------------------------
-- Create Reservation Table under Rental Schema
--------------------------------------------------------
CREATE TABLE Rental.Reservation (
    reservation_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT NOT NULL,
    vehicle_id INT NOT NULL,
    pickup_branch_id INT NOT NULL,
    dropoff_branch_id INT NULL,
    reservation_date DATETIME NOT NULL DEFAULT GETDATE(),
    pickup_datetime DATETIME NOT NULL,
    return_datetime DATETIME NOT NULL,
    rental_duration_type VARCHAR(10) NOT NULL
        CHECK (rental_duration_type IN ('Hourly', 'Daily', 'Weekly', 'Monthly')),
    reservation_status VARCHAR(20) NOT NULL
        CHECK (reservation_status IN ('Pending','Confirmed','Cancelled','Completed')),
    confirmation_number VARCHAR(20) NOT NULL UNIQUE,
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    updated_at DATETIME NULL,
    CONSTRAINT FK_reservation_customer
        FOREIGN KEY (customer_id) REFERENCES Customer.Customer(customer_id),
    CONSTRAINT FK_reservation_vehicle
        FOREIGN KEY (vehicle_id) REFERENCES Vehicle.Vehicle(vehicle_id),
    CONSTRAINT FK_reservation_pickup_branch
        FOREIGN KEY (pickup_branch_id) REFERENCES Operation.Branch(branch_id),
    CONSTRAINT FK_reservation_dropoff_branch
        FOREIGN KEY (dropoff_branch_id) REFERENCES Operation.Branch(branch_id),
    CONSTRAINT CK_reservation_return_after_pickup
        CHECK (return_datetime > pickup_datetime)
);
GO

--------------------------------------------------------
-- Create Finance.Rental_Estimate Table (Updated)
--------------------------------------------------------
CREATE TABLE Finance.Rental_Estimate (
    estimate_id INT IDENTITY(1,1) PRIMARY KEY,

    -- Foreign Keys
    reservation_id INT NOT NULL,       -- Added FK to Rental.Reservation
    vehicle_rate_id INT NOT NULL,      -- FK to Finance.Vehicle_Rate

    -- Financial Fields
    base_rate DECIMAL(10,2) NOT NULL,
    surcharge_total DECIMAL(10,2) NULL DEFAULT 0.00,
    discount_total DECIMAL(10,2) NULL DEFAULT 0.00,
    tax_total DECIMAL(10,2) NULL DEFAULT 0.00,
    total_estimate AS 
        (base_rate + ISNULL(surcharge_total,0) - ISNULL(discount_total,0) + ISNULL(tax_total,0)) PERSISTED,

    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    updated_at DATETIME NULL,
    --------------------------------------------------------
    -- Foreign Key Constraints
    --------------------------------------------------------
    CONSTRAINT FK_rental_estimate_reservation
        FOREIGN KEY (reservation_id)
        REFERENCES Rental.Reservation(reservation_id)
        ON DELETE CASCADE ON UPDATE CASCADE,

    CONSTRAINT FK_rental_estimate_vehicle_rate
        FOREIGN KEY (vehicle_rate_id)
        REFERENCES Finance.Vehicle_Rate(vehicle_rate_id)
        ON DELETE NO ACTION ON UPDATE CASCADE
);
GO

--------------------------------------------------------
-- Create Charge_Type Table under Finance Schema
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
('DELAY', 'Late Return Penalty', 'Fee', 'Per Hour'),
('ELEC', 'Electric Vehicle Charging', 'Usage', 'Per Hour'),
('ENV', 'Environmental Fee', 'Fee', 'Flat Rate'),
('ONEWAY', 'One Way Rental Fee', 'Fee', 'Flat Rate');
GO

--------------------------------------------------------
-- Create Charge_Rate Table under Finance Schema
--------------------------------------------------------
CREATE TABLE Finance.Charge_Rate (
    charge_rate_id INT IDENTITY(1,1) PRIMARY KEY,
    charge_type_id INT NOT NULL,
    charge_unit_rate DECIMAL(10,2) NOT NULL CHECK (charge_unit_rate >=0),
    effective_start_date DATE NOT NULL DEFAULT GETDATE(),
    effective_end_date DATE NULL,
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    updated_at DATETIME NULL,


CONSTRAINT FK_ChargeRate_ChargeType
        FOREIGN KEY (charge_type_id)
        REFERENCES Finance.Charge_Type(charge_type_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
GO

--------------------------------------------------------
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
(9, 25.00,'2025-01-01', NULL),   -- Late Return Penalty
(10, 10.00,'2025-01-01', NULL),   -- Electric Vehicle Charging (per hour)
(11, 7.50, '2025-01-01', NULL),   -- Environmental Fee
(12, 100.00, '2025-01-01', NULL); -- One Way Rental Fee
GO

---------------------
-- Create a Reservation_Charge table (Bridge table between Reservation and Charge_Rate)
----------------

CREATE TABLE Rental.Reservation_Charge (
    reservation_charge_id INT IDENTITY(1,1) PRIMARY KEY, 
    reservation_id INT NOT NULL,                         -- FK to Rental.Reservation
    charge_rate_id INT NOT NULL,                        -- FK to Finance.Charge_Rate (each possible add-on)
    quantity INT NOT NULL DEFAULT 0,                     -- How many of this add-on? (default: 0)
    -- Foreign keys for referential integrity:
    CONSTRAINT FK_ResCharge_Reservation FOREIGN KEY (reservation_id) REFERENCES Rental.Reservation(reservation_id),
    CONSTRAINT FK_ResCharge_ChargeRate FOREIGN KEY (charge_rate_id) REFERENCES Finance.Charge_Rate(charge_rate_id)
);
GO


----------------------------------
-- Create Finance.Tax_Type table to store different tax types
------------------------------------------------


CREATE TABLE Finance.Tax_Type (
    tax_type_id INT IDENTITY(1,1) PRIMARY KEY,
    tax_code VARCHAR(10) NOT NULL UNIQUE,      -- e.g., STATE, CITY, ENV, TOUR
    tax_name VARCHAR(50) NOT NULL,             -- e.g., 'State Tax', 'City Tax'
    tax_description VARCHAR(150) NULL
);
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

----------------------------------
-- CREATE Finance.Tax_Rate Table to store tax rate for different tax types.
------------------------------------------------


CREATE TABLE Finance.Tax_Rate (
    tax_rate_id INT IDENTITY(1,1) PRIMARY KEY,
    tax_type_id INT NOT NULL,                   -- FK → Finance.Tax_Type
    branch_id INT NOT NULL,                     -- FK → Operation.Branch
    tax_rate DECIMAL(5,2) NULL CHECK (tax_rate >= 0),
    effective_start_date DATE NOT NULL,
    effective_end_date DATE NULL,


    CONSTRAINT FK_TaxRate_TaxType FOREIGN KEY (tax_type_id)
        REFERENCES Finance.Tax_Type(tax_type_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,


    CONSTRAINT FK_TaxRate_Branch FOREIGN KEY (branch_id)
        REFERENCES Operation.Branch(branch_id)
        ON DELETE NO ACTION
        ON UPDATE CASCADE,
);
GO


--------------------------------------------------------
-- Stored Procedure: Assign Tax Rates to All Branches
--------------------------------------------------------
CREATE OR ALTER PROCEDURE Finance.usp_Assign_Taxes_To_Branches
AS
BEGIN
    SET NOCOUNT ON;


    INSERT INTO Finance.Tax_Rate (tax_type_id, branch_id, tax_rate, effective_start_date)
    SELECT
        tt.tax_type_id,
        b.branch_id,
        CASE
            WHEN tt.tax_code = 'STATE' THEN 7.25
            WHEN tt.tax_code = 'CITY' THEN 1.25
            WHEN tt.tax_code = 'ROAD' THEN 0.75
            WHEN tt.tax_code = 'ENV' THEN 0.50
            WHEN tt.tax_code = 'AIR' AND b.branch_name LIKE '%Airport%' THEN 5.00
            ELSE 0.00
        END AS tax_rate,
        GETDATE() AS effective_start_date
    FROM Operation.Branch b
    CROSS JOIN Finance.Tax_Type tt
    WHERE NOT EXISTS (
        SELECT 1
        FROM Finance.Tax_Rate t
        WHERE t.branch_id = b.branch_id
          AND t.tax_type_id = tt.tax_type_id
    );
END;
GO
EXEC Finance.usp_Assign_Taxes_To_Branches;


-------------------------------------------------
-- Create Finance.Promotion Table
--------------------------------------------------------

CREATE TABLE Finance.Promotion (
    promotion_id INT IDENTITY(1,1) PRIMARY KEY,
    promotion_code VARCHAR(20) NOT NULL UNIQUE,
    promotion_name VARCHAR(50) NOT NULL,
    promotion_description VARCHAR(150) NULL,
    promotion_value DECIMAL(10,2) NOT NULL CHECK (promotion_value >= 0),
    promotion_type VARCHAR(30) NOT NULL 
        CHECK (promotion_type IN ('Public','Seasonal','Referral','Corporate','Loyalty')),
    promotion_start_date DATETIME NOT NULL,
    promotion_end_date DATETIME NOT NULL,
    is_active BIT NOT NULL DEFAULT 1,
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    CONSTRAINT CK_Promotion_DateRange CHECK (promotion_end_date > promotion_start_date)
);
GO

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


 
--------------------------------------------------------
-- Create Finance.Estimate_Charge (Bridge Table)
--------------------------------------------------------
CREATE TABLE Finance.Estimate_Charge (
    charge_rate_id INT NOT NULL,
    estimate_id INT NOT NULL,
    charge_quantity DECIMAL(10,2) NOT NULL CHECK (charge_quantity >= 0),


    ----------------------------------------------------
    -- Composite Primary Key (prevents duplicates)
    ----------------------------------------------------
    CONSTRAINT PK_Estimate_Charge PRIMARY KEY (charge_rate_id, estimate_id),


    ----------------------------------------------------
    -- Foreign Key to Rental_Charge
    ----------------------------------------------------
    CONSTRAINT FK_EstimateCharge_ChargeRate
        FOREIGN KEY (charge_rate_id)
        REFERENCES Finance.Charge_Rate(charge_rate_id)
        ON DELETE CASCADE ON UPDATE CASCADE,


    ----------------------------------------------------
    -- Foreign Key to Rental_Estimate
    ----------------------------------------------------
    CONSTRAINT FK_EstimateCharge_RentalEstimate
        FOREIGN KEY (estimate_id)
        REFERENCES Finance.Rental_Estimate(estimate_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);
GO

----------------------------------
-- Create Estimate_Tax table
------------------------------------
CREATE TABLE Finance.Estimate_Tax (
    estimate_id INT NOT NULL,
    tax_rate_id INT NOT NULL,
    tax_amount DECIMAL(10,2) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    CONSTRAINT PK_Estimate_Tax PRIMARY KEY (estimate_id, tax_rate_id),
    CONSTRAINT FK_Estimate_Tax_Estimate FOREIGN KEY (estimate_id)
        REFERENCES Finance.Rental_Estimate(estimate_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FK_Estimate_Tax_TaxRate FOREIGN KEY (tax_rate_id)
        REFERENCES Finance.Tax_Rate(tax_rate_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);
GO

----------------------------------
-- Create Finance.Estimate_Promotion table
------------------------------------

CREATE TABLE Finance.Estimate_Promotion (
    estimate_id INT NOT NULL,
    promotion_id INT NOT NULL,
    discount_amount DECIMAL(10,2) NULL, -- Calculated discount for this estimate
    applied BIT NOT NULL DEFAULT 1,
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    CONSTRAINT PK_Estimate_Promotion PRIMARY KEY (estimate_id, promotion_id),
    CONSTRAINT FK_Estimate_Promotion_Estimate FOREIGN KEY (estimate_id)
        REFERENCES Finance.Rental_Estimate(estimate_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FK_Estimate_Promotion_Promotion FOREIGN KEY (promotion_id)
        REFERENCES Finance.Promotion(promotion_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);
GO


-----------------------------
-- Stored Procedure to calculate and insert the rental estimate 

CREATE OR ALTER PROCEDURE Finance.usp_CreateRentalEstimate
    @reservation_id INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @estimate_id INT;
    DECLARE @vehicle_id INT,
            @vehicle_class_id INT,
            @pickup_branch_id INT,
            @dropoff_branch_id INT,
            @pickup_datetime DATETIME,
            @return_datetime DATETIME,
            @vehicle_rate_id INT,
            @base_rate DECIMAL(10, 2),
            @total_days INT;

    -- 1. Gather reservation parameters
    SELECT
        @vehicle_id = vehicle_id,
        @pickup_branch_id = pickup_branch_id,
        @dropoff_branch_id = dropoff_branch_id,
        @pickup_datetime = pickup_datetime,
        @return_datetime = return_datetime
    FROM Rental.Reservation
    WHERE reservation_id = @reservation_id;

    SET @total_days = DATEDIFF(DAY, @pickup_datetime, @return_datetime) + 1;

    -- 2. Lookup vehicle_class_id from Vehicle.vehicle
    SELECT @vehicle_class_id = vehicle_class_id
    FROM Vehicle.Vehicle
    WHERE vehicle_id = @vehicle_id;

    -- 3. Find rate for that vehicle_class_id
    SELECT TOP 1
        @vehicle_rate_id = vehicle_rate_id,
        @base_rate = vehicle_daily_rate * @total_days
    FROM Finance.Vehicle_Rate
    WHERE vehicle_class_id = @vehicle_class_id
    ORDER BY vehicle_rate_id DESC;  -- or use a valid date/versioning if you have it

    -- 4. Insert Rental_Estimate (parent, zero totals for now)
    INSERT INTO Finance.Rental_Estimate
    (reservation_id, vehicle_rate_id, base_rate, surcharge_total, discount_total, tax_total)
    VALUES
    (@reservation_id, @vehicle_rate_id, @base_rate, 0, 0, 0);

    SET @estimate_id = SCOPE_IDENTITY();

    -- 5. Insert Estimate_Charge rows
       INSERT INTO Finance.Estimate_Charge (charge_rate_id, estimate_id, charge_quantity)
    SELECT
        rrc.charge_rate_id,
        @estimate_id,
        rrc.quantity
    FROM Rental.Reservation_Charge rrc
    WHERE rrc.reservation_id = @reservation_id;

    -- 6. Insert Estimate_Tax rows (use pickup branch)
    INSERT INTO Finance.Estimate_Tax (estimate_id, tax_rate_id, tax_amount, created_at)
    SELECT
        @estimate_id,
        tr.tax_rate_id,
        ROUND((@base_rate * tr.tax_rate / 100), 2),
        GETDATE()
    FROM Finance.Tax_Rate tr
    WHERE tr.branch_id = @pickup_branch_id
      AND tr.effective_start_date <= @pickup_datetime
      AND (tr.effective_end_date IS NULL OR tr.effective_end_date >= @return_datetime);

    -- 7. Insert Estimate_Promotion rows (all active for pickup date)
    INSERT INTO Finance.Estimate_Promotion (estimate_id, promotion_id, discount_amount, applied, created_at)
    SELECT
        @estimate_id,
        p.promotion_id,
        ROUND((@base_rate * p.promotion_value / 100), 2),
        1,
        GETDATE()
    FROM Finance.Promotion p
    WHERE p.is_active = 1
      AND @pickup_datetime BETWEEN p.promotion_start_date AND p.promotion_end_date;

    -- 8. Update totals in Rental_Estimate
    UPDATE Finance.Rental_Estimate
    SET
      surcharge_total = (
          SELECT COALESCE(SUM(cr.charge_unit_rate * ec.charge_quantity), 0)
          FROM Finance.Estimate_Charge ec
          JOIN Finance.Charge_Rate cr ON ec.charge_rate_id = cr.charge_rate_id
          WHERE ec.estimate_id = @estimate_id
      ),
      discount_total = (
          SELECT COALESCE(SUM(ep.discount_amount), 0)
          FROM Finance.Estimate_Promotion ep
          WHERE ep.estimate_id = @estimate_id
      ),
      tax_total = (
          SELECT COALESCE(SUM(et.tax_amount), 0)
          FROM Finance.Estimate_Tax et
          WHERE et.estimate_id = @estimate_id
      )
    WHERE estimate_id = @estimate_id;

END;
GO

---------------
-- Creating After Trigger to automatically insert the estimate records after reservation has been created. 
-----------------------------

CREATE OR ALTER TRIGGER Rental.tr_AfterInsert_RentalReservation
ON Rental.Reservation
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @reservation_id INT;

    -- Cursor to handle multi-row inserts:
    DECLARE cur CURSOR LOCAL FOR
        SELECT reservation_id FROM inserted;

    OPEN cur;
    FETCH NEXT FROM cur INTO @reservation_id;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        EXEC Finance.usp_CreateRentalEstimate @reservation_id;
        FETCH NEXT FROM cur INTO @reservation_id;
    END

    CLOSE cur;
    DEALLOCATE cur;
END;
GO

-- Trigger for reservation_charge: 

CREATE OR ALTER TRIGGER trg_AfterInsert_ReservationCharge
ON Rental.Reservation_Charge
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @reservation_id INT;

    DECLARE inserted_cursor CURSOR FOR
        SELECT DISTINCT reservation_id FROM inserted;

    OPEN inserted_cursor;
    FETCH NEXT FROM inserted_cursor INTO @reservation_id;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        DECLARE @estimate_id INT;

        SELECT @estimate_id = estimate_id
        FROM Finance.Rental_Estimate
        WHERE reservation_id = @reservation_id;

        IF @estimate_id IS NOT NULL
        BEGIN
            -- Only update the components, total_estimate is computed automatically
            UPDATE Finance.Rental_Estimate
            SET
                surcharge_total = (
                    SELECT COALESCE(SUM(cr.charge_unit_rate * rc.quantity), 0)
                    FROM Rental.Reservation_Charge rc
                    JOIN Finance.Charge_Rate cr ON rc.charge_rate_id = cr.charge_rate_id
                    WHERE rc.reservation_id = @reservation_id
                ),
                updated_at = GETDATE()
            WHERE estimate_id = @estimate_id;
        END
        ELSE
        BEGIN
            -- If no estimate exists yet, create it
            EXEC Finance.usp_CreateRentalEstimate @reservation_id = @reservation_id;
        END

        FETCH NEXT FROM inserted_cursor INTO @reservation_id;
    END

    CLOSE inserted_cursor;
    DEALLOCATE inserted_cursor;
END;
GO



---------------------------
-- Insert 30 records into Rental.Reservation 
---------------------------------

-- Allow explicit reservation_id inserts
SET IDENTITY_INSERT Rental.Reservation ON; -- turn remove the comment with this line if get error.

INSERT INTO Rental.Reservation (
    reservation_id, customer_id, vehicle_id, pickup_branch_id, dropoff_branch_id,
    reservation_date, pickup_datetime, return_datetime, rental_duration_type, reservation_status, confirmation_number
)
VALUES
(1,  1, 1, 1,  1,  GETDATE(), '2025-12-09 14:45:00', '2025-12-16 14:45:00', 'Weekly', 'Confirmed', 'CNF00001'),
(2,  2, 2, 2,  2,  GETDATE(), '2025-12-10 09:00:00', '2025-12-12 09:00:00', 'Daily',  'Completed', 'CNF00002'),
(3,  3, 3, 3,  3,  GETDATE(), '2025-12-11 11:00:00', '2025-12-18 11:00:00', 'Weekly', 'Confirmed', 'CNF00003'),
(4,  4, 4, 4,  4,  GETDATE(), '2025-12-12 08:00:00', '2025-12-14 08:00:00', 'Daily',  'Pending',   'CNF00004'),
(5,  5, 5, 5,  5,  GETDATE(), '2025-12-13 10:30:00', '2025-12-20 10:30:00', 'Weekly', 'Confirmed', 'CNF00005'),
(6,  6, 6, 6,  6,  GETDATE(), '2025-12-14 13:00:00', '2025-12-15 13:00:00', 'Daily',  'Cancelled', 'CNF00006'),
(7,  7, 7, 7,  7,  GETDATE(), '2025-12-15 12:00:00', '2025-12-29 12:00:00', 'Weekly', 'Confirmed', 'CNF00007'),
(8,  8, 8, 8,  8,  GETDATE(), '2025-12-16 09:00:00', '2025-12-18 09:00:00', 'Daily',  'Completed', 'CNF00008'),
(9,  9, 9, 9,  9,  GETDATE(), '2025-12-17 10:00:00', '2025-12-24 10:00:00', 'Weekly', 'Confirmed', 'CNF00009'),
(10, 10, 10, 10, 10, GETDATE(), '2025-12-18 08:30:00', '2025-12-19 08:30:00', 'Daily',  'Pending',   'CNF00010'),
(11, 11, 11, 11, 11, GETDATE(), '2025-12-19 15:00:00', '2025-12-26 15:00:00', 'Weekly', 'Confirmed', 'CNF00011'),
(12, 12, 12, 12, 12, GETDATE(), '2025-12-20 10:00:00', '2025-12-21 10:00:00', 'Daily',  'Completed', 'CNF00012'),
(13, 13, 13, 13, 13, GETDATE(), '2025-12-21 11:00:00', '2025-12-28 11:00:00', 'Weekly', 'Confirmed', 'CNF00013'),
(14, 14, 14, 14, 14, GETDATE(), '2025-12-22 09:00:00', '2025-12-29 09:00:00', 'Weekly', 'Confirmed', 'CNF00014'),
(15, 15, 15, 15, 15, GETDATE(), '2025-12-23 08:30:00', '2025-12-24 08:30:00', 'Daily',  'Cancelled', 'CNF00015'),
(16, 16, 16, 16, 16, GETDATE(), '2025-12-24 10:00:00', '2025-12-26 10:00:00', 'Daily',  'Confirmed', 'CNF00016'),
(17, 17, 17, 17, 17, GETDATE(), '2025-12-25 12:30:00', '2026-01-01 12:30:00', 'Weekly', 'Completed', 'CNF00017'),
(18, 18, 18, 18, 18, GETDATE(), '2025-12-26 14:00:00', '2025-12-27 14:00:00', 'Daily',  'Pending',   'CNF00018'),
(19, 19, 19, 19, 19, GETDATE(), '2025-12-27 09:00:00', '2026-01-03 09:00:00', 'Weekly', 'Confirmed', 'CNF00019'),
(20, 20, 20, 20, 20, GETDATE(), '2025-12-28 08:00:00', '2026-01-11 08:00:00', 'Weekly', 'Confirmed', 'CNF00020'),
(21, 21, 21, 21, 21, GETDATE(), '2025-12-29 13:00:00', '2026-01-05 13:00:00', 'Weekly', 'Completed', 'CNF00021'),
(22, 22, 22, 22, 22, GETDATE(), '2025-12-30 15:00:00', '2026-01-06 15:00:00', 'Weekly', 'Confirmed', 'CNF00022'),
(23, 23, 23, 23, 23, GETDATE(), '2025-12-31 10:00:00', '2026-01-02 10:00:00', 'Daily',  'Confirmed', 'CNF00023'),
(24, 24, 24, 24, 24, GETDATE(), '2026-01-01 09:00:00', '2026-01-08 09:00:00', 'Weekly', 'Completed', 'CNF00024'),
(25, 25, 25, 25, 6,  GETDATE(), '2026-01-02 12:00:00', '2026-01-09 12:00:00', 'Weekly', 'Confirmed', 'CNF00025'),
(26, 26, 26, 26, 11, GETDATE(), '2026-01-03 11:30:00', '2026-01-04 11:30:00', 'Daily',  'Cancelled', 'CNF00026'),
(27, 27, 27, 27, 15, GETDATE(), '2026-01-04 13:00:00', '2026-01-18 13:00:00', 'Weekly', 'Confirmed', 'CNF00027'),
(28, 28, 28, 28, 13, GETDATE(), '2026-01-05 08:00:00', '2026-01-19 08:00:00', 'Weekly', 'Completed', 'CNF00028'),
(29, 29, 29, 29, 10, GETDATE(), '2026-01-06 10:30:00', '2026-01-13 10:30:00', 'Weekly', 'Confirmed', 'CNF00029'),
(30, 30, 30, 30, 17, GETDATE(), '2026-01-07 09:00:00', '2026-01-14 09:00:00', 'Weekly', 'Pending',   'CNF00030');
GO

INSERT INTO Rental.Reservation_Charge (reservation_id, charge_rate_id, quantity)
VALUES
-- === Basic Rentals (1–10) ===
(1,  1, 1),   -- GPS
(1,  2, 7),   -- Insurance (7 days)
(2,  1, 1),
(2,  2, 2),
(3,  1, 1),
(3,  3, 7),
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

-- === Family Rentals (11–20) ===
(11, 1, 1),
(11, 2, 7),
(11, 4, 1),   -- Child Seat
(12, 1, 1),
(12, 8, 1),
(13, 1, 1),
(13, 2, 7),
(13, 4, 1),
(13, 8, 1),
(14, 2, 3),
(14, 7, 1),
(15, 1, 1),
(15, 2, 2),
(15, 5, 1),
(16, 2, 3),
(16, 8, 1),
(17, 2, 7),
(17, 6, 7),   -- Luxury Vehicle Surcharge
(18, 3, 1),
(18, 2, 2),
(19, 2, 7),
(19, 4, 1),
(19, 8, 1),
(20, 2, 3),
(20, 7, 1),

-- === Premium Rentals (21–24) ===
(21, 2, 7),
(21, 6, 7),
(21, 7, 1),
(22, 2, 7),
(22, 3, 7),
(22, 8, 1),
(23, 1, 1),
(23, 2, 3),
(23, 4, 1),
(23, 7, 1),
(24, 2, 7),
(24, 6, 7),
(24, 8, 1),

-- === One-Way Rentals (25–30) ===
(25, 1, 1),
(25, 2, 7),
(25, 12, 1),  -- One-Way Fee
(26, 2, 2),
(26, 12, 1),
(27, 1, 1),
(27, 2, 14),
(27, 12, 1),
(28, 6, 14),
(28, 12, 1),
(29, 2, 7),
(29, 12, 1),
(30, 2, 7),
(30, 12, 1);
GO

--------------------------------------------------------
-- Rental.Rental
-- Stores actual rental session details (after pickup)
--------------------------------------------------------
CREATE TABLE Rental.Rental (
    rental_id INT IDENTITY(1,1) PRIMARY KEY,
    reservation_id INT NOT NULL,
    customer_id INT NOT NULL,
    vehicle_id INT NOT NULL,
    rental_start DATETIME NOT NULL,
    rental_end DATETIME NULL,
    security_deposit DECIMAL(10,2) NOT NULL DEFAULT 300.00,
    rental_total DECIMAL(10,2) NULL, -- Final cost
    rental_status VARCHAR(20) NOT NULL CHECK (rental_status IN ('Active','Completed','Cancelled')),
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    updated_at DATETIME NULL,

    --------------------------------------------------------
    -- Foreign Keys
    --------------------------------------------------------
    CONSTRAINT FK_Rental_Reservation
        FOREIGN KEY (reservation_id)
        REFERENCES Rental.Reservation(reservation_id)
        ON DELETE CASCADE ON UPDATE CASCADE,

    CONSTRAINT FK_Rental_Customer
        FOREIGN KEY (customer_id)
        REFERENCES Customer.Customer(customer_id)
        ON DELETE NO ACTION ON UPDATE CASCADE,

    CONSTRAINT FK_Rental_Vehicle
        FOREIGN KEY (vehicle_id)
        REFERENCES Vehicle.Vehicle(vehicle_id)
        ON DELETE NO ACTION ON UPDATE CASCADE
);
GO

--------------------------------------------------------
-- Finance.Rental_Charge_Detail
-- Bridge between Rental.Rental and Finance.Charge_Rate
-- Tracks all actual rental-time charges (late fee, damage, etc.)
--------------------------------------------------------
CREATE TABLE Finance.Rental_Charge_Detail (
    rental_id INT NOT NULL,
    charge_rate_id INT NOT NULL,
    charge_quantity DECIMAL(10,2) NOT NULL CHECK (charge_quantity >= 0),
    created_at DATETIME NOT NULL DEFAULT GETDATE(),

    ----------------------------------------------------
    -- Composite Primary Key (prevents duplicate rows)
    ----------------------------------------------------
    CONSTRAINT PK_Rental_Charge_Detail PRIMARY KEY (rental_id, charge_rate_id),

    ----------------------------------------------------
    -- Foreign Key to Rental.Rental
    ----------------------------------------------------
    CONSTRAINT FK_RentalChargeDetail_Rental
        FOREIGN KEY (rental_id)
        REFERENCES Rental.Rental(rental_id)
        ON DELETE CASCADE ON UPDATE CASCADE,

    ----------------------------------------------------
    -- Foreign Key to Finance.Charge_Rate
    ----------------------------------------------------
    CONSTRAINT FK_RentalChargeDetail_ChargeRate
        FOREIGN KEY (charge_rate_id)
        REFERENCES Finance.Charge_Rate(charge_rate_id)
        ON DELETE NO ACTION ON UPDATE CASCADE
);
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
-- Stored Procedure: usp_FinalizeRental
------------------------------------------------------------
CREATE OR ALTER PROCEDURE Rental.usp_FinalizeRental
    @rental_id INT,
    @rental_end DATETIME
AS
BEGIN
    SET NOCOUNT ON;

    -- Declare variables
    DECLARE 
        @reservation_id INT,
        @base_estimate DECIMAL(10,2),
        @extra_charges DECIMAL(10,2),
        @security_deposit DECIMAL(10,2) = 300.00,
        @final_total DECIMAL(10,2);

    -- Get reservation_id for this rental
    SELECT @reservation_id = reservation_id
    FROM Rental.Rental
    WHERE rental_id = @rental_id;

    -- Get total_estimate from Finance.Rental_Estimate
    SELECT @base_estimate = ISNULL(total_estimate, 0)
    FROM Finance.Rental_Estimate
    WHERE reservation_id = @reservation_id;

    -- Sum all actual charges for this rental
    SELECT 
        @extra_charges = ISNULL(SUM(cr.charge_unit_rate * d.charge_quantity), 0)
    FROM Finance.Rental_Charge_Detail d
    JOIN Finance.Charge_Rate cr 
        ON d.charge_rate_id = cr.charge_rate_id
    WHERE d.rental_id = @rental_id;

  
    -- Calculate final total
    SET @final_total = ROUND(@base_estimate + @extra_charges + @security_deposit, 2);

 
    -- Update Rental table with final total and status
    UPDATE Rental.Rental
    SET 
        rental_end = @rental_end,
        rental_total = @final_total,
        rental_status = 'Completed',
        updated_at = GETDATE()
    WHERE rental_id = @rental_id;

    -- Return summary for verification
    SELECT 
        @rental_id AS rental_id,
        @reservation_id AS reservation_id,
        @base_estimate AS estimated_cost,
        @extra_charges AS extra_charges,
        @security_deposit AS deposit,
        @final_total AS final_total,
        'Completed' AS new_status;
END;
GO

------------------------------------------------------------
-- Trigger: trg_FinalizeRental_AfterStatusChange
------------------------------------------------------------
CREATE OR ALTER TRIGGER Rental.trg_FinalizeRental_AfterStatusChange
ON Rental.Rental
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Only run if status is set to 'Completed'
    IF NOT EXISTS (
        SELECT 1
        FROM inserted i
        WHERE i.rental_status = 'Completed'
    )
        RETURN;

    -- Loop through all rows that were updated to Completed
    DECLARE @rental_id INT, @rental_end DATETIME;

    DECLARE cur CURSOR FOR
    SELECT i.rental_id, i.rental_end
    FROM inserted i
    JOIN deleted d ON i.rental_id = d.rental_id
    WHERE i.rental_status = 'Completed'
      AND d.rental_status <> 'Completed';

    OPEN cur;
    FETCH NEXT FROM cur INTO @rental_id, @rental_end;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        EXEC Rental.usp_FinalizeRental 
            @rental_id = @rental_id, 
            @rental_end = @rental_end;

        FETCH NEXT FROM cur INTO @rental_id, @rental_end;
    END

    CLOSE cur;
    DEALLOCATE cur;
END;
GO


-- Update the rental_status after it is completed;

UPDATE Rental.Rental
SET rental_status = 'Completed', rental_end = '2026-01-01 12:30'
WHERE rental_id = 4;



-- Complete all active rentals (trigger auto-finalizes totals)

UPDATE Rental.Rental
SET 
    rental_status = 'Completed',
    updated_at = GETDATE()
WHERE rental_status = 'Active';
GO


-- Add rental-time charges for damaged/lated rentals

INSERT INTO Finance.Rental_Charge_Detail (rental_id, charge_rate_id, charge_quantity)
VALUES
(4, 9, 2),  -- Late return (2 hours)
(4, 10, 1), -- Cleaning fee
(6, 7, 1);  -- Damage fee
GO

-- Show total extra charges per rental

SELECT 
    r.rental_id,
    r.reservation_id,
    ISNULL(SUM(cr.charge_unit_rate * d.charge_quantity), 0) AS extra_charges
FROM Rental.Rental r
LEFT JOIN Finance.Rental_Charge_Detail d ON r.rental_id = d.rental_id
LEFT JOIN Finance.Charge_Rate cr ON d.charge_rate_id = cr.charge_rate_id
GROUP BY r.rental_id, r.reservation_id
ORDER BY r.rental_id;
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
(25, 'Debit', 'Visa', 'tok_x5a6b7c8d9e', '6722', 'Noah', 'Rivera', 8, 2029),
(25, 'Debit', 'Visa', 'tok_x5a6b7c8d9e', '6722', 'Noah', 'Rivera', 8, 2029),
(26, 'Credit', 'Visa', 'tok_y6b8d9e0f1g', '1234', 'Harper', 'Morgan', 9, 2028),
(27, 'Debit', 'MasterCard', 'tok_z7c9e0f1g2h', '5678', 'Zoe', 'Long', 3, 2027),
(28, 'Credit', 'Amex', 'tok_a8d0f1g2h3i', '9012', 'Carter', 'Russell', 5, 2029),
(29, 'Credit', 'Discover', 'tok_b9e1g2h3i4j', '3456', 'Penelope', 'Parker', 7, 2028),
(30, 'Debit', 'Visa', 'tok_c0f2h3i4j5k', '7890', 'Mateo', 'Simmons', 2, 2026);

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

------------------------------------------------------------
-- Trigger: Auto-create payment (Credit/Debit) when rental completed
------------------------------------------------------------
CREATE OR ALTER TRIGGER Rental.trg_AutoInsert_Payment
ON Rental.Rental
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Finance.Rental_Payment (
        payment_method_id,
        rental_id,
        payment_date,
        payment_amount,
        payment_status,
        reference_number
    )
    SELECT 
        pm.payment_method_id,
        i.rental_id,
        GETDATE() AS payment_date,
        i.rental_total AS payment_amount,
        'Completed' AS payment_status,
        CONCAT('PMT', RIGHT('00000' + CAST(i.rental_id AS VARCHAR(5)), 5)) AS reference_number
    FROM inserted AS i
    INNER JOIN Customer.Customer_Payment_Method AS pm
        ON pm.customer_id = i.customer_id
    WHERE i.rental_status = 'Completed'
      AND pm.payment_type IN ('Credit', 'Debit')
      AND i.rental_total IS NOT NULL AND i.rental_total > 0
      AND NOT EXISTS (
          SELECT 1 FROM Finance.Rental_Payment AS p 
          WHERE p.rental_id = i.rental_id
      );
END;
GO



-- Reactivate the trigger by re-updating completed rentals

UPDATE Rental.Rental
SET rental_status = 'Completed'
WHERE rental_status = 'Completed';
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

------------------------------------------------------------
-- Insert Refund Records for Existing Payments
------------------------------------------------------------
INSERT INTO Finance.Refund (
    payment_id, refund_date, refund_amount, refund_reason, refund_status
)
VALUES
-- Security Deposit Refunds (Full refunds)
(1, GETDATE(), 300.00, 'Security deposit refund - vehicle returned in good condition', 'Processed'),
(2, GETDATE(), 300.00, 'Security deposit refund - vehicle returned in good condition', 'Processed'),
(3, GETDATE(), 300.00, 'Security deposit refund - vehicle returned in good condition', 'Processed'),
(4, GETDATE(), 200.00, 'Partial refund - minor scratch fee deducted from deposit', 'Processed'),
(5, GETDATE(), 300.00, 'Security deposit refund - vehicle returned in good condition', 'Processed'),

-- Other Refunds
(6, GETDATE(), 120.00, 'Early return refund - 1 unused day credited', 'Processed'),
(7, GETDATE(), 100.00, 'Service issue refund - delay due to vehicle maintenance', 'Processed');
GO

------------------------------------------------------------
-- Create Finance.Invoice Table
------------------------------------------------------------
CREATE TABLE Finance.Invoice (
    invoice_id INT IDENTITY(1,1) PRIMARY KEY,
    branch_id INT NOT NULL,
    rental_id INT NOT NULL,
    customer_id INT NOT NULL,
    invoice_date DATETIME NOT NULL DEFAULT GETDATE(),
    subtotal_amount DECIMAL(10,2) NOT NULL,
    tax_amount DECIMAL(10,2) NOT NULL,
    discount_amount DECIMAL(10,2) NOT NULL DEFAULT 0,
    total_amount DECIMAL(10,2) NOT NULL,
    created_at DATETIME DEFAULT GETDATE(),

    CONSTRAINT FK_invoice_branch
        FOREIGN KEY (branch_id)
        REFERENCES Operation.Branch(branch_id),

    CONSTRAINT FK_invoice_rental
        FOREIGN KEY (rental_id)
        REFERENCES Rental.Rental(rental_id),

    CONSTRAINT FK_invoice_customer
        FOREIGN KEY (customer_id)
        REFERENCES Customer.Customer(customer_id)
);
GO

------------------------------------------------------------
-- Create Finance.Invoice_Line Table
------------------------------------------------------------
CREATE TABLE Finance.Invoice_Line (
    invoice_line_id INT IDENTITY(1,1) PRIMARY KEY,
    invoice_id INT NOT NULL,
    rental_id INT NULL,
    line_description VARCHAR(200) NOT NULL,
    quantity DECIMAL(10,2) NOT NULL DEFAULT 1,
    unit_price DECIMAL(10,2) NOT NULL,
    line_amount AS (quantity * unit_price) PERSISTED,
    tax_rate DECIMAL(10,2) NULL,
    tax_amount DECIMAL(10,2) NULL,
    created_at DATETIME DEFAULT GETDATE(),

    CONSTRAINT FK_invoice_line_invoice
        FOREIGN KEY (invoice_id)
        REFERENCES Finance.Invoice(invoice_id)
        ON DELETE CASCADE,

    CONSTRAINT FK_invoice_line_rental
        FOREIGN KEY (rental_id)
        REFERENCES Rental.Rental(rental_id)
);
GO

-- Trigger for Invoice

CREATE OR ALTER TRIGGER Rental.trg_GenerateInvoice_AfterRentalCompletion
ON Rental.Rental
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    ------------------------------------------------------------
    -- STEP 1: Insert into Invoice (only for Completed & no existing invoice)
    ------------------------------------------------------------
    INSERT INTO Finance.Invoice (
        branch_id,
        rental_id,
        customer_id,
        invoice_date,
        subtotal_amount,
        tax_amount,
        discount_amount,
        total_amount,
        created_at
    )
    SELECT 
        rs.pickup_branch_id,
        r.rental_id,
        r.customer_id,
        GETDATE(),
        re.base_rate + re.surcharge_total AS subtotal_amount,
        re.tax_total,
        re.discount_total,
        (re.total_estimate + r.security_deposit) AS total_amount,
        GETDATE()
    FROM Rental.Rental r
    INNER JOIN inserted i ON r.rental_id = i.rental_id
    INNER JOIN Rental.Reservation rs ON r.reservation_id = rs.reservation_id
    INNER JOIN Finance.Rental_Estimate re ON re.reservation_id = rs.reservation_id
    WHERE i.rental_status = 'Completed'
      AND NOT EXISTS (
          SELECT 1 FROM Finance.Invoice inv WHERE inv.rental_id = r.rental_id
      );

    ------------------------------------------------------------
    -- STEP 2: Base Rental Fee Line
    ------------------------------------------------------------
    INSERT INTO Finance.Invoice_Line (
        invoice_id, rental_id, line_description, quantity, unit_price
    )
    SELECT 
        inv.invoice_id,
        r.rental_id,
        'Base Rental Charge',
        1,
        re.base_rate
    FROM Finance.Invoice inv
    JOIN Rental.Rental r ON inv.rental_id = r.rental_id
    JOIN Finance.Rental_Estimate re ON re.reservation_id = r.reservation_id
    WHERE NOT EXISTS (
        SELECT 1 FROM Finance.Invoice_Line il 
        WHERE il.invoice_id = inv.invoice_id AND il.line_description = 'Base Rental Charge'
    );

    ------------------------------------------------------------
    -- STEP 3: Add-on Charges (from Reservation_Charge)
    ------------------------------------------------------------
    INSERT INTO Finance.Invoice_Line (
        invoice_id, rental_id, line_description, quantity, unit_price
    )
    SELECT 
        inv.invoice_id,
        r.rental_id,
        ct.charge_name,
        rc.quantity,
        rch.charge_unit_rate
    FROM Finance.Invoice inv
    JOIN Rental.Rental r ON inv.rental_id = r.rental_id
    JOIN Rental.Reservation_Charge rc ON rc.reservation_id = r.reservation_id
    JOIN Finance.Charge_Rate rch ON rc.charge_rate_id = rch.charge_rate_id
    JOIN Finance.Charge_Type ct ON rch.charge_type_id = ct.charge_type_id
    WHERE NOT EXISTS (
        SELECT 1 FROM Finance.Invoice_Line il 
        WHERE il.invoice_id = inv.invoice_id AND il.line_description = ct.charge_name
    );

    ------------------------------------------------------------
    -- STEP 4: Taxes, Discounts, and Security Deposit
    ------------------------------------------------------------
    INSERT INTO Finance.Invoice_Line (invoice_id, rental_id, line_description, quantity, unit_price)
    SELECT inv.invoice_id, r.rental_id, 'Tax Total', 1, re.tax_total
    FROM Finance.Invoice inv
    JOIN Rental.Rental r ON inv.rental_id = r.rental_id
    JOIN Finance.Rental_Estimate re ON re.reservation_id = r.reservation_id
    WHERE re.tax_total > 0;

    INSERT INTO Finance.Invoice_Line (invoice_id, rental_id, line_description, quantity, unit_price)
    SELECT inv.invoice_id, r.rental_id, 'Discount Applied', 1, -re.discount_total
    FROM Finance.Invoice inv
    JOIN Rental.Rental r ON inv.rental_id = r.rental_id
    JOIN Finance.Rental_Estimate re ON re.reservation_id = r.reservation_id
    WHERE re.discount_total > 0;

    INSERT INTO Finance.Invoice_Line (invoice_id, rental_id, line_description, quantity, unit_price)
    SELECT inv.invoice_id, r.rental_id, 'Refundable Security Deposit', 1, r.security_deposit
    FROM Finance.Invoice inv
    JOIN Rental.Rental r ON inv.rental_id = r.rental_id
    WHERE r.security_deposit > 0;

END;
GO


--- Because my rental records were completed before. 

UPDATE Rental.Rental
SET rental_status = 'Completed'
WHERE rental_status = 'Completed';




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
(8, 10, 'Zoe', NULL, 'Reyes', 'zoe.reyes@carrental.com', '507-555-8003', '1998-04-20', 'Female', '2023-02-03', 'Active'),
(9, 1, 'Aaron', NULL, 'Russell', 'aaron.russell@carrental.com', '507-555-9001', '1987-07-14', 'Male', '2015-08-01', 'Active'),
(9, 2, 'Megan', NULL, 'Barnes', 'megan.barnes@carrental.com', '507-555-9002', '1993-11-25', 'Female', '2019-04-18', 'Active'),
(9, 5, 'Tyler', 'H', 'Fisher', 'tyler.fisher@carrental.com', '507-555-9003', '1990-09-22', 'Male', '2018-06-12', 'Active'),

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
(16, 3, 'Natalie', NULL, 'Gomez', 'natalie.gomez@carrental.com', '507-555-16002', '1993-08-27', 'Female', '2020-01-19', 'Active'),

-- Branch 17
(17, 9, 'Henry', NULL, 'Perry', 'henry.perry@carrental.com', '507-555-17001', '1984-05-15', 'Male', '2012-10-02', 'Active'),
(17, 6, 'Olivia', NULL, 'Sanders', 'olivia.sanders@carrental.com', '507-555-17002', '1992-06-03', 'Female', '2019-05-11', 'Active'),

-- Branch 18
(18, 2, 'Leo', NULL, 'Ward', 'leo.ward@carrental.com', '507-555-18001', '1991-04-09', 'Male', '2018-03-01', 'Active'),
(18, 8, 'Aria', NULL, 'Bailey', 'aria.bailey@carrental.com', '507-555-18002', '1994-07-29', 'Female', '2020-08-12', 'Active'),

-- Branch 19
(19, 5, 'Mason', NULL, 'Torres', 'mason.torres@carrental.com', '507-555-19001', '1990-03-25', 'Male', '2016-05-10', 'Active'),
(19, 10, 'Ella', NULL, 'Reed', 'ella.reed@carrental.com', '507-555-19002', '1998-09-16', 'Female', '2023-01-09', 'Active'),

-- Branch 20
(20, 1, 'Ethan', NULL, 'Garcia', 'ethan.garcia@carrental.com', '507-555-20001', '1986-02-14', 'Male', '2013-07-24', 'Active'),
(20, 4, 'Sophie', NULL, 'Ferguson', 'sophie.ferguson@carrental.com', '507-555-20002', '1995-05-22', 'Female', '2020-03-03', 'Active'),

-- Branches 21–30 (one per branch)
(21, 3, 'Noah', NULL, 'Cole', 'noah.cole@carrental.com', '507-555-21001', '1990-07-09', 'Male', '2016-01-15', 'Active'),
(22, 5, 'Layla', NULL, 'Simmons', 'layla.simmons@carrental.com', '507-555-22001', '1995-08-10', 'Female', '2020-06-22', 'Active'),
(23, 7, 'Jacob', NULL, 'Rivera', 'jacob.rivera@carrental.com', '507-555-23001', '1989-09-01', 'Male', '2014-09-09', 'Active'),
(24, 9, 'Sophia', NULL, 'Gray', 'sophia.gray@carrental.com', '507-555-24001', '1993-10-13', 'Female', '2019-10-01', 'Active'),
(25, 2, 'Liam', NULL, 'Hall', 'liam.hall@carrental.com', '507-555-25001', '1988-12-21', 'Male', '2015-04-08', 'Active'),
(26, 1, 'Zoe', NULL, 'Bennett', 'zoe.bennett@carrental.com', '507-555-26001', '1999-02-18', 'Female', '2023-03-02', 'Active'),
(27, 10, 'Lucas', NULL, 'Mitchell', 'lucas.mitchell@carrental.com', '507-555-27001', '1994-03-17', 'Male', '2019-11-06', 'Active'),
(28, 8, 'Ava', NULL, 'Cooper', 'ava.cooper@carrental.com', '507-555-28001', '1995-06-20', 'Female', '2021-05-15', 'Active'),
(29, 4, 'Elijah', NULL, 'Harris', 'elijah.harris@carrental.com', '507-555-29001', '1987-07-23', 'Male', '2014-08-11', 'Active'),
(30, 6, 'Mia', NULL, 'Ward', 'mia.ward@carrental.com', '507-555-30001', '1996-09-09', 'Female', '2021-04-02', 'Active');
GO


------------------------------------------------------------
-- Vehicle.Vehicle_Warranty
------------------------------------------------------------
CREATE TABLE Vehicle.Vehicle_Warranty (
    warranty_id INT IDENTITY(1,1) PRIMARY KEY,
    vehicle_id INT NOT NULL,
    warranty_provider VARCHAR(50) NOT NULL,
    warranty_type VARCHAR(30) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    coverage_mileage INT NOT NULL,
    status VARCHAR(20) NOT NULL CHECK (status IN ('Active','Expired')),
    CONSTRAINT FK_Warranty_Vehicle FOREIGN KEY (vehicle_id)
        REFERENCES Vehicle.Vehicle(vehicle_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);
GO

----------------
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
-- 
-- Create Vehicle_Registration Table
--------------------------------------------------------
CREATE TABLE Vehicle.Vehicle_Registration (
    registration_id INT IDENTITY(1,1) PRIMARY KEY,
    vehicle_id INT NOT NULL,
    registration_number VARCHAR(20) NOT NULL UNIQUE,
    license_plate VARCHAR(20) NOT NULL UNIQUE,
    registration_state VARCHAR(30) NOT NULL,
    registration_issue_date DATE NOT NULL,
    registration_expiry_date DATE NOT NULL,
    registration_status VARCHAR(20) NOT NULL DEFAULT 'Active',
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    updated_at DATETIME NULL,

    CONSTRAINT FK_VehicleRegistration_Vehicle 
        FOREIGN KEY (vehicle_id) 
        REFERENCES Vehicle.Vehicle(vehicle_id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE,

    CONSTRAINT CK_Registration_Expiry 
        CHECK (registration_expiry_date > registration_issue_date)
);
GO

--------------------------------------------------------
-- Insert 30 Records into Vehicle.Vehicle_Registration
-- Matches Vehicle.Vehicle (vehicle_id 1–30)
--------------------------------------------------------
INSERT INTO Vehicle.Vehicle_Registration
(vehicle_id, registration_number, license_plate, registration_state,
 registration_issue_date, registration_expiry_date, registration_status)
VALUES
(1,  'REG20250001', 'MN-4821A', 'Minnesota', '2024-06-01', '2026-06-01', 'Active'),
(2,  'REG20250002', 'CA-5823B', 'California', '2024-07-10', '2026-07-10', 'Active'),
(3,  'REG20250003', 'TX-9320C', 'Texas', '2023-05-12', '2025-05-12', 'Active'),
(4,  'REG20250004', 'IL-2309D', 'Illinois', '2021-09-01', '2023-09-01', 'Expired'),
(5,  'REG20250005', 'NY-7534E', 'New York', '2024-03-15', '2026-03-15', 'Active'),
(6,  'REG20250006', 'FL-8721F', 'Florida', '2023-08-20', '2025-08-20', 'Active'),
(7,  'REG20250007', 'TX-2904G', 'Texas', '2024-02-10', '2026-02-10', 'Active'),
(8,  'REG20250008', 'WA-3187H', 'Washington', '2023-04-01', '2025-04-01', 'Active'),
(9,  'REG20250009', 'NY-1023I', 'New York', '2020-06-01', '2022-06-01', 'Expired'),
(10, 'REG20250010', 'MN-5609J', 'Minnesota', '2023-05-22', '2025-05-22', 'Active'),
(11, 'REG20250011', 'NV-3917K', 'Nevada', '2024-04-01', '2026-04-01', 'Active'),
(12, 'REG20250012', 'CO-8491L', 'Colorado', '2024-03-15', '2026-03-15', 'Active'),
(13, 'REG20250013', 'OR-9283M', 'Oregon', '2023-09-10', '2025-09-10', 'Active'),
(14, 'REG20250014', 'AZ-5560N', 'Arizona', '2023-07-01', '2025-07-01', 'Active'),
(15, 'REG20250015', 'MI-3249O', 'Michigan', '2021-03-01', '2023-03-01', 'Expired'),
(16, 'REG20250016', 'MN-6785P', 'Minnesota', '2024-06-10', '2026-06-10', 'Active'),
(17, 'REG20250017', 'CA-9912Q', 'California', '2024-05-15', '2026-05-15', 'Active'),
(18, 'REG20250018', 'OH-4723R', 'Ohio', '2023-10-01', '2025-10-01', 'Active'),
(19, 'REG20250019', 'CO-2385S', 'Colorado', '2024-01-01', '2026-01-01', 'Active'),
(20, 'REG20250020', 'TX-7261T', 'Texas', '2023-03-22', '2025-03-22', 'Active'),
(21, 'REG20250021', 'FL-9023U', 'Florida', '2023-06-01', '2025-06-01', 'Active'),
(22, 'REG20250022', 'CA-4172V', 'California', '2024-02-14', '2026-02-14', 'Active'),
(23, 'REG20250023', 'MN-8735W', 'Minnesota', '2023-11-09', '2025-11-09', 'Active'),
(24, 'REG20250024', 'WA-5128X', 'Washington', '2023-08-20', '2025-08-20', 'Active'),
(25, 'REG20250025', 'TX-1937Y', 'Texas', '2024-04-01', '2026-04-01', 'Active'),
(26, 'REG20250026', 'FL-6245Z', 'Florida', '2023-05-05', '2025-05-05', 'Active'),
(27, 'REG20250027', 'CO-4218A', 'Colorado', '2023-03-30', '2025-03-30', 'Active'),
(28, 'REG20250028', 'NY-7591B', 'New York', '2024-01-15', '2026-01-15', 'Active'),
(29, 'REG20250029', 'CA-8350C', 'California', '2022-02-01', '2024-02-01', 'Expired'),
(30, 'REG20250030', 'MN-9365D', 'Minnesota', '2024-03-10', '2026-03-10', 'Active');
GO

--------------------------------------------------------
--  Revised Vehicle.Inspection Table
--------------------------------------------------------
CREATE TABLE Vehicle.Inspection (
    inspection_id INT IDENTITY(1,1) PRIMARY KEY,
    employee_id INT NOT NULL,
    vehicle_id INT NOT NULL,
    rental_id INT NULL,  -- linked to Rental.Rental once data available
    inspection_date DATETIME NOT NULL,
    inspection_type VARCHAR(4) NOT NULL CHECK (inspection_type IN ('Pre','Post')),
    inspection_mileage DECIMAL(10,2) NOT NULL,
    fuel_level DECIMAL(5,2) NULL,  -- as percentage 0–100
    inspection_media_path VARCHAR(200) NULL,
    inspection_status VARCHAR(30) NOT NULL CHECK (inspection_status IN ('Passed','Failed','Needs Review')),
    inspection_signoff BIT NOT NULL DEFAULT 0,
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    updated_at DATETIME NULL,

    CONSTRAINT FK_Inspection_Vehicle FOREIGN KEY (vehicle_id)
        REFERENCES Vehicle.Vehicle(vehicle_id)
        ON DELETE CASCADE ON UPDATE CASCADE,

    CONSTRAINT FK_Inspection_Employee FOREIGN KEY (employee_id)
        REFERENCES Operation.Employee(employee_id)
        ON DELETE NO ACTION ON UPDATE CASCADE
);
GO


--------------------------------------------------------
-- Insert Sample Data into Vehicle.Inspection
-- Matches Vehicle.Vehicle (1–30)
--------------------------------------------------------
INSERT INTO Vehicle.Inspection
(employee_id, vehicle_id, rental_id, inspection_date, inspection_type, 
 inspection_mileage, fuel_level, inspection_media_path, inspection_status, inspection_signoff)
VALUES
(5,  1,  NULL, '2025-10-10 09:00', 'Pre', 43210.25, 95.00, 'photos/inspection_1_pre.jpg', 'Passed', 1),
(7,  2,  NULL, '2025-10-12 10:15', 'Pre', 38150.88, 90.00, 'photos/inspection_2_pre.jpg', 'Passed', 1),
(9,  3,  NULL, '2025-10-14 11:45', 'Pre', 50210.00, 85.00, 'photos/inspection_3_pre.jpg', 'Needs Review', 0),
(11, 4,  NULL, '2025-10-16 09:30', 'Pre', 27450.76, 88.00, 'photos/inspection_4_pre.jpg', 'Passed', 1),
(12, 5,  NULL, '2025-10-18 14:00', 'Pre', 36190.00, 92.00, 'photos/inspection_5_pre.jpg', 'Passed', 1),
(15, 6,  NULL, '2025-10-20 10:00', 'Pre', 21120.59, 89.00, 'photos/inspection_6_pre.jpg', 'Passed', 1),
(17, 7,  NULL, '2025-10-22 13:15', 'Pre', 44230.17, 87.00, 'photos/inspection_7_pre.jpg', 'Passed', 1),
(20, 8,  NULL, '2025-10-24 08:45', 'Pre', 15230.00, 99.00, 'photos/inspection_8_pre.jpg', 'Passed', 1),
(22, 9,  NULL, '2025-10-25 09:00', 'Pre', 61200.90, 80.00, 'photos/inspection_9_pre.jpg', 'Needs Review', 0),
(24, 10, NULL, '2025-10-26 15:30', 'Pre', 27310.44, 91.00, 'photos/inspection_10_pre.jpg', 'Passed', 1),
(26, 11, NULL, '2025-10-28 16:00', 'Pre', 41290.20, 93.00, 'photos/inspection_11_pre.jpg', 'Passed', 1),
(28, 12, NULL, '2025-10-30 08:20', 'Pre', 30122.70, 90.00, 'photos/inspection_12_pre.jpg', 'Passed', 1),
(30, 13, NULL, '2025-11-01 10:10', 'Pre', 18300.10, 97.00, 'photos/inspection_13_pre.jpg', 'Passed', 1),
(33, 14, NULL, '2025-11-02 09:45', 'Pre', 20980.40, 94.00, 'photos/inspection_14_pre.jpg', 'Passed', 1),
(36, 15, NULL, '2025-11-03 11:20', 'Pre', 47210.35, 82.00, 'photos/inspection_15_pre.jpg', 'Needs Review', 0),

-- Post-Inspection Records
(5,  1,  1, '2025-12-12 16:30', 'Post', 43280.25, 65.00, 'photos/inspection_1_post.jpg', 'Passed', 1),
(7,  2,  2, '2025-12-18 17:00', 'Post', 38210.88, 60.00, 'photos/inspection_2_post.jpg', 'Passed', 1),
(9,  3,  3, '2025-12-21 18:00', 'Post', 50280.00, 72.00, 'photos/inspection_3_post.jpg', 'Passed', 1),
(11, 4,  4, '2026-01-01 13:45', 'Post', 27550.76, 80.00, 'photos/inspection_4_post.jpg', 'Passed', 1),
(12, 5,  5, '2026-01-05 15:00', 'Post', 36250.00, 77.00, 'photos/inspection_5_post.jpg', 'Passed', 1),
(15, 6,  6, '2026-01-08 10:30', 'Post', 21210.59, 88.00, 'photos/inspection_6_post.jpg', 'Passed', 1),
(17, 7,  7, '2026-01-19 11:00', 'Post', 44310.17, 70.00, 'photos/inspection_7_post.jpg', 'Needs Review', 0),
(20, 8,  NULL, '2025-11-05 14:00', 'Post', 15320.00, 94.00, 'photos/inspection_8_post.jpg', 'Passed', 1),
(22, 9,  NULL, '2025-11-06 15:00', 'Post', 61300.90, 78.00, 'photos/inspection_9_post.jpg', 'Failed', 0),
(24, 10, NULL, '2025-11-07 09:00', 'Post', 27410.44, 88.00, 'photos/inspection_10_post.jpg', 'Passed', 1),
(26, 11, NULL, '2025-11-08 10:00', 'Post', 41390.20, 82.00, 'photos/inspection_11_post.jpg', 'Passed', 1),
(28, 12, NULL, '2025-11-09 12:30', 'Post', 30210.70, 91.00, 'photos/inspection_12_post.jpg', 'Passed', 1),
(30, 13, NULL, '2025-11-10 09:30', 'Post', 18410.10, 95.00, 'photos/inspection_13_post.jpg', 'Passed', 1),
(33, 14, NULL, '2025-11-11 11:00', 'Post', 21050.40, 93.00, 'photos/inspection_14_post.jpg', 'Passed', 1),
(36, 15, NULL, '2025-11-12 13:00', 'Post', 47330.35, 89.00, 'photos/inspection_15_post.jpg', 'Passed', 1);
GO

--------------------------------------------------------
-- Verified Vehicle.Damage Table
--------------------------------------------------------
CREATE TABLE Vehicle.Damage (
    damage_id INT IDENTITY(1,1) PRIMARY KEY,
    inspection_id INT NOT NULL,
    damage_description VARCHAR(200) NOT NULL,
    estimated_repair_cost DECIMAL(10,2) NULL,
    damage_severity VARCHAR(20) NULL CHECK (damage_severity IN ('Minor','Moderate','Severe')),
    damage_status VARCHAR(20) NOT NULL DEFAULT 'Unresolved'
        CHECK (damage_status IN ('Unresolved','Under Repair','Resolved')),
    reported_date DATETIME NOT NULL DEFAULT GETDATE(),

    CONSTRAINT FK_Damage_Inspection 
        FOREIGN KEY (inspection_id)
        REFERENCES Vehicle.Inspection(inspection_id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);
GO

--------------------------------------------------------
-- Insert Sample Data into Vehicle.Damage
-- Links to Vehicle.Inspection(inspection_id)
--------------------------------------------------------
INSERT INTO Vehicle.Damage
(inspection_id, damage_description, estimated_repair_cost, damage_severity, damage_status)
VALUES
(3,  'Rear bumper scuff marks observed near license area', 185.00, 'Minor', 'Resolved'),
(9,  'Front bumper dent and left headlight cracked', 750.00, 'Moderate', 'Under Repair'),
(15, 'Deep scratch on passenger side door', 320.00, 'Minor', 'Resolved'),
(17, 'Left mirror broken after return inspection', 240.00, 'Minor', 'Unresolved'),
(19, 'Small chip in windshield lower right corner', 130.00, 'Minor', 'Resolved'),
(22, 'Rear right tire worn beyond limit', 180.00, 'Moderate', 'Under Repair'),
(23, 'Roof dent — likely due to falling branch', 950.00, 'Moderate', 'Under Repair'),
(25, 'Front fender bent; requires replacement', 1200.00, 'Severe', 'Unresolved'),
(26, 'Interior spill stain on seat fabric', 75.00, 'Minor', 'Resolved'),
(27, 'Scratches on rear trunk area, repaint needed', 400.00, 'Moderate', 'Resolved'),
(29, 'Rear windshield cracked during transit', 650.00, 'Moderate', 'Under Repair'),
(30, 'Front tire puncture — replaced immediately', 160.00, 'Minor', 'Resolved');
GO

--------------------------------------------------------
-- Create Vehicle.Maintenance_Record Table
--------------------------------------------------------
CREATE TABLE Vehicle.Maintenance_Record (
    maintenance_id INT IDENTITY(1,1) PRIMARY KEY,
    vehicle_id INT NOT NULL,
    service_provider VARCHAR(50) NOT NULL,
    maintenance_date DATE NOT NULL,
    maintenance_type VARCHAR(30) NOT NULL CHECK (maintenance_type IN 
        ('Oil Change','Tire Rotation','Brake Service','Battery Replacement',
         'General Inspection','Transmission Service','Detailing','Other')),
    maintenance_cost DECIMAL(10,2) NOT NULL CHECK (maintenance_cost >= 0),
    mileage_at_maintenance DECIMAL(10,2) NULL CHECK (mileage_at_maintenance >= 0),
    next_due_date DATE NULL,
    maintenance_status VARCHAR(20) NOT NULL DEFAULT 'Completed' 
        CHECK (maintenance_status IN ('Completed','Scheduled','Pending')),
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    updated_at DATETIME NULL,

    CONSTRAINT FK_Maintenance_Vehicle 
        FOREIGN KEY (vehicle_id) 
        REFERENCES Vehicle.Vehicle(vehicle_id)
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
(vehicle_id, service_provider, maintenance_date, maintenance_type, maintenance_cost,
 mileage_at_maintenance, next_due_date, maintenance_status)
VALUES
(1,  'Goodyear Auto Service',        '2025-02-15', 'Oil Change',          89.99, 43210, '2025-08-15', 'Completed'),
(2,  'Jiffy Lube',                   '2025-01-20', 'Brake Service',       240.00, 38150, '2026-01-20', 'Completed'),
(3,  'Midas Auto Repair',            '2025-03-10', 'Tire Rotation',       75.00, 50210, '2025-09-10', 'Completed'),
(4,  'Valvoline Express',            '2025-04-05', 'Oil Change',          95.50, 27450, '2025-10-05', 'Completed'),
(5,  'Firestone Complete Auto Care', '2025-02-02', 'Battery Replacement', 180.00, 36190, '2027-02-02', 'Completed'),
(6,  'Tesla Service Center',         '2025-03-22', 'General Inspection',  120.00, 21120, '2026-03-22', 'Completed'),
(7,  'Nissan Certified Service',     '2025-01-30', 'Brake Service',       310.00, 44230, '2026-01-30', 'Completed'),
(8,  'Toyota Care Center',           '2025-04-01', 'Oil Change',          89.00, 15230, '2025-10-01', 'Completed'),
(9,  'Kia Dealership',               '2025-03-28', 'Transmission Service',450.00, 61200, '2026-03-28', 'Completed'),
(10, 'Ford Auto Center',             '2025-03-07', 'Brake Service',       295.00, 27310, '2026-03-07', 'Completed'),
(11, 'Hyundai AutoCare',             '2025-02-15', 'Tire Rotation',       85.00, 41290, '2025-08-15', 'Scheduled'),
(12, 'Honda Auto Service',           '2025-04-12', 'General Inspection',  99.00, 30122, '2026-04-12', 'Completed'),
(13, 'Chevrolet Maintenance',        '2025-03-02', 'Brake Service',       310.00, 18300, '2026-03-02', 'Completed'),
(14, 'Tesla Service Center',         '2025-04-10', 'Battery Replacement', 500.00, 20980, '2028-04-10', 'Completed'),
(15, 'Mazda Auto Center',            '2025-03-18', 'Oil Change',          95.00, 47210, '2025-09-18', 'Completed');
GO

--------------------------------------------------------
-- Vehicle.Maintenance_Inspection Table
-- (Prevents multiple cascade paths)
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
        ON DELETE CASCADE 
        ON UPDATE CASCADE,

    CONSTRAINT FK_MI_Inspection 
        FOREIGN KEY (inspection_id) 
        REFERENCES Vehicle.Inspection(inspection_id)
        ON DELETE NO ACTION     
        ON UPDATE NO ACTION
);
GO

--------------------------------------------------------
-- Insert Sample Data into Vehicle.Maintenance_Inspection
--------------------------------------------------------
INSERT INTO Vehicle.Maintenance_Inspection
(maintenance_id, inspection_id, request_date, request_type, description, priority_level, status)
VALUES
(1,  4,  '2025-03-12', 'Damage Follow-up', 'Follow-up on bumper dent noted during post-rental inspection.', 'Medium', 'In Progress'),
(2,  5,  '2025-03-18', 'Repair Request',    'Replace broken side mirror and recalibrate sensors.',          'High',   'Pending'),
(3,  7,  '2025-03-25', 'Preventive Check',  'Inspect brakes before customer rental.',                       'Low',    'Completed'),
(4,  10, '2025-04-01', 'Repair Request',    'Investigate engine noise reported in inspection.',              'High',   'In Progress'),
(5,  11, '2025-04-02', 'Routine Service',   'Scheduled maintenance per 25,000 mile interval.',              'Medium', 'Completed'),
(6,  12, '2025-04-05', 'Damage Follow-up',  'Repaint right door panel scratches.',                           'Low',    'Pending'),
(7,  13, '2025-04-06', 'Preventive Check',  'General systems check post-maintenance.',                       'Low',    'Completed'),
(8,  14, '2025-04-07', 'Repair Request',    'AC system not cooling effectively.',                             'High',   'In Progress'),
(9,  15, '2025-04-08', 'Preventive Check',  'Inspect tire tread and pressure before next booking.',          'Medium', 'Completed'),
(10, 6,  '2025-04-09', 'Routine Service',   'Periodic maintenance scheduling for hybrid battery.',           'Medium', 'Pending');
GO

--------------------------------------------------------
-- Create Vehicle.Vehicle_Insurance Table
--------------------------------------------------------
CREATE TABLE Vehicle.Vehicle_Insurance (
    insurance_id INT IDENTITY(1,1) PRIMARY KEY,
    vehicle_id INT NOT NULL,
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
        FOREIGN KEY (vehicle_id) 
        REFERENCES Vehicle.Vehicle(vehicle_id)
        ON DELETE CASCADE ON UPDATE CASCADE,

    CONSTRAINT CK_Policy_Expiry 
        CHECK (policy_expiry_date > policy_start_date)
);
GO

--------------------------------------------------------
-- Insert Sample Data into Vehicle.Vehicle_Insurance
--------------------------------------------------------
INSERT INTO Vehicle.Vehicle_Insurance
(vehicle_id, policy_number, provider_name, coverage_type, 
 policy_start_date, policy_expiry_date, policy_status)
VALUES
(1,  'POL2022MN001', 'State Farm Insurance', 'Full Coverage',   '2024-01-10', '2025-01-10', 'Active'),
(2,  'POL2023CA002', 'GEICO',                'Comprehensive',   '2024-03-15', '2025-03-15', 'Active'),
(3,  'POL2021TX003', 'Allstate',             'Collision',       '2023-06-01', '2024-06-01', 'Expired'),
(4,  'POL2022NY004', 'Progressive',          'Full Coverage',   '2024-08-20', '2025-08-20', 'Active'),
(5,  'POL2021FL005', 'Liberty Mutual',       'Liability',       '2023-12-05', '2024-12-05', 'Pending Renewal'),
(6,  'POL2020NV006', 'Nationwide',           'Comprehensive',   '2023-02-10', '2024-02-10', 'Expired'),
(7,  'POL2021WA007', 'Travelers Insurance',  'Full Coverage',   '2024-09-12', '2025-09-12', 'Active'),
(8,  'POL2020IL008', 'USAA',                 'Collision',       '2023-05-01', '2024-05-01', 'Expired'),
(9,  'POL2023AZ009', 'Farmers Insurance',    'Comprehensive',   '2024-04-01', '2025-04-01', 'Active'),
(10, 'POL2022OH010', 'Erie Insurance',       'Full Coverage',   '2024-07-07', '2025-07-07', 'Active'),
(11, 'POL2021CO011', 'Nationwide',           'Liability',       '2023-03-22', '2024-03-22', 'Expired'),
(12, 'POL2022GA012', 'State Farm Insurance', 'Personal Injury', '2024-10-10', '2025-10-10', 'Active'),
(13, 'POL2020MI013', 'Progressive',          'Collision',       '2023-12-12', '2024-12-12', 'Active'),
(14, 'POL2021UT014', 'Allstate',             'Comprehensive',   '2024-02-18', '2025-02-18', 'Active'),
(15, 'POL2023WI015', 'GEICO',                'Full Coverage',   '2024-05-10', '2025-05-10', 'Active');
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

