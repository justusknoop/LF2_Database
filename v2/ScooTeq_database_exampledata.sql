BEGIN;

------------------------------------------------------------
-- 1. Abteilungen
------------------------------------------------------------
INSERT INTO
    department (
        department_name,
        employee_count
    )
VALUES ('Geschäftsführung', 3),
    ('Entwicklung', 12),
    ('Marketing', 10),
    ('Vertrieb', 12),
    (
        'Human Resources und Finance',
        9
    );

------------------------------------------------------------
-- 2. Adressen (jede Person eigene Adresse, UUID via DEFAULT)
------------------------------------------------------------
INSERT INTO
    address (
        street,
        postal_code,
        city,
        country
    )
VALUES
    -- Geschäftsführung (3)
    (
        'Überseeallee 1',
        '20457',
        'Hamburg',
        'Deutschland'
    ),
    (
        'Überseeallee 2',
        '20457',
        'Hamburg',
        'Deutschland'
    ),
    (
        'Überseeallee 3',
        '20457',
        'Hamburg',
        'Deutschland'
    ),

-- Entwicklung (12)
(
    'Werkstraße 10',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Werkstraße 11',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Werkstraße 12',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Werkstraße 13',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Werkstraße 14',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Werkstraße 15',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Werkstraße 16',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Werkstraße 17',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Werkstraße 18',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Werkstraße 19',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Werkstraße 20',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Werkstraße 21',
    '20457',
    'Hamburg',
    'Deutschland'
),

-- Marketing (10)
(
    'Medienweg 1',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Medienweg 2',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Medienweg 3',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Medienweg 4',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Medienweg 5',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Medienweg 6',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Medienweg 7',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Medienweg 8',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Medienweg 9',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Medienweg 10',
    '20457',
    'Hamburg',
    'Deutschland'
),

-- Vertrieb (12)
(
    'Salespark 1',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Salespark 2',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Salespark 3',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Salespark 4',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Salespark 5',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Salespark 6',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Salespark 7',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Salespark 8',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Salespark 9',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Salespark 10',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Salespark 11',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Salespark 12',
    '20457',
    'Hamburg',
    'Deutschland'
),

-- Human Resources und Finance (9)
(
    'Financeplatz 1',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Financeplatz 2',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Financeplatz 3',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Financeplatz 4',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Financeplatz 5',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Financeplatz 6',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Financeplatz 7',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Financeplatz 8',
    '20457',
    'Hamburg',
    'Deutschland'
),
(
    'Financeplatz 9',
    '20457',
    'Hamburg',
    'Deutschland'
);

------------------------------------------------------------
-- 3. Mitarbeiter:innen (address_id wird über Adresse gesucht)
------------------------------------------------------------
INSERT INTO
    employee (
        department_id,
        address_id,
        first_name,
        last_name
    )
VALUES
    -- Geschäftsführung (3)
    (
        (
            SELECT department_id
            FROM department
            WHERE
                department_name = 'Geschäftsführung'
        ),
        (
            SELECT address_id
            FROM address
            WHERE
                street = 'Überseeallee 1'
                AND postal_code = '20457'
                AND city = 'Hamburg'
        ),
        'Ana',
        'Rodarte'
    ),
    (
        (
            SELECT department_id
            FROM department
            WHERE
                department_name = 'Geschäftsführung'
        ),
        (
            SELECT address_id
            FROM address
            WHERE
                street = 'Überseeallee 2'
                AND postal_code = '20457'
                AND city = 'Hamburg'
        ),
        'Lukas',
        'Meier'
    ),
    (
        (
            SELECT department_id
            FROM department
            WHERE
                department_name = 'Geschäftsführung'
        ),
        (
            SELECT address_id
            FROM address
            WHERE
                street = 'Überseeallee 3'
                AND postal_code = '20457'
                AND city = 'Hamburg'
        ),
        'Sophie',
        'Klein'
    ),

-- Entwicklung (12)
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Entwicklung'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Werkstraße 10'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Jonas',
    'Weber'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Entwicklung'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Werkstraße 11'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Marie',
    'Schröder'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Entwicklung'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Werkstraße 12'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Leon',
    'Fischer'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Entwicklung'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Werkstraße 13'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Laura',
    'Hofmann'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Entwicklung'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Werkstraße 14'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Felix',
    'Bauer'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Entwicklung'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Werkstraße 15'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Hannah',
    'Krüger'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Entwicklung'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Werkstraße 16'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Daniel',
    'Vogel'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Entwicklung'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Werkstraße 17'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Nina',
    'Werner'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Entwicklung'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Werkstraße 18'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Paul',
    'Richter'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Entwicklung'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Werkstraße 19'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Jana',
    'Albrecht'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Entwicklung'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Werkstraße 20'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Tobias',
    'Schmid'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Entwicklung'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Werkstraße 21'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Lisa',
    'König'
),

-- Marketing (10)
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Marketing'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Medienweg 1'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Tim',
    'Berger'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Marketing'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Medienweg 2'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Clara',
    'Neumann'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Marketing'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Medienweg 3'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Max',
    'Hoffmann'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Marketing'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Medienweg 4'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Julia',
    'Brandt'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Marketing'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Medienweg 5'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Simon',
    'Keller'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Marketing'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Medienweg 6'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Lara',
    'Busch'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Marketing'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Medienweg 7'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Erik',
    'Wolf'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Marketing'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Medienweg 8'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Mia',
    'Lorenz'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Marketing'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Medienweg 9'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Nico',
    'Schäfer'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Marketing'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Medienweg 10'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Sarah',
    'Lindner'
),

-- Vertrieb (12)
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Vertrieb'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Salespark 1'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Oliver',
    'Peters'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Vertrieb'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Salespark 2'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Katharina',
    'Sommer'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Vertrieb'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Salespark 3'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Dennis',
    'Frank'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Vertrieb'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Salespark 4'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Vanessa',
    'Roth'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Vertrieb'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Salespark 5'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Patrick',
    'Lang'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Vertrieb'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Salespark 6'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Jana',
    'Schulz'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Vertrieb'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Salespark 7'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Markus',
    'Braun'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Vertrieb'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Salespark 8'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Lea',
    'Hartmann'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Vertrieb'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Salespark 9'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Florian',
    'König'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Vertrieb'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Salespark 10'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Anna',
    'Weiß'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Vertrieb'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Salespark 11'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Sebastian',
    'Günther'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Vertrieb'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Salespark 12'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Nicole',
    'Herzog'
),

-- Human Resources und Finance (9)
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Human Resources und Finance'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Financeplatz 1'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Martin',
    'Engel'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Human Resources und Finance'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Financeplatz 2'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Lisa',
    'Vogt'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Human Resources und Finance'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Financeplatz 3'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Sandra',
    'Kruse'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Human Resources und Finance'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Financeplatz 4'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Stefan',
    'Maurer'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Human Resources und Finance'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Financeplatz 5'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Kathrin',
    'Diehl'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Human Resources und Finance'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Financeplatz 6'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Tobias',
    'Arnold'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Human Resources und Finance'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Financeplatz 7'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Melanie',
    'Hahn'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Human Resources und Finance'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Financeplatz 8'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Julian',
    'Fuchs'
),
(
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Human Resources und Finance'
    ),
    (
        SELECT address_id
        FROM address
        WHERE
            street = 'Financeplatz 9'
            AND postal_code = '20457'
            AND city = 'Hamburg'
    ),
    'Theresa',
    'Böhm'
);

------------------------------------------------------------
-- SpecsProfile – Geräteprofile für das Szenario
------------------------------------------------------------
INSERT INTO
    specs_profile (
        manufacturer,
        model_name,
        device_type,
        name, -- Profilname
        storage_gb,
        storage_type,
        ram_gb,
        cpu_model,
        cpu_cores,
        gpu_model,
        screen_size_inch,
        resolution,
        is_portable,
        os_name,
        os_version,
        warranty_months,
        power_usage_watt,
        notes
    )
VALUES
    -- Geschäftsführung: Desktop + Monitor + Konferenz-PC
    (
        'EcoTech',
        'Eco Executive Desktop',
        'Desktop',
        'GF-Desktop-Standard',
        1024,
        'NVMe SSD',
        32,
        'Intel Core i7-14700',
        16,
        'Intel Iris Xe',
        NULL,
        NULL,
        FALSE,
        'Windows 11 Pro',
        '23H2',
        36,
        120,
        'Leiser, energieeffizienter Management-Desktop'
    ),
    (
        'ViewBright',
        'VB Executive QHD 27"',
        'Monitor',
        'GF-Monitor-27-QHD',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        27.0,
        '2560x1440',
        FALSE,
        NULL,
        NULL,
        24,
        40,
        'Rahmenloses Design für Management-Büros'
    ),
    (
        'EcoTech',
        'Conference Room PC 2024',
        'Desktop',
        'GF-Konferenz-PC',
        512,
        'SSD',
        16,
        'Intel Core i5-13500',
        12,
        'Intel UHD Graphics',
        NULL,
        NULL,
        FALSE,
        'Windows 11 Pro',
        '23H2',
        36,
        95,
        'PC für Konferenzräume mit Multimonitor-Setup'
    ),

-- Entwicklung: Tower-Workstation + Mobile Workstation
(
    'ComputeMax',
    'CMX Dev Tower X1',
    'Desktop',
    'DEV-Workstation-Tower',
    2048,
    'NVMe SSD',
    64,
    'AMD Ryzen 9 7950X',
    16,
    'NVIDIA RTX 4080',
    NULL,
    NULL,
    FALSE,
    'Windows 11 Pro',
    '23H2',
    36,
    350,
    'High-End-Workstation für CAD/Simulation'
),
(
    'ComputeMax',
    'CMX Dev Mobile 15"',
    'Laptop',
    'DEV-Mobile-Workstation',
    1024,
    'NVMe SSD',
    32,
    'Intel Core i9-14900H',
    14,
    'NVIDIA RTX 4070 Mobile',
    15.6,
    '2560x1600',
    TRUE,
    'Windows 11 Pro',
    '23H2',
    36,
    120,
    'Leistungsstarker mobiler Rechner für Entwicklung'
),

-- Marketing: 4K-Workstation + Ultrabook + WebDev-RGB
(
    'RenderBox',
    'RBX 4K Creator',
    'Desktop',
    'MKT-4K-Workstation',
    4096,
    'NVMe SSD',
    64,
    'Intel Core i9-14900K',
    24,
    'NVIDIA RTX 4090',
    27.0,
    '3840x2160',
    FALSE,
    'Windows 11 Pro',
    '23H2',
    36,
    450,
    'Optimiert für 4K-Video-Editing und Rendering'
),
(
    'GreenLeaf',
    'GLF Ultrabook 14 Pro',
    'Laptop',
    'MKT-Ultrabook',
    512,
    'NVMe SSD',
    16,
    'Intel Core i7-1360P',
    12,
    'Intel Iris Xe',
    14.0,
    '1920x1200',
    TRUE,
    'Windows 11 Pro',
    '23H2',
    36,
    65,
    'Leichtes Kreativ-Notebook fürs Marketing'
),
(
    'GameBox',
    'GBX Dev RGB Station',
    'Desktop',
    'MKT-Webdev-RGB',
    1024,
    'NVMe SSD',
    32,
    'AMD Ryzen 7 7800X3D',
    8,
    'NVIDIA RTX 4070',
    27.0,
    '2560x1440',
    FALSE,
    'Windows 11 Pro',
    '23H2',
    36,
    320,
    'Webentwickler-Workstation mit RGB-Beleuchtung'
),

-- Vertrieb: mobiles Greentech-Notebook
(
    'GreenLeaf',
    'GLF Sales 14 Eco',
    'Laptop',
    'SAL-Ultrabook',
    512,
    'NVMe SSD',
    16,
    'Intel Core i7-1355U',
    10,
    'Intel Iris Xe',
    14.0,
    '1920x1200',
    TRUE,
    'Windows 11 Pro',
    '23H2',
    36,
    55,
    'Energieeffizientes Vertriebs-Notebook'
),

-- HR & Finance: Workstation + Office-Monitor
(
    'DataCore',
    'DCR Finance Station',
    'Desktop',
    'HRF-Data-Workstation',
    4096,
    'NVMe SSD',
    64,
    'Intel Xeon W-2375',
    24,
    'NVIDIA RTX A2000',
    NULL,
    NULL,
    FALSE,
    'Windows 11 Pro',
    '23H2',
    36,
    300,
    'Workstation für Buchhaltung und Controlling'
),
(
    'ViewBright',
    'VB Office 24"',
    'Monitor',
    'HRF-Office-Monitor-24',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    24.0,
    '1920x1080',
    FALSE,
    NULL,
    NULL,
    36,
    35,
    'Standard-Büromonitor für Dual-Screen in HR/Finance'
);

------------------------------------------------------------
-- Devices – konkrete Gerätezuordnung
------------------------------------------------------------

-- 1. Geschäftsführung
INSERT INTO
    device (
        last_maintenance_date,
        serial_number,
        purchase_date,
        employee_id,
        department_id,
        specs_id
    )
VALUES
    -- Ana: Desktop + 2 Monitore
    (
        '2025-01-10',
        'SN-ECT-GF-0001',
        '2024-12-15',
        (
            SELECT e.employee_id
            FROM employee e
                JOIN department d ON d.department_id = e.department_id
            WHERE
                e.first_name = 'Ana'
                AND e.last_name = 'Rodarte'
                AND d.department_name = 'Geschäftsführung'
        ),
        (
            SELECT department_id
            FROM department
            WHERE
                department_name = 'Geschäftsführung'
        ),
        (
            SELECT specs_id
            FROM specs_profile
            WHERE
                name = 'GF-Desktop-Standard'
        )
    ),
    (
        '2025-01-10',
        'SN-VBR-GF-0101',
        '2024-12-15',
        (
            SELECT e.employee_id
            FROM employee e
                JOIN department d ON d.department_id = e.department_id
            WHERE
                e.first_name = 'Ana'
                AND e.last_name = 'Rodarte'
                AND d.department_name = 'Geschäftsführung'
        ),
        (
            SELECT department_id
            FROM department
            WHERE
                department_name = 'Geschäftsführung'
        ),
        (
            SELECT specs_id
            FROM specs_profile
            WHERE
                name = 'GF-Monitor-27-QHD'
        )
    ),
    (
        '2025-01-10',
        'SN-VBR-GF-0102',
        '2024-12-15',
        (
            SELECT e.employee_id
            FROM employee e
                JOIN department d ON d.department_id = e.department_id
            WHERE
                e.first_name = 'Ana'
                AND e.last_name = 'Rodarte'
                AND d.department_name = 'Geschäftsführung'
        ),
        (
            SELECT department_id
            FROM department
            WHERE
                department_name = 'Geschäftsführung'
        ),
        (
            SELECT specs_id
            FROM specs_profile
            WHERE
                name = 'GF-Monitor-27-QHD'
        )
    ),

-- Lukas & Sophie: je ein Ultrabook (Marketing-Profil wiederverwendet)
(
    '2025-01-12',
    'SN-GLF-GF-0201',
    '2024-12-20',
    (
        SELECT e.employee_id
        FROM employee e
            JOIN department d ON d.department_id = e.department_id
        WHERE
            e.first_name = 'Lukas'
            AND e.last_name = 'Meier'
            AND d.department_name = 'Geschäftsführung'
    ),
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Geschäftsführung'
    ),
    (
        SELECT specs_id
        FROM specs_profile
        WHERE
            name = 'MKT-Ultrabook'
    )
),
(
    '2025-01-12',
    'SN-GLF-GF-0202',
    '2024-12-20',
    (
        SELECT e.employee_id
        FROM employee e
            JOIN department d ON d.department_id = e.department_id
        WHERE
            e.first_name = 'Sophie'
            AND e.last_name = 'Klein'
            AND d.department_name = 'Geschäftsführung'
    ),
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Geschäftsführung'
    ),
    (
        SELECT specs_id
        FROM specs_profile
        WHERE
            name = 'MKT-Ultrabook'
    )
),

-- Konferenzraum-PC + Monitor (ohne festen Mitarbeiter)
(
    '2025-01-05',
    'SN-ECT-GF-0301',
    '2024-12-10',
    NULL,
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Geschäftsführung'
    ),
    (
        SELECT specs_id
        FROM specs_profile
        WHERE
            name = 'GF-Konferenz-PC'
    )
),
(
    '2025-01-05',
    'SN-VBR-GF-0301',
    '2024-12-10',
    NULL,
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Geschäftsführung'
    ),
    (
        SELECT specs_id
        FROM specs_profile
        WHERE
            name = 'GF-Monitor-27-QHD'
    )
);

-- 2. Entwicklung – 2 Notebooks + 2 Tower + 1 shared Tower
INSERT INTO
    device (
        last_maintenance_date,
        serial_number,
        purchase_date,
        employee_id,
        department_id,
        specs_id
    )
VALUES
    -- Mobile Workstations
    (
        '2025-01-08',
        'SN-CMX-DEV-NB-0001',
        '2024-11-30',
        (
            SELECT e.employee_id
            FROM employee e
                JOIN department d ON d.department_id = e.department_id
            WHERE
                e.first_name = 'Jonas'
                AND e.last_name = 'Weber'
                AND d.department_name = 'Entwicklung'
        ),
        (
            SELECT department_id
            FROM department
            WHERE
                department_name = 'Entwicklung'
        ),
        (
            SELECT specs_id
            FROM specs_profile
            WHERE
                name = 'DEV-Mobile-Workstation'
        )
    ),
    (
        '2025-01-08',
        'SN-CMX-DEV-NB-0002',
        '2024-11-30',
        (
            SELECT e.employee_id
            FROM employee e
                JOIN department d ON d.department_id = e.department_id
            WHERE
                e.first_name = 'Marie'
                AND e.last_name = 'Schröder'
                AND d.department_name = 'Entwicklung'
        ),
        (
            SELECT department_id
            FROM department
            WHERE
                department_name = 'Entwicklung'
        ),
        (
            SELECT specs_id
            FROM specs_profile
            WHERE
                name = 'DEV-Mobile-Workstation'
        )
    ),

-- Tower-Workstations
(
    '2025-01-09',
    'SN-CMX-DEV-WS-0001',
    '2024-11-25',
    (
        SELECT e.employee_id
        FROM employee e
            JOIN department d ON d.department_id = e.department_id
        WHERE
            e.first_name = 'Felix'
            AND e.last_name = 'Bauer'
            AND d.department_name = 'Entwicklung'
    ),
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Entwicklung'
    ),
    (
        SELECT specs_id
        FROM specs_profile
        WHERE
            name = 'DEV-Workstation-Tower'
    )
),
(
    '2025-01-09',
    'SN-CMX-DEV-WS-0002',
    '2024-11-25',
    (
        SELECT e.employee_id
        FROM employee e
            JOIN department d ON d.department_id = e.department_id
        WHERE
            e.first_name = 'Hannah'
            AND e.last_name = 'Krüger'
            AND d.department_name = 'Entwicklung'
    ),
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Entwicklung'
    ),
    (
        SELECT specs_id
        FROM specs_profile
        WHERE
            name = 'DEV-Workstation-Tower'
    )
),

-- Shared Tower im Labor (kein Mitarbeiter zugeordnet)
(
    '2025-01-09',
    'SN-CMX-DEV-WS-0099',
    '2024-11-25',
    NULL,
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Entwicklung'
    ),
    (
        SELECT specs_id
        FROM specs_profile
        WHERE
            name = 'DEV-Workstation-Tower'
    )
);

-- 3. Marketing – 4K-Workstation, WebDev-RGB, Ultrabooks
INSERT INTO
    device (
        last_maintenance_date,
        serial_number,
        purchase_date,
        employee_id,
        department_id,
        specs_id
    )
VALUES
    -- 4K-Workstation + Monitor für Tim
    (
        '2025-01-11',
        'SN-RBX-MKT-4K-0001',
        '2024-12-05',
        (
            SELECT e.employee_id
            FROM employee e
                JOIN department d ON d.department_id = e.department_id
            WHERE
                e.first_name = 'Tim'
                AND e.last_name = 'Berger'
                AND d.department_name = 'Marketing'
        ),
        (
            SELECT department_id
            FROM department
            WHERE
                department_name = 'Marketing'
        ),
        (
            SELECT specs_id
            FROM specs_profile
            WHERE
                name = 'MKT-4K-Workstation'
        )
    ),

-- WebDev-RGB für Erik
(
    '2025-01-11',
    'SN-GBX-MKT-RGB-0001',
    '2024-12-05',
    (
        SELECT e.employee_id
        FROM employee e
            JOIN department d ON d.department_id = e.department_id
        WHERE
            e.first_name = 'Erik'
            AND e.last_name = 'Wolf'
            AND d.department_name = 'Marketing'
    ),
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Marketing'
    ),
    (
        SELECT specs_id
        FROM specs_profile
        WHERE
            name = 'MKT-Webdev-RGB'
    )
),

-- Ultrabooks für Nico und Sarah
(
    '2025-01-11',
    'SN-GLF-MKT-NB-0001',
    '2024-12-05',
    (
        SELECT e.employee_id
        FROM employee e
            JOIN department d ON d.department_id = e.department_id
        WHERE
            e.first_name = 'Nico'
            AND e.last_name = 'Schäfer'
            AND d.department_name = 'Marketing'
    ),
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Marketing'
    ),
    (
        SELECT specs_id
        FROM specs_profile
        WHERE
            name = 'MKT-Ultrabook'
    )
),
(
    '2025-01-11',
    'SN-GLF-MKT-NB-0002',
    '2024-12-05',
    (
        SELECT e.employee_id
        FROM employee e
            JOIN department d ON d.department_id = e.department_id
        WHERE
            e.first_name = 'Sarah'
            AND e.last_name = 'Lindner'
            AND d.department_name = 'Marketing'
    ),
    (
        SELECT department_id
        FROM department
        WHERE
            department_name = 'Marketing'
    ),
    (
        SELECT specs_id
        FROM specs_profile
        WHERE
            name = 'MKT-Ultrabook'
    )
);

-- 4. Vertrieb – Sales-Ultrabooks
INSERT INTO
    device (
        last_maintenance_date,
        serial_number,
        purchase_date,
        employee_id,
        department_id,
        specs_id
    )
VALUES (
        '2025-01-13',
        'SN-GLF-SAL-NB-0001',
        '2024-12-10',
        (
            SELECT e.employee_id
            FROM employee e
                JOIN department d ON d.department_id = e.department_id
            WHERE
                e.first_name = 'Oliver'
                AND e.last_name = 'Peters'
                AND d.department_name = 'Vertrieb'
        ),
        (
            SELECT department_id
            FROM department
            WHERE
                department_name = 'Vertrieb'
        ),
        (
            SELECT specs_id
            FROM specs_profile
            WHERE
                name = 'SAL-Ultrabook'
        )
    ),
    (
        '2025-01-13',
        'SN-GLF-SAL-NB-0002',
        '2024-12-10',
        (
            SELECT e.employee_id
            FROM employee e
                JOIN department d ON d.department_id = e.department_id
            WHERE
                e.first_name = 'Katharina'
                AND e.last_name = 'Sommer'
                AND d.department_name = 'Vertrieb'
        ),
        (
            SELECT department_id
            FROM department
            WHERE
                department_name = 'Vertrieb'
        ),
        (
            SELECT specs_id
            FROM specs_profile
            WHERE
                name = 'SAL-Ultrabook'
        )
    );

-- 5. HR & Finance – Workstation + 2 Monitore für Martin
INSERT INTO
    device (
        last_maintenance_date,
        serial_number,
        purchase_date,
        employee_id,
        department_id,
        specs_id
    )
VALUES (
        '2025-01-14',
        'SN-DCR-HRF-WS-0001',
        '2024-12-01',
        (
            SELECT e.employee_id
            FROM employee e
                JOIN department d ON d.department_id = e.department_id
            WHERE
                e.first_name = 'Martin'
                AND e.last_name = 'Engel'
                AND d.department_name = 'Human Resources und Finance'
        ),
        (
            SELECT department_id
            FROM department
            WHERE
                department_name = 'Human Resources und Finance'
        ),
        (
            SELECT specs_id
            FROM specs_profile
            WHERE
                name = 'HRF-Data-Workstation'
        )
    ),
    (
        '2025-01-14',
        'SN-VBR-HRF-MON-0001',
        '2024-12-01',
        (
            SELECT e.employee_id
            FROM employee e
                JOIN department d ON d.department_id = e.department_id
            WHERE
                e.first_name = 'Martin'
                AND e.last_name = 'Engel'
                AND d.department_name = 'Human Resources und Finance'
        ),
        (
            SELECT department_id
            FROM department
            WHERE
                department_name = 'Human Resources und Finance'
        ),
        (
            SELECT specs_id
            FROM specs_profile
            WHERE
                name = 'HRF-Office-Monitor-24'
        )
    ),
    (
        '2025-01-14',
        'SN-VBR-HRF-MON-0002',
        '2024-12-01',
        (
            SELECT e.employee_id
            FROM employee e
                JOIN department d ON d.department_id = e.department_id
            WHERE
                e.first_name = 'Martin'
                AND e.last_name = 'Engel'
                AND d.department_name = 'Human Resources und Finance'
        ),
        (
            SELECT department_id
            FROM department
            WHERE
                department_name = 'Human Resources und Finance'
        ),
        (
            SELECT specs_id
            FROM specs_profile
            WHERE
                name = 'HRF-Office-Monitor-24'
        )
    );

COMMIT;