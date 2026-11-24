-- ====================================================================
-- Modul: 18 - Proyek Praktik SQL
-- File : 292_data_warehouse_star_schema_project.sql
-- Topik: Desain Data Warehouse Star Schema (Fakta & Dimensi)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Tabel Dimensi
CREATE TEMP TABLE DimCustomer (
    CustKey INTEGER PRIMARY KEY,
    CustomerId INTEGER,
    FullName TEXT,
    Country TEXT
);

CREATE TEMP TABLE DimTrack (
    TrackKey INTEGER PRIMARY KEY,
    TrackId INTEGER,
    TrackName TEXT,
    GenreName TEXT
);

-- Tabel Fakta Penjualan
CREATE TEMP TABLE FactSales (
    SalesKey INTEGER PRIMARY KEY AUTOINCREMENT,
    CustKey INTEGER,
    TrackKey INTEGER,
    Quantity INTEGER,
    TotalRevenue NUMERIC
);

INSERT INTO DimCustomer VALUES (1, 10, 'Luís Gonçalves', 'Brazil');
INSERT INTO DimTrack VALUES (1, 101, 'Restless and Wild', 'Rock');
INSERT INTO FactSales (CustKey, TrackKey, Quantity, TotalRevenue) VALUES (1, 1, 2, 1.98);

-- Query Analitik OLAP Star Schema
SELECT 
    dc.Country,
    dt.GenreName,
    SUM(fs.Quantity) AS TotalQtyTerjual,
    ROUND(SUM(fs.TotalRevenue), 2) AS TotalOmset
FROM FactSales AS fs
INNER JOIN DimCustomer AS dc ON fs.CustKey = dc.CustKey
INNER JOIN DimTrack AS dt ON fs.TrackKey = dt.TrackKey
GROUP BY dc.Country, dt.GenreName;
