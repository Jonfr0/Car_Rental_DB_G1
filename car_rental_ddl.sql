
Use CarRentalDB;
GO

-- Create Schemas. We are not dropping any schemas or tables
-- because we are creating a brand new database
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

------------------------------------------------------
-- Create Customer Table Under Customer Schema.
--------------------------------------------------------
CREATE TABLE Customer.Customer (
    customer_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    middle_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL ,
    date_of_birth DATE NOT NULL,
    gender VARCHAR(10) CHECK (gender IN ('Male','Female','Other'))
);
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
-- Create Vehicle_Fuel_Type Table in Vehicle_Schema
--------------------------------------------------------
CREATE TABLE Vehicle.Fuel_Type (
    fuel_type_id INT IDENTITY(1,1) PRIMARY KEY,
    fuel_type_name VARCHAR(30) NOT NULL,
    fuel_efficiency DECIMAL(5,2) NOT NULL
);
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
-- Create Vehicle_Class Table
--------------------------------------------------------
CREATE TABLE Vehicle.Vehicle_Class (
    vehicle_class_id INT IDENTITY(1,1) PRIMARY KEY,
    class_name VARCHAR(30) NOT NULL
);
GO

-------------------------------------------------------
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

-------------------------------------------------------------
-- Creating usp_Generate_Vehicle_Rates, to automatically generate vehicle rental rates for ever (Branch * Vehicle)
-------------------------------------------------------------
CREATE PROCEDURE Finance.usp_Generate_Vehicle_Rates
AS
BEGIN
    SET NOCOUNT ON;
    ---------------------------------------------------------
    -- 3. Insert vehicle rate records for each
    --    (Vehicle Class x Branch) combination
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
    CROSS JOIN Operation.Branch b  -- Generate all class x branch combinations

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
        charge_basis IN ('Per Day','Per Hour','Flat Rate','Per Week','Per Month','Per Mile')
        OR charge_basis IS NULL
    )
);
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
-- Create Finance.Tax_Rate table to store tax rate
------------------------------------------------
CREATE TABLE Finance.Tax_Rate (
    tax_rate_id INT IDENTITY(1,1) PRIMARY KEY,
    tax_type_id INT NOT NULL,                   
    branch_id INT NOT NULL,                     
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

-- Stored Procedure: Assign Tax Rates to All Branches
--   Auto-populates Finance.Tax_Rate with standard tax rates
--   based on tax type and branch name (airport logic included)
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

-----------------------------
-- Stored Procedure: Create Rental Estimate
-----------------------------
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

    --------------------------------------------------------
    -- 1. Get reservation details
    --------------------------------------------------------
    SELECT
        @vehicle_id = vehicle_id,
        @pickup_branch_id = pickup_branch_id,
        @dropoff_branch_id = dropoff_branch_id,
        @pickup_datetime = pickup_datetime,
        @return_datetime = return_datetime
    FROM Rental.Reservation
    WHERE reservation_id = @reservation_id;

    SET @total_days = DATEDIFF(DAY, @pickup_datetime, @return_datetime) + 1;

    --------------------------------------------------------
    -- 2. Look up vehicle class
    --------------------------------------------------------
    SELECT @vehicle_class_id = vehicle_class_id
    FROM Vehicle.Vehicle
    WHERE vehicle_id = @vehicle_id;

    --------------------------------------------------------
    -- 3. Retrieve the correct vehicle rate
    --------------------------------------------------------
    SELECT TOP 1
        @vehicle_rate_id = vehicle_rate_id,
        @base_rate = vehicle_daily_rate * @total_days
    FROM Finance.Vehicle_Rate
    WHERE vehicle_class_id = @vehicle_class_id
    ORDER BY vehicle_rate_id DESC;

    --------------------------------------------------------
    -- 4. Insert into Rental_Estimate (parent row)
    --------------------------------------------------------
    INSERT INTO Finance.Rental_Estimate
    (reservation_id, vehicle_rate_id, base_rate, surcharge_total, discount_total, tax_total)
    VALUES
    (@reservation_id, @vehicle_rate_id, @base_rate, 0, 0, 0);

    SET @estimate_id = SCOPE_IDENTITY();

    --------------------------------------------------------
    -- 5. Insert Estimate_Charge rows (initial add-ons)
    --------------------------------------------------------
    INSERT INTO Finance.Estimate_Charge (charge_rate_id, estimate_id, charge_quantity)
    SELECT 
        rc.charge_rate_id,
        @estimate_id,
        rc.quantity
    FROM Rental.Reservation_Charge rc
    WHERE rc.reservation_id = @reservation_id;

    --------------------------------------------------------
    -- 6. Insert Estimate_Tax rows
    --------------------------------------------------------
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

    --------------------------------------------------------
    -- 7. Insert Estimate_Promotion rows
    --------------------------------------------------------
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

    --------------------------------------------------------
    -- 8. Update totals in Rental_Estimate
    --------------------------------------------------------
    UPDATE Finance.Rental_Estimate
    SET
        surcharge_total = (
            SELECT COALESCE(SUM(cr.charge_unit_rate * ec.charge_quantity), 0)
            FROM Finance.Estimate_Charge ec
            JOIN Finance.Charge_Rate cr 
                ON ec.charge_rate_id = cr.charge_rate_id
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
        ),
        updated_at = GETDATE()
    WHERE estimate_id = @estimate_id;

END;
GO

--------------------------------------------------------
-- Trigger: Create Estimate After Reservation Insert
--------------------------------------------------------
CREATE OR ALTER TRIGGER Rental.tr_AfterInsert_RentalReservation
ON Rental.Reservation
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @reservation_id INT;

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

--------------------------------------------------------
-- Trigger: Update Estimate After Reservation Charge Insert
--------------------------------------------------------
CREATE OR ALTER TRIGGER Rental.trg_AfterInsert_ReservationCharge
ON Rental.Reservation_Charge
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @reservation_id INT;

    DECLARE inserted_cursor CURSOR FOR
        SELECT DISTINCT reservation_id
        FROM inserted;

    OPEN inserted_cursor;
    FETCH NEXT FROM inserted_cursor INTO @reservation_id;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        DECLARE @estimate_id INT;

        --------------------------------------------------------
        -- 1. Ensure estimate exists
        --------------------------------------------------------
        SELECT @estimate_id = estimate_id
        FROM Finance.Rental_Estimate
        WHERE reservation_id = @reservation_id;

        IF @estimate_id IS NULL
        BEGIN
            EXEC Finance.usp_CreateRentalEstimate @reservation_id;

            SELECT @estimate_id = estimate_id
            FROM Finance.Rental_Estimate
            WHERE reservation_id = @reservation_id;
        END

        --------------------------------------------------------
        -- 2. Insert missing Estimate_Charge rows
        --------------------------------------------------------
        INSERT INTO Finance.Estimate_Charge (charge_rate_id, estimate_id, charge_quantity)
        SELECT 
            i.charge_rate_id,
            @estimate_id,
            i.quantity
        FROM inserted i
        LEFT JOIN Finance.Estimate_Charge ec
            ON ec.charge_rate_id = i.charge_rate_id
            AND ec.estimate_id = @estimate_id
        WHERE i.reservation_id = @reservation_id
          AND ec.charge_rate_id IS NULL;

        --------------------------------------------------------
        -- 3. Update surcharge_total
        --------------------------------------------------------
        UPDATE Finance.Rental_Estimate
        SET 
            surcharge_total = (
                SELECT COALESCE(SUM(cr.charge_unit_rate * rc.quantity), 0)
                FROM Rental.Reservation_Charge rc
                JOIN Finance.Charge_Rate cr 
                     ON rc.charge_rate_id = cr.charge_rate_id
                WHERE rc.reservation_id = @reservation_id
            ),
            updated_at = GETDATE()
        WHERE estimate_id = @estimate_id;

        --------------------------------------------------------
        -- 4. Update tax and discount totals
        --------------------------------------------------------
        UPDATE Finance.Rental_Estimate
        SET 
            tax_total = (
                SELECT COALESCE(SUM(et.tax_amount), 0)
                FROM Finance.Estimate_Tax et
                WHERE et.estimate_id = @estimate_id
            ),
            discount_total = (
                SELECT COALESCE(SUM(ep.discount_amount), 0)
                FROM Finance.Estimate_Promotion ep
                WHERE ep.estimate_id = @estimate_id
            )
        WHERE estimate_id = @estimate_id;

        FETCH NEXT FROM inserted_cursor INTO @reservation_id;
    END

    CLOSE inserted_cursor;
    DEALLOCATE inserted_cursor;
END;
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
    terms_acknowledged BIT NOT NULL DEFAULT 0,
    terms_acknowledged_date DATETIME NULL,
    requires_manager_approval BIT NOT NULL DEFAULT 0,
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


------------------------------------------------------------
-- Stored Procedure: usp_FinalizeRental
-- Purpose: Calculates and updates final rental total
-- Logic: estimate + extra charges + deposit
------------------------------------------------------------
CREATE OR ALTER PROCEDURE Rental.usp_FinalizeRental
    @rental_id INT,
    @rental_end DATETIME
AS
BEGIN
    SET NOCOUNT ON;

    --------------------------------------------------------
    -- Declare variables
    --------------------------------------------------------
    DECLARE 
        @reservation_id INT,
        @base_estimate DECIMAL(10,2),
        @extra_charges DECIMAL(10,2),
        @security_deposit DECIMAL(10,2) = 300.00,
        @final_total DECIMAL(10,2);

    --------------------------------------------------------
    -- 1️ Get reservation_id for this rental
    --------------------------------------------------------
    SELECT @reservation_id = reservation_id
    FROM Rental.Rental
    WHERE rental_id = @rental_id;

    --------------------------------------------------------
    -- 2️ Get total_estimate from Finance.Rental_Estimate
    --------------------------------------------------------
    SELECT @base_estimate = ISNULL(total_estimate, 0)
    FROM Finance.Rental_Estimate
    WHERE reservation_id = @reservation_id;

    --------------------------------------------------------
    -- 3️ Sum all actual charges for this rental
    --------------------------------------------------------
    SELECT 
        @extra_charges = ISNULL(SUM(cr.charge_unit_rate * d.charge_quantity), 0)
    FROM Finance.Rental_Charge_Detail d
    JOIN Finance.Charge_Rate cr 
        ON d.charge_rate_id = cr.charge_rate_id
    WHERE d.rental_id = @rental_id;

    --------------------------------------------------------
    -- 4️ Calculate final total
    --------------------------------------------------------
    SET @final_total = ROUND(@base_estimate + @extra_charges + @security_deposit, 2);

    --------------------------------------------------------
    -- 5️ Update Rental table with final total and status
    --------------------------------------------------------
    UPDATE Rental.Rental
    SET 
        rental_end = @rental_end,
        rental_total = @final_total,
        rental_status = 'Completed',
        updated_at = GETDATE()
    WHERE rental_id = @rental_id;

END;
GO

------------------------------------------------------------
-- Trigger: trg_FinalizeRental_AfterStatusChange
-- Purpose: Automatically run usp_FinalizeRental 
--          when rental_status changes to 'Completed'
------------------------------------------------------------
CREATE OR ALTER TRIGGER Rental.trg_FinalizeRental_AfterStatusChange
ON Rental.Rental
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    --------------------------------------------------------
    -- Only run if status is set to 'Completed'
    --------------------------------------------------------
    IF NOT EXISTS (
        SELECT 1
        FROM inserted i
        WHERE i.rental_status = 'Completed'
    )
        RETURN;

    --------------------------------------------------------
    -- Loop through all rows that were updated to Completed
    --------------------------------------------------------
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

-------------------------------------------------------
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
-- Date: 2025-11-12
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

-------------------------------------------------------
-- Create Employee_Role Table under Operation Schema
--------------------------------------------------------
CREATE TABLE Operation.Employee_Role (
    employee_role_id INT IDENTITY(1,1) PRIMARY KEY,
    role VARCHAR(50) NOT NULL,
    access_level VARCHAR(20) NULL CHECK (access_level IN ('Admin','Manager','Staff','Limited'))
);
GO


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

-------------------------------------------------------
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
-- Vehicle.Inspection Table
--------------------------------------------------------
CREATE TABLE Vehicle.Inspection (
    inspection_id INT IDENTITY(1,1) PRIMARY KEY,
    employee_id INT NOT NULL,
    vehicle_id INT NOT NULL,
    rental_id INT NULL,  -- linked to Rental.Rental once data available
    inspection_date DATETIME NOT NULL,
    inspection_type VARCHAR(4) NOT NULL CHECK (inspection_type IN ('Pre','Post')),
    inspection_mileage DECIMAL(10,2) NOT NULL,
    fuel_level DECIMAL(5,2) NULL,  -- as percentage 0-100
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
-- Create Vehicle.Maintenance_Record Table
--------------------------------------------------------
CREATE TABLE Vehicle.Maintenance_Record (
    maintenance_id INT IDENTITY(1,1) PRIMARY KEY,
    vehicle_id INT NOT NULL,
    requested_by_employee_id INT NULL,
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

    CONSTRAINT FK_Maintenance_Employee 
        FOREIGN KEY (requested_by_employee_id) 
        REFERENCES Operation.Employee(employee_id)
        ON DELETE NO ACTION ON UPDATE CASCADE,

    CONSTRAINT CK_Maintenance_DueDate CHECK (
        next_due_date IS NULL OR next_due_date > maintenance_date
    )
);
GO

--------------------------------------------------------
-- Create Vehicle.Maintenance_Request Table
--------------------------------------------------------
CREATE TABLE Vehicle.Maintenance_Request (
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

    CONSTRAINT FK_MR_Maintenance 
        FOREIGN KEY (maintenance_id) 
        REFERENCES Vehicle.Maintenance_Record(maintenance_id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE,

    CONSTRAINT FK_MR_Inspection 
        FOREIGN KEY (inspection_id) 
        REFERENCES Vehicle.Inspection(inspection_id)
        ON DELETE NO ACTION     
        ON UPDATE NO ACTION
);
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
-- Create Operation.User Table
--------------------------------------------------------
CREATE TABLE Operation.[User] (
    user_id INT IDENTITY(1,1) PRIMARY KEY,
    employee_id INT NOT NULL UNIQUE,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    account_status VARCHAR(20) NOT NULL CHECK (account_status IN ('Active','Suspended','Disabled')),
    created_at DATETIME NOT NULL DEFAULT GETDATE(),

    CONSTRAINT FK_User_Employee 
        FOREIGN KEY (employee_id) 
        REFERENCES Operation.Employee(employee_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);
GO

-- Create a Vehicle Transfer table to track the vehicle movement from one branch to another.

CREATE TABLE Vehicle.Vehicle_Transfer (
   transfer_id INT IDENTITY(1,1) PRIMARY KEY,
   vehicle_id INT NOT NULL,
   from_branch_id INT NOT NULL,
   to_branch_id INT NOT NULL,
   transfer_date DATETIME NOT NULL DEFAULT GETDATE(),
   transfer_reason VARCHAR(50) NOT NULL,
   transfer_status VARCHAR(20) NOT NULL DEFAULT 'Pending',
   completed_date DATETIME NULL,


   CONSTRAINT FK_Transfer_Vehicle
       FOREIGN KEY (vehicle_id)
       REFERENCES Vehicle.Vehicle(vehicle_id),


   CONSTRAINT FK_Transfer_FromBranch
       FOREIGN KEY (from_branch_id)
       REFERENCES Operation.Branch(branch_id),


   CONSTRAINT FK_Transfer_ToBranch
       FOREIGN KEY (to_branch_id)
       REFERENCES Operation.Branch(branch_id),


   CONSTRAINT CK_Transfer_Status
       CHECK (transfer_status IN ('Pending','In Transit','Completed','Cancelled')),


   CONSTRAINT CK_Different_Branches
       CHECK (from_branch_id != to_branch_id)
);


