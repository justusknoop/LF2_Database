--- ======================================
-- Erstellung von Tables in POSTGRESQL
--- ======================================
--  author: Justus Knoop
--  date:   2025-11-20
--- ======================================

-- ======================================
-- 0. Datenbank anlegen
-- ======================================
-- CREATE DATABASE it_asset_management;

-- ======================================
-- 1. Extension für UUID-Generierung
-- ======================================
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- ======================================
-- 2. Trigger-Funktion für updated_at
-- ======================================
CREATE OR REPLACE FUNCTION set_updated_at()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- ======================================
-- 3. Tabellen
-- ======================================

-- Tabelle: department
CREATE TABLE department (
    department_id UUID PRIMARY KEY DEFAULT gen_random_uuid (),
    department_name VARCHAR(100) NOT NULL,
    employee_count INTEGER NOT NULL DEFAULT 0,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Tabelle: employee (department 1:N employee)
CREATE TABLE employee (
    employee_id UUID PRIMARY KEY DEFAULT gen_random_uuid (),
    department_id UUID NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    address TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT fk_employee_department FOREIGN KEY (department_id) REFERENCES department (department_id)
);

-- Tabelle: specs_profile (specs_profile 1:N device)
CREATE TABLE specs_profile (
    specs_id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    manufacturer      VARCHAR(100) NOT NULL,
    device_type       VARCHAR(50)  NOT NULL,  -- z.B. 'Laptop', 'Monitor', 'Printer'
    name              VARCHAR(100) NOT NULL,  -- Modellbezeichnung

-- Von dir vorgegeben:
storage_gb INTEGER, -- z.B. 512
storage_type VARCHAR(20), -- z.B. 'SSD', 'HDD', 'NVMe'

-- Ergänzungen:

ram_gb            INTEGER,               -- Arbeitsspeicher
    cpu_model         VARCHAR(100),          -- z.B. "Intel Core i7-1360P"
    cpu_cores         INTEGER,
    gpu_model         VARCHAR(100),
    screen_size_inch  NUMERIC(4,1),          -- z.B. 27.0 für Monitore / Laptops
    resolution        VARCHAR(50),           -- z.B. "1920x1080", "3840x2160"
    is_portable       BOOLEAN DEFAULT FALSE, -- Laptops/Tablets = TRUE
    os_name           VARCHAR(100),          -- z.B. "Windows 11 Pro"
    os_version        VARCHAR(50),
    warranty_months   INTEGER,               -- Garantiedauer
    power_usage_watt  INTEGER,               -- typische Leistungsaufnahme
    notes             TEXT,                  -- Freitext

    created_at        TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at        TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Tabelle: device
-- employee 1:N device
-- department 1:N device
-- specs_profile 1:N device
CREATE TABLE device (
    device_id UUID PRIMARY KEY DEFAULT gen_random_uuid (),
    last_maintenance_date DATE,
    serial_number VARCHAR(100) NOT NULL UNIQUE,
    purchase_date DATE,
    employee_id UUID,
    department_id UUID,
    specs_id UUID NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT fk_device_employee FOREIGN KEY (employee_id) REFERENCES employee (employee_id),
    CONSTRAINT fk_device_department FOREIGN KEY (department_id) REFERENCES department (department_id),
    CONSTRAINT fk_device_specs FOREIGN KEY (specs_id) REFERENCES specs_profile (specs_id)
);

-- ======================================
-- 4. Trigger für updated_at
-- ======================================

-- department
CREATE TRIGGER trg_department_set_updated_at
BEFORE UPDATE ON department
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

-- employee
CREATE TRIGGER trg_employee_set_updated_at
BEFORE UPDATE ON employee
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

-- specs_profile
CREATE TRIGGER trg_specs_profile_set_updated_at
BEFORE UPDATE ON specs_profile
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

-- device
CREATE TRIGGER trg_device_set_updated_at
BEFORE UPDATE ON device
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();