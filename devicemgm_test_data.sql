BEGIN;

------------------------------------------------------------
-- 1. Abteilungen
------------------------------------------------------------
INSERT INTO department (department_name, employee_count) VALUES
    ('Geschäftsführung', 3),
    ('Entwicklung', 12),
    ('Marketing', 10),
    ('Vertrieb', 12),
    ('Human Resources und Finance', 9);

------------------------------------------------------------
-- 2. Mitarbeiter:innen
------------------------------------------------------------
INSERT INTO employee (department_id, first_name, last_name, address) VALUES
    -- Geschäftsführung (3)
    ((SELECT department_id FROM department WHERE department_name = 'Geschäftsführung'), 'Ana',      'Rodarte',  'Überseeallee 1, 20457 Hamburg (Hafencity)'),
    ((SELECT department_id FROM department WHERE department_name = 'Geschäftsführung'), 'Lukas',    'Meier',    'Überseeallee 2, 20457 Hamburg (Hafencity)'),
    ((SELECT department_id FROM department WHERE department_name = 'Geschäftsführung'), 'Sophie',   'Klein',    'Überseeallee 3, 20457 Hamburg (Hafencity)'),

    -- Entwicklung (12)
    ((SELECT department_id FROM department WHERE department_name = 'Entwicklung'), 'Jonas',   'Weber',     'Werkstraße 10, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Entwicklung'), 'Marie',   'Schröder',  'Werkstraße 11, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Entwicklung'), 'Leon',    'Fischer',   'Werkstraße 12, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Entwicklung'), 'Laura',   'Hofmann',   'Werkstraße 13, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Entwicklung'), 'Felix',   'Bauer',     'Werkstraße 14, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Entwicklung'), 'Hannah',  'Krüger',    'Werkstraße 15, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Entwicklung'), 'Daniel',  'Vogel',     'Werkstraße 16, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Entwicklung'), 'Nina',    'Werner',    'Werkstraße 17, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Entwicklung'), 'Paul',    'Richter',   'Werkstraße 18, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Entwicklung'), 'Jana',    'Albrecht',  'Werkstraße 19, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Entwicklung'), 'Tobias',  'Schmid',    'Werkstraße 20, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Entwicklung'), 'Lisa',    'König',     'Werkstraße 21, 20457 Hamburg'),

    -- Marketing (10)
    ((SELECT department_id FROM department WHERE department_name = 'Marketing'), 'Tim',     'Berger',   'Medienweg 1, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Marketing'), 'Clara',   'Neumann',  'Medienweg 2, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Marketing'), 'Max',     'Hoffmann', 'Medienweg 3, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Marketing'), 'Julia',   'Brandt',   'Medienweg 4, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Marketing'), 'Simon',   'Keller',   'Medienweg 5, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Marketing'), 'Lara',    'Busch',    'Medienweg 6, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Marketing'), 'Erik',    'Wolf',     'Medienweg 7, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Marketing'), 'Mia',     'Lorenz',   'Medienweg 8, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Marketing'), 'Nico',    'Schäfer',  'Medienweg 9, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Marketing'), 'Sarah',   'Lindner',  'Medienweg 10, 20457 Hamburg'),

    -- Vertrieb (12)
    ((SELECT department_id FROM department WHERE department_name = 'Vertrieb'), 'Oliver',    'Peters',   'Salespark 1, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Vertrieb'), 'Katharina', 'Sommer',   'Salespark 2, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Vertrieb'), 'Dennis',    'Frank',    'Salespark 3, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Vertrieb'), 'Vanessa',   'Roth',     'Salespark 4, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Vertrieb'), 'Patrick',   'Lang',     'Salespark 5, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Vertrieb'), 'Jana',      'Schulz',   'Salespark 6, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Vertrieb'), 'Markus',    'Braun',    'Salespark 7, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Vertrieb'), 'Lea',       'Hartmann', 'Salespark 8, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Vertrieb'), 'Florian',   'König',    'Salespark 9, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Vertrieb'), 'Anna',      'Weiß',     'Salespark 10, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Vertrieb'), 'Sebastian', 'Günther',  'Salespark 11, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Vertrieb'), 'Nicole',    'Herzog',   'Salespark 12, 20457 Hamburg'),

    -- Human Resources und Finance (9)
    ((SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'), 'Martin',  'Engel',   'Financeplatz 1, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'), 'Lisa',    'Vogt',    'Financeplatz 2, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'), 'Sandra',  'Kruse',   'Financeplatz 3, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'), 'Stefan',  'Maurer',  'Financeplatz 4, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'), 'Kathrin', 'Diehl',   'Financeplatz 5, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'), 'Tobias',  'Arnold',  'Financeplatz 6, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'), 'Melanie', 'Hahn',    'Financeplatz 7, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'), 'Julian',  'Fuchs',   'Financeplatz 8, 20457 Hamburg'),
    ((SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'), 'Theresa', 'Böhm',    'Financeplatz 9, 20457 Hamburg');

------------------------------------------------------------
-- 3. SpecsProfile – Geräteprofile für Szenario
------------------------------------------------------------
INSERT INTO specs_profile (
    manufacturer, device_type, name,
    storage_gb, storage_type,
    ram_gb, cpu_model, cpu_cores, gpu_model,
    screen_size_inch, resolution, is_portable,
    os_name, os_version, warranty_months, power_usage_watt, notes
) VALUES
    -- Geschäftsführung: repräsentative, leise, energieeffiziente PCs + Monitore
    ('EcoTech',    'Desktop',  'Eco Executive Desktop',
        1024, 'NVMe SSD',
        32, 'Intel Core i7-14700', 16, 'Intel Iris Xe',
        NULL, NULL, FALSE,
        'Windows 11 Pro', '23H2', 36, 120,
        'Sehr leise, energieeffizient, für Management-Office-Workloads'),
    ('ViewBright', 'Monitor',  'Executive 27" QHD Monitor',
        NULL, NULL,
        NULL, NULL, NULL, NULL,
        27.0, '2560x1440', FALSE,
        NULL, NULL, 24, 40,
        'Rahmenloses Design, für Präsentation im Management-Büro'),
    ('EcoTech',    'Desktop',  'Conference Room PC',
        512, 'SSD',
        16, 'Intel Core i5-13500', 12, 'Intel UHD Graphics',
        NULL, NULL, FALSE,
        'Windows 11 Pro', '23H2', 36, 95,
        'Rechner für Konferenzraum und Multimonitor-Setup'),

    -- Entwicklung: CAD, Simulation, VR, 3D-Druck
    ('ComputeMax', 'Desktop',  'Dev Workstation Tower',
        2048, 'NVMe SSD',
        64, 'AMD Ryzen 9 7950X', 16, 'NVIDIA RTX 4080',
        NULL, NULL, FALSE,
        'Windows 11 Pro', '23H2', 36, 350,
        'High-End Workstation für Simulationen und CAD'),
    ('ComputeMax', 'Laptop',   'Dev Mobile Workstation 15"',
        1024, 'NVMe SSD',
        32, 'Intel Core i9-14900H', 14, 'NVIDIA RTX 4070 Mobile',
        15.6, '2560x1600', TRUE,
        'Windows 11 Pro', '23H2', 36, 120,
        'Leistungsstarker mobiler Rechner für Entwicklung (4 portable Geräte)'),
    ('VRCore',     'Desktop',  'VR Render Station',
        2048, 'NVMe SSD',
        64, 'AMD Threadripper Pro 5975WX', 32, 'NVIDIA RTX 4090',
        NULL, NULL, FALSE,
        'Windows 11 Pro', '22H2', 36, 600,
        'Steuert begehbare VR-Umgebung'),
    ('PrintFab',   '3D_Printer', '3D Printer Pro 500',
        32, 'SSD',
        8, 'Embedded ARM', 8, NULL,
        NULL, NULL, FALSE,
        'Embedded Linux', '1.0', 24, 200,
        '3D-Drucker für Prototypenerstellung'),

    -- Marketing: 4K-Video, Bildbearbeitung, Webdev (RGB)
    ('RenderBox',  'Desktop',  '4K Video Edit Workstation',
        4096, 'NVMe SSD',
        64, 'Intel Core i9-14900K', 24, 'NVIDIA RTX 4090',
        27.0, '3840x2160', FALSE,
        'Windows 11 Pro', '23H2', 36, 450,
        'Optimiert für 4K-Video-Editing und Rendering'),
    ('ColorView',  'Monitor',  'ColorPro 27" 4K Monitor',
        NULL, NULL,
        NULL, NULL, NULL, NULL,
        27.0, '3840x2160', FALSE,
        NULL, NULL, 36, 60,
        'Farbtreuer Monitor für Bildbearbeitung (100% sRGB, 99% AdobeRGB)'),
    ('GreenLeaf',  'Laptop',   'Marketing Ultrabook 14"',
        512, 'NVMe SSD',
        16, 'Intel Core i7-1360P', 12, 'Intel Iris Xe',
        14.0, '1920x1200', TRUE,
        'Windows 11 Pro', '23H2', 36, 65,
        'Leichtes, energieeffizientes Kreativ-Notebook'),
    ('GameBox',    'Desktop',  'WebDev RGB Workstation',
        1024, 'NVMe SSD',
        32, 'AMD Ryzen 7 7800X3D', 8, 'NVIDIA RTX 4070',
        27.0, '2560x1440', FALSE,
        'Windows 11 Pro', '23H2', 36, 320,
        'Starke Webentwickler-Maschine mit RGB-Beleuchtung (“leuchtet im Dunkeln”)'),

    -- Vertrieb: mobile, greentech, viel unterwegs
    ('GreenLeaf',  'Laptop',   'Sales Greentech Ultrabook 14"',
        512, 'NVMe SSD',
        16, 'Intel Core i7-1355U', 10, 'Intel Iris Xe',
        14.0, '1920x1200', TRUE,
        'Windows 11 Pro', '23H2', 36, 55,
        'Energieeffizientes Vertriebs-Notebook mit guter Webcam und WLAN/5G'),

    -- HR & Finance: hohe Rechenleistung, viel Speicher, 2 Monitore
    ('DataCore',   'Desktop',  'HR Finance Data Workstation',
        4096, 'NVMe SSD',
        64, 'Intel Xeon W-2375', 24, 'NVIDIA RTX A2000',
        NULL, NULL, FALSE,
        'Windows 11 Pro', '23H2', 36, 300,
        'Leistungsstarke Buchhaltungs- und Controlling-Workstation mit viel RAM und Speicher'),
    ('ViewBright', 'Monitor',  'Standard Office Monitor 24"',
        NULL, NULL,
        NULL, NULL, NULL, NULL,
        24.0, '1920x1080', FALSE,
        NULL, NULL, 36, 35,
        'Standard-Office-Monitor für HR/Finance (Dual-Monitor-Setup)');

------------------------------------------------------------
-- 4. Devices – konkrete Gerätezuordnung
--    Seriennummern sind frei gewählt, aber eindeutig.
--    Daten sind beispielhaft (2024/2025).
------------------------------------------------------------

-- 4.1 Geschäftsführung
INSERT INTO device (
    last_maintenance_date, serial_number, purchase_date,
    employee_id, department_id, specs_id
)
VALUES
    -- CEO: Eco Executive Desktop
    ('2025-01-10', 'MGMT-PC-001', '2024-12-15',
        (SELECT e.employee_id FROM employee e
         JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Ana' AND e.last_name = 'Rodarte'
           AND d.department_name = 'Geschäftsführung'),
        (SELECT department_id FROM department WHERE department_name = 'Geschäftsführung'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Eco Executive Desktop')
    ),
    -- CEO: 4x Executive Monitore am Schreibtisch
    ('2025-01-10', 'MGMT-MON-001', '2024-12-15',
        (SELECT e.employee_id FROM employee e
         JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Ana' AND e.last_name = 'Rodarte'
           AND d.department_name = 'Geschäftsführung'),
        (SELECT department_id FROM department WHERE department_name = 'Geschäftsführung'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Executive 27" QHD Monitor')
    ),
    ('2025-01-10', 'MGMT-MON-002', '2024-12-15',
        (SELECT e.employee_id FROM employee e
         JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Ana' AND e.last_name = 'Rodarte'
           AND d.department_name = 'Geschäftsführung'),
        (SELECT department_id FROM department WHERE department_name = 'Geschäftsführung'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Executive 27" QHD Monitor')
    ),
    ('2025-01-10', 'MGMT-MON-003', '2024-12-15',
        (SELECT e.employee_id FROM employee e
         JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Ana' AND e.last_name = 'Rodarte'
           AND d.department_name = 'Geschäftsführung'),
        (SELECT department_id FROM department WHERE department_name = 'Geschäftsführung'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Executive 27" QHD Monitor')
    ),
    ('2025-01-10', 'MGMT-MON-004', '2024-12-15',
        (SELECT e.employee_id FROM employee e
         JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Ana' AND e.last_name = 'Rodarte'
           AND d.department_name = 'Geschäftsführung'),
        (SELECT department_id FROM department WHERE department_name = 'Geschäftsführung'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Executive 27" QHD Monitor')
    ),

    -- Assistenz: energieeffiziente Ultrabooks
    ('2025-01-12', 'MGMT-NB-001', '2024-12-20',
        (SELECT e.employee_id FROM employee e
         JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Lukas' AND e.last_name = 'Meier'
           AND d.department_name = 'Geschäftsführung'),
        (SELECT department_id FROM department WHERE department_name = 'Geschäftsführung'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Marketing Ultrabook 14"')
    ),
    ('2025-01-12', 'MGMT-NB-002', '2024-12-20',
        (SELECT e.employee_id FROM employee e
         JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Sophie' AND e.last_name = 'Klein'
           AND d.department_name = 'Geschäftsführung'),
        (SELECT department_id FROM department WHERE department_name = 'Geschäftsführung'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Marketing Ultrabook 14"')
    ),

    -- Konferenzraum-PC + 4 weitere Monitore für Präsentationen
    ('2025-01-05', 'MGMT-PC-CR-001', '2024-12-10',
        NULL,
        (SELECT department_id FROM department WHERE department_name = 'Geschäftsführung'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Conference Room PC')
    ),
    ('2025-01-05', 'MGMT-MON-CR-001', '2024-12-10',
        NULL,
        (SELECT department_id FROM department WHERE department_name = 'Geschäftsführung'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Executive 27" QHD Monitor')
    ),
    ('2025-01-05', 'MGMT-MON-CR-002', '2024-12-10',
        NULL,
        (SELECT department_id FROM department WHERE department_name = 'Geschäftsführung'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Executive 27" QHD Monitor')
    ),
    ('2025-01-05', 'MGMT-MON-CR-003', '2024-12-10',
        NULL,
        (SELECT department_id FROM department WHERE department_name = 'Geschäftsführung'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Executive 27" QHD Monitor')
    ),
    ('2025-01-05', 'MGMT-MON-CR-004', '2024-12-10',
        NULL,
        (SELECT department_id FROM department WHERE department_name = 'Geschäftsführung'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Executive 27" QHD Monitor')
    );

-- 4.2 Entwicklung – 8 Tower, 4 Mobile, VR-Station, 3D-Drucker
INSERT INTO device (
    last_maintenance_date, serial_number, purchase_date,
    employee_id, department_id, specs_id
)
VALUES
    -- 4 mobile Workstations
    ('2025-01-08', 'DEV-NB-001', '2024-11-30',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Jonas' AND e.last_name = 'Weber'
           AND d.department_name = 'Entwicklung'),
        (SELECT department_id FROM department WHERE department_name = 'Entwicklung'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Dev Mobile Workstation 15"')
    ),
    ('2025-01-08', 'DEV-NB-002', '2024-11-30',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Marie' AND e.last_name = 'Schröder'
           AND d.department_name = 'Entwicklung'),
        (SELECT department_id FROM department WHERE department_name = 'Entwicklung'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Dev Mobile Workstation 15"')
    ),
    ('2025-01-08', 'DEV-NB-003', '2024-11-30',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Leon' AND e.last_name = 'Fischer'
           AND d.department_name = 'Entwicklung'),
        (SELECT department_id FROM department WHERE department_name = 'Entwicklung'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Dev Mobile Workstation 15"')
    ),
    ('2025-01-08', 'DEV-NB-004', '2024-11-30',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Laura' AND e.last_name = 'Hofmann'
           AND d.department_name = 'Entwicklung'),
        (SELECT department_id FROM department WHERE department_name = 'Entwicklung'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Dev Mobile Workstation 15"')
    ),

    -- 8 Tower-Workstations
    ('2025-01-09', 'DEV-WS-001', '2024-11-25',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Felix' AND e.last_name = 'Bauer'
           AND d.department_name = 'Entwicklung'),
        (SELECT department_id FROM department WHERE department_name = 'Entwicklung'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Dev Workstation Tower')
    ),
    ('2025-01-09', 'DEV-WS-002', '2024-11-25',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Hannah' AND e.last_name = 'Krüger'
           AND d.department_name = 'Entwicklung'),
        (SELECT department_id FROM department WHERE department_name = 'Entwicklung'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Dev Workstation Tower')
    ),
    ('2025-01-09', 'DEV-WS-003', '2024-11-25',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Daniel' AND e.last_name = 'Vogel'
           AND d.department_name = 'Entwicklung'),
        (SELECT department_id FROM department WHERE department_name = 'Entwicklung'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Dev Workstation Tower')
    ),
    ('2025-01-09', 'DEV-WS-004', '2024-11-25',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Nina' AND e.last_name = 'Werner'
           AND d.department_name = 'Entwicklung'),
        (SELECT department_id FROM department WHERE department_name = 'Entwicklung'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Dev Workstation Tower')
    ),
    ('2025-01-09', 'DEV-WS-005', '2024-11-25',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Paul' AND e.last_name = 'Richter'
           AND d.department_name = 'Entwicklung'),
        (SELECT department_id FROM department WHERE department_name = 'Entwicklung'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Dev Workstation Tower')
    ),
    ('2025-01-09', 'DEV-WS-006', '2024-11-25',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Jana' AND e.last_name = 'Albrecht'
           AND d.department_name = 'Entwicklung'),
        (SELECT department_id FROM department WHERE department_name = 'Entwicklung'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Dev Workstation Tower')
    ),
    ('2025-01-09', 'DEV-WS-007', '2024-11-25',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Tobias' AND e.last_name = 'Schmid'
           AND d.department_name = 'Entwicklung'),
        (SELECT department_id FROM department WHERE department_name = 'Entwicklung'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Dev Workstation Tower')
    ),
    ('2025-01-09', 'DEV-WS-008', '2024-11-25',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Lisa' AND e.last_name = 'König'
           AND d.department_name = 'Entwicklung'),
        (SELECT department_id FROM department WHERE department_name = 'Entwicklung'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Dev Workstation Tower')
    ),

    -- VR-Renderstation (shared)
    ('2025-01-07', 'DEV-VR-001', '2024-11-20',
        NULL,
        (SELECT department_id FROM department WHERE department_name = 'Entwicklung'),
        (SELECT specs_id FROM specs_profile WHERE name = 'VR Render Station')
    ),
    -- 3D-Drucker (shared)
    ('2025-01-07', 'DEV-3D-001', '2024-11-20',
        NULL,
        (SELECT department_id FROM department WHERE department_name = 'Entwicklung'),
        (SELECT specs_id FROM specs_profile WHERE name = '3D Printer Pro 500')
    );

-- 4.3 Marketing – 4K Workstations, RGB-Webdev, Ultrabooks
INSERT INTO device (
    last_maintenance_date, serial_number, purchase_date,
    employee_id, department_id, specs_id
)
VALUES
    -- Kameramann/frau + 2 Redakteur:innen + Fotograf:in + 2 Mediengestalter:innen -> 4K Workstations
    ('2025-01-11', 'MKT-WS-001', '2024-12-05',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Tim' AND e.last_name = 'Berger'
           AND d.department_name = 'Marketing'),
        (SELECT department_id FROM department WHERE department_name = 'Marketing'),
        (SELECT specs_id FROM specs_profile WHERE name = '4K Video Edit Workstation')
    ),
    ('2025-01-11', 'MKT-WS-002', '2024-12-05',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Clara' AND e.last_name = 'Neumann'
           AND d.department_name = 'Marketing'),
        (SELECT department_id FROM department WHERE department_name = 'Marketing'),
        (SELECT specs_id FROM specs_profile WHERE name = '4K Video Edit Workstation')
    ),
    ('2025-01-11', 'MKT-WS-003', '2024-12-05',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Max' AND e.last_name = 'Hoffmann'
           AND d.department_name = 'Marketing'),
        (SELECT department_id FROM department WHERE department_name = 'Marketing'),
        (SELECT specs_id FROM specs_profile WHERE name = '4K Video Edit Workstation')
    ),
    ('2025-01-11', 'MKT-WS-004', '2024-12-05',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Julia' AND e.last_name = 'Brandt'
           AND d.department_name = 'Marketing'),
        (SELECT department_id FROM department WHERE department_name = 'Marketing'),
        (SELECT specs_id FROM specs_profile WHERE name = '4K Video Edit Workstation')
    ),
    ('2025-01-11', 'MKT-WS-005', '2024-12-05',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Simon' AND e.last_name = 'Keller'
           AND d.department_name = 'Marketing'),
        (SELECT department_id FROM department WHERE department_name = 'Marketing'),
        (SELECT specs_id FROM specs_profile WHERE name = '4K Video Edit Workstation')
    ),
    ('2025-01-11', 'MKT-WS-006', '2024-12-05',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Lara' AND e.last_name = 'Busch'
           AND d.department_name = 'Marketing'),
        (SELECT department_id FROM department WHERE department_name = 'Marketing'),
        (SELECT specs_id FROM specs_profile WHERE name = '4K Video Edit Workstation')
    ),

    -- Webentwickler:innen – RGB-Workstations
    ('2025-01-11', 'MKT-RGB-001', '2024-12-05',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Erik' AND e.last_name = 'Wolf'
           AND d.department_name = 'Marketing'),
        (SELECT department_id FROM department WHERE department_name = 'Marketing'),
        (SELECT specs_id FROM specs_profile WHERE name = 'WebDev RGB Workstation')
    ),
    ('2025-01-11', 'MKT-RGB-002', '2024-12-05',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Mia' AND e.last_name = 'Lorenz'
           AND d.department_name = 'Marketing'),
        (SELECT department_id FROM department WHERE department_name = 'Marketing'),
        (SELECT specs_id FROM specs_profile WHERE name = 'WebDev RGB Workstation')
    ),

    -- Weitere Mediengestalter:innen – mobile Ultrabooks
    ('2025-01-11', 'MKT-NB-001', '2024-12-05',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Nico' AND e.last_name = 'Schäfer'
           AND d.department_name = 'Marketing'),
        (SELECT department_id FROM department WHERE department_name = 'Marketing'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Marketing Ultrabook 14"')
    ),
    ('2025-01-11', 'MKT-NB-002', '2024-12-05',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Sarah' AND e.last_name = 'Lindner'
           AND d.department_name = 'Marketing'),
        (SELECT department_id FROM department WHERE department_name = 'Marketing'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Marketing Ultrabook 14"')
    );

-- 4.4 Vertrieb – mobiles Greentech-Notebook pro Person
INSERT INTO device (
    last_maintenance_date, serial_number, purchase_date,
    employee_id, department_id, specs_id
)
VALUES
    ('2025-01-13', 'SAL-NB-001', '2024-12-10',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Oliver' AND e.last_name = 'Peters'
           AND d.department_name = 'Vertrieb'),
        (SELECT department_id FROM department WHERE department_name = 'Vertrieb'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Sales Greentech Ultrabook 14"')
    ),
    ('2025-01-13', 'SAL-NB-002', '2024-12-10',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Katharina' AND e.last_name = 'Sommer'
           AND d.department_name = 'Vertrieb'),
        (SELECT department_id FROM department WHERE department_name = 'Vertrieb'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Sales Greentech Ultrabook 14"')
    ),
    ('2025-01-13', 'SAL-NB-003', '2024-12-10',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Dennis' AND e.last_name = 'Frank'
           AND d.department_name = 'Vertrieb'),
        (SELECT department_id FROM department WHERE department_name = 'Vertrieb'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Sales Greentech Ultrabook 14"')
    ),
    ('2025-01-13', 'SAL-NB-004', '2024-12-10',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Vanessa' AND e.last_name = 'Roth'
           AND d.department_name = 'Vertrieb'),
        (SELECT department_id FROM department WHERE department_name = 'Vertrieb'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Sales Greentech Ultrabook 14"')
    ),
    ('2025-01-13', 'SAL-NB-005', '2024-12-10',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Patrick' AND e.last_name = 'Lang'
           AND d.department_name = 'Vertrieb'),
        (SELECT department_id FROM department WHERE department_name = 'Vertrieb'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Sales Greentech Ultrabook 14"')
    ),
    ('2025-01-13', 'SAL-NB-006', '2024-12-10',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Jana' AND e.last_name = 'Schulz'
           AND d.department_name = 'Vertrieb'),
        (SELECT department_id FROM department WHERE department_name = 'Vertrieb'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Sales Greentech Ultrabook 14"')
    ),
    ('2025-01-13', 'SAL-NB-007', '2024-12-10',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Markus' AND e.last_name = 'Braun'
           AND d.department_name = 'Vertrieb'),
        (SELECT department_id FROM department WHERE department_name = 'Vertrieb'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Sales Greentech Ultrabook 14"')
    ),
    ('2025-01-13', 'SAL-NB-008', '2024-12-10',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Lea' AND e.last_name = 'Hartmann'
           AND d.department_name = 'Vertrieb'),
        (SELECT department_id FROM department WHERE department_name = 'Vertrieb'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Sales Greentech Ultrabook 14"')
    ),
    ('2025-01-13', 'SAL-NB-009', '2024-12-10',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Florian' AND e.last_name = 'König'
           AND d.department_name = 'Vertrieb'),
        (SELECT department_id FROM department WHERE department_name = 'Vertrieb'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Sales Greentech Ultrabook 14"')
    ),
    ('2025-01-13', 'SAL-NB-010', '2024-12-10',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Anna' AND e.last_name = 'Weiß'
           AND d.department_name = 'Vertrieb'),
        (SELECT department_id FROM department WHERE department_name = 'Vertrieb'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Sales Greentech Ultrabook 14"')
    ),
    ('2025-01-13', 'SAL-NB-011', '2024-12-10',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Sebastian' AND e.last_name = 'Günther'
           AND d.department_name = 'Vertrieb'),
        (SELECT department_id FROM department WHERE department_name = 'Vertrieb'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Sales Greentech Ultrabook 14"')
    ),
    ('2025-01-13', 'SAL-NB-012', '2024-12-10',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Nicole' AND e.last_name = 'Herzog'
           AND d.department_name = 'Vertrieb'),
        (SELECT department_id FROM department WHERE department_name = 'Vertrieb'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Sales Greentech Ultrabook 14"')
    );

-- 4.5 Human Resources und Finance – Data Workstation + 2 Monitore pro Person
INSERT INTO device (
    last_maintenance_date, serial_number, purchase_date,
    employee_id, department_id, specs_id
)
VALUES
    -- Workstations
    ('2025-01-14', 'HRF-WS-001', '2024-12-01',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Martin' AND e.last_name = 'Engel'
           AND d.department_name = 'Human Resources und Finance'),
        (SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'),
        (SELECT specs_id FROM specs_profile WHERE name = 'HR Finance Data Workstation')
    ),
    ('2025-01-14', 'HRF-WS-002', '2024-12-01',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Lisa' AND e.last_name = 'Vogt'
           AND d.department_name = 'Human Resources und Finance'),
        (SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'),
        (SELECT specs_id FROM specs_profile WHERE name = 'HR Finance Data Workstation')
    ),
    ('2025-01-14', 'HRF-WS-003', '2024-12-01',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Sandra' AND e.last_name = 'Kruse'
           AND d.department_name = 'Human Resources und Finance'),
        (SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'),
        (SELECT specs_id FROM specs_profile WHERE name = 'HR Finance Data Workstation')
    ),
    ('2025-01-14', 'HRF-WS-004', '2024-12-01',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Stefan' AND e.last_name = 'Maurer'
           AND d.department_name = 'Human Resources und Finance'),
        (SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'),
        (SELECT specs_id FROM specs_profile WHERE name = 'HR Finance Data Workstation')
    ),
    ('2025-01-14', 'HRF-WS-005', '2024-12-01',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Kathrin' AND e.last_name = 'Diehl'
           AND d.department_name = 'Human Resources und Finance'),
        (SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'),
        (SELECT specs_id FROM specs_profile WHERE name = 'HR Finance Data Workstation')
    ),
    ('2025-01-14', 'HRF-WS-006', '2024-12-01',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Tobias' AND e.last_name = 'Arnold'
           AND d.department_name = 'Human Resources und Finance'),
        (SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'),
        (SELECT specs_id FROM specs_profile WHERE name = 'HR Finance Data Workstation')
    ),
    ('2025-01-14', 'HRF-WS-007', '2024-12-01',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Melanie' AND e.last_name = 'Hahn'
           AND d.department_name = 'Human Resources und Finance'),
        (SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'),
        (SELECT specs_id FROM specs_profile WHERE name = 'HR Finance Data Workstation')
    ),
    ('2025-01-14', 'HRF-WS-008', '2024-12-01',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Julian' AND e.last_name = 'Fuchs'
           AND d.department_name = 'Human Resources und Finance'),
        (SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'),
        (SELECT specs_id FROM specs_profile WHERE name = 'HR Finance Data Workstation')
    ),
    ('2025-01-14', 'HRF-WS-009', '2024-12-01',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Theresa' AND e.last_name = 'Böhm'
           AND d.department_name = 'Human Resources und Finance'),
        (SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'),
        (SELECT specs_id FROM specs_profile WHERE name = 'HR Finance Data Workstation')
    );

-- je 2 Monitore pro HR/Finance-Mitarbeiter: insgesamt 18
INSERT INTO device (
    last_maintenance_date, serial_number, purchase_date,
    employee_id, department_id, specs_id
)
VALUES
    -- Martin Engel (2 Monitore)
    ('2025-01-14', 'HRF-MON-001', '2024-12-01',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Martin' AND e.last_name = 'Engel'
           AND d.department_name = 'Human Resources und Finance'),
        (SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Standard Office Monitor 24"')
    ),
    ('2025-01-14', 'HRF-MON-002', '2024-12-01',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Martin' AND e.last_name = 'Engel'
           AND d.department_name = 'Human Resources und Finance'),
        (SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Standard Office Monitor 24"')
    ),

    -- Lisa Vogt
    ('2025-01-14', 'HRF-MON-003', '2024-12-01',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Lisa' AND e.last_name = 'Vogt'
           AND d.department_name = 'Human Resources und Finance'),
        (SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Standard Office Monitor 24"')
    ),
    ('2025-01-14', 'HRF-MON-004', '2024-12-01',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Lisa' AND e.last_name = 'Vogt'
           AND d.department_name = 'Human Resources und Finance'),
        (SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Standard Office Monitor 24"')
    ),

    -- Sandra Kruse
    ('2025-01-14', 'HRF-MON-005', '2024-12-01',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Sandra' AND e.last_name = 'Kruse'
           AND d.department_name = 'Human Resources und Finance'),
        (SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Standard Office Monitor 24"')
    ),
    ('2025-01-14', 'HRF-MON-006', '2024-12-01',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Sandra' AND e.last_name = 'Kruse'
           AND d.department_name = 'Human Resources und Finance'),
        (SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Standard Office Monitor 24"')
    ),

    -- Stefan Maurer
    ('2025-01-14', 'HRF-MON-007', '2024-12-01',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Stefan' AND e.last_name = 'Maurer'
           AND d.department_name = 'Human Resources und Finance'),
        (SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Standard Office Monitor 24"')
    ),
    ('2025-01-14', 'HRF-MON-008', '2024-12-01',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Stefan' AND e.last_name = 'Maurer'
           AND d.department_name = 'Human Resources und Finance'),
        (SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Standard Office Monitor 24"')
    ),

    -- Kathrin Diehl
    ('2025-01-14', 'HRF-MON-009', '2024-12-01',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Kathrin' AND e.last_name = 'Diehl'
           AND d.department_name = 'Human Resources und Finance'),
        (SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Standard Office Monitor 24"')
    ),
    ('2025-01-14', 'HRF-MON-010', '2024-12-01',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Kathrin' AND e.last_name = 'Diehl'
           AND d.department_name = 'Human Resources und Finance'),
        (SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Standard Office Monitor 24"')
    ),

    -- Tobias Arnold
    ('2025-01-14', 'HRF-MON-011', '2024-12-01',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Tobias' AND e.last_name = 'Arnold'
           AND d.department_name = 'Human Resources und Finance'),
        (SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Standard Office Monitor 24"')
    ),
    ('2025-01-14', 'HRF-MON-012', '2024-12-01',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Tobias' AND e.last_name = 'Arnold'
           AND d.department_name = 'Human Resources und Finance'),
        (SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Standard Office Monitor 24"')
    ),

    -- Melanie Hahn
    ('2025-01-14', 'HRF-MON-013', '2024-12-01',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Melanie' AND e.last_name = 'Hahn'
           AND d.department_name = 'Human Resources und Finance'),
        (SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Standard Office Monitor 24"')
    ),
    ('2025-01-14', 'HRF-MON-014', '2024-12-01',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Melanie' AND e.last_name = 'Hahn'
           AND d.department_name = 'Human Resources und Finance'),
        (SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Standard Office Monitor 24"')
    ),

    -- Julian Fuchs
    ('2025-01-14', 'HRF-MON-015', '2024-12-01',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Julian' AND e.last_name = 'Fuchs'
           AND d.department_name = 'Human Resources und Finance'),
        (SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Standard Office Monitor 24"')
    ),
    ('2025-01-14', 'HRF-MON-016', '2024-12-01',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Julian' AND e.last_name = 'Fuchs'
           AND d.department_name = 'Human Resources und Finance'),
        (SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Standard Office Monitor 24"')
    ),

    -- Theresa Böhm
    ('2025-01-14', 'HRF-MON-017', '2024-12-01',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Theresa' AND e.last_name = 'Böhm'
           AND d.department_name = 'Human Resources und Finance'),
        (SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Standard Office Monitor 24"')
    ),
    ('2025-01-14', 'HRF-MON-018', '2024-12-01',
        (SELECT e.employee_id FROM employee e JOIN department d ON d.department_id = e.department_id
         WHERE e.first_name = 'Theresa' AND e.last_name = 'Böhm'
           AND d.department_name = 'Human Resources und Finance'),
        (SELECT department_id FROM department WHERE department_name = 'Human Resources und Finance'),
        (SELECT specs_id FROM specs_profile WHERE name = 'Standard Office Monitor 24"')
    );

COMMIT;
