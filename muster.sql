-- =========================================
-- Datei: schulprojekt.sql
-- Zweck: Beispiel-Datenbank für Schulprojekt
-- =========================================

-- 1. Datenbank anlegen
CREATE DATABASE schulprojekt;

-- Achtung:
-- Den Rest führst du normalerweise aus,
-- NACHDEM du mit der DB "schulprojekt" verbunden bist.


-- 2. Tabelle: Kunde
CREATE TABLE Kunde (
    KundeID      INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Vorname      VARCHAR(50) NOT NULL,
    Nachname     VARCHAR(50) NOT NULL,
    Email        VARCHAR(100)
);

-- 3. Tabelle: Produkt
CREATE TABLE Produkt (
    ProduktID    INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Name         VARCHAR(100) NOT NULL,
    Preis        DECIMAL(10,2) NOT NULL
);

-- 4. Tabelle: Bestellung
CREATE TABLE Bestellung (
    BestellungID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Bestelldatum DATE NOT NULL,
    KundeID      INT NOT NULL,
    CONSTRAINT FK_Bestellung_Kunde
        FOREIGN KEY (KundeID) REFERENCES Kunde(KundeID)
);

-- 5. Tabelle: Bestellposition (Zwischentabelle Bestellung <-> Produkt)
CREATE TABLE Bestellposition (
    BestellungID INT NOT NULL,
    ProduktID    INT NOT NULL,
    Menge        INT NOT NULL,
    Einzelpreis  DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (BestellungID, ProduktID),
    CONSTRAINT FK_Bestellposition_Bestellung
        FOREIGN KEY (BestellungID) REFERENCES Bestellung(BestellungID),
    CONSTRAINT FK_Bestellposition_Produkt
        FOREIGN KEY (ProduktID) REFERENCES Produkt(ProduktID)
);

-- 6. Beispiel-Daten einfügen (optional)
INSERT INTO Kunde (Vorname, Nachname, Email) VALUES
('Max',   'Mustermann', 'max@example.com'),
('Erika', 'Musterfrau', 'erika@example.com');

INSERT INTO Produkt (Name, Preis) VALUES
('Laptop',    999.00),
('Maus',       19.99),
('Tastatur',   39.99);

INSERT INTO Bestellung (Bestelldatum, KundeID) VALUES
('2025-11-01', 1),
('2025-11-02', 2);

INSERT INTO Bestellposition (BestellungID, ProduktID, Menge, Einzelpreis) VALUES
(1, 1, 1, 999.00),
(1, 2, 2, 19.99),
(2, 3, 1, 39.99);
