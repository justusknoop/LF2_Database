-- ======================================
-- Tabelle: department
-- ======================================
CREATE TABLE department (
    department_id      INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    department_name    VARCHAR(100) NOT NULL,
    employee_count     INTEGER NOT NULL DEFAULT 0
);

-- ======================================
-- Tabelle: employee
-- Beziehung: department 1:N employee
-- ======================================
CREATE TABLE employee (
    employee_id   INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    department_id INTEGER NOT NULL,
    first_name    VARCHAR(100) NOT NULL,
    last_name     VARCHAR(100) NOT NULL,
    address       TEXT,

    CONSTRAINT fk_employee_department
        FOREIGN KEY (department_id)
        REFERENCES department(department_id)
);

-- ======================================
-- Tabelle: specs_profile
-- Beziehung: specs_profile 1:N device
-- ======================================
CREATE TABLE specs_profile (
    specs_id          INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    manufacturer      VARCHAR(100) NOT NULL,
    device_type       VARCHAR(50)  NOT NULL,  -- z.B. 'Laptop', 'Monitor', 'Printer'
    name              VARCHAR(100) NOT NULL,  -- Modellbezeichnung

    -- Von dir vorgegeben:
    storage_gb        INTEGER,               -- z.B. 512
    storage_type      VARCHAR(20),           -- z.B. 'SSD', 'HDD', 'NVMe'

    -- Sinnvolle Ergänzungen für Endgeräte (Laptops, Monitore, Drucker etc.):
    ram_gb            INTEGER,               -- Arbeitsspeicher
    cpu_model         VARCHAR(100),          -- z.B. "Intel Core i7-1360P"
    cpu_cores         INTEGER,
    gpu_model         VARCHAR(100),
    screen_size_inch  NUMERIC(4,1),          -- z.B. 27.0 für Monitore / Laptops
    resolution        VARCHAR(50),           -- z.B. "1920x1080", "3840x2160"
    is_portable       BOOLEAN DEFAULT FALSE, -- Laptops/Tablets = TRUE, Monitore/Drucker = FALSE
    os_name           VARCHAR(100),          -- z.B. "Windows 11 Pro", "Ubuntu", "macOS"
    os_version        VARCHAR(50),
    warranty_months   INTEGER,               -- Garantiedauer
    power_usage_watt  INTEGER,               -- typische Leistungsaufnahme
    notes             TEXT                   -- Freitext für Besonderheiten
);

-- ======================================
-- Tabelle: device
-- Beziehungen:
-- employee 1:N device
-- department 1:N device
-- specs_profile 1:N device
-- ======================================
CREATE TABLE device (
    device_id             INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    last_maintenance_date DATE,
    serial_number         VARCHAR(100) NOT NULL UNIQUE,
    purchase_date         DATE,

    employee_id           INTEGER,
    department_id         INTEGER,
    specs_id              INTEGER NOT NULL,

    CONSTRAINT fk_device_employee
        FOREIGN KEY (employee_id)
        REFERENCES employee(employee_id),

    CONSTRAINT fk_device_department
        FOREIGN KEY (department_id)
        REFERENCES department(department_id),

    CONSTRAINT fk_device_specs
        FOREIGN KEY (specs_id)
        REFERENCES specs_profile(specs_id)
);
