-- ====================================================================
-- Modul: 18 - Proyek Praktik SQL
-- File : 284_cashier_database_project.sql
-- Topik: Proyek Sistem Kasir (Point of Sale / POS)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

CREATE TEMP TABLE StrukHeader (
    NoStruk INTEGER PRIMARY KEY,
    WaktuTransaksi DATETIME DEFAULT CURRENT_TIMESTAMP,
    NamaKasir TEXT
);

CREATE TEMP TABLE StrukDetail (
    DetailId INTEGER PRIMARY KEY AUTOINCREMENT,
    NoStruk INTEGER,
    NamaMenu TEXT,
    Qty INTEGER,
    HargaSatuan NUMERIC
);

INSERT INTO StrukHeader VALUES (1001, CURRENT_TIMESTAMP, 'Kasir 01 - Rina');
INSERT INTO StrukDetail (NoStruk, NamaMenu, Qty, HargaSatuan) VALUES 
    (1001, 'Kopi Espresso', 2, 25000),
    (1001, 'Croissant Cokelat', 1, 30000);

-- Menghitung total transaksi kasir termasuk PPN 11%
SELECT 
    h.NoStruk,
    h.NamaKasir,
    SUM(d.Qty * d.HargaSatuan) AS Subtotal,
    ROUND(SUM(d.Qty * d.HargaSatuan) * 0.11, 2) AS PPN11Persen,
    ROUND(SUM(d.Qty * d.HargaSatuan) * 1.11, 2) AS GrandTotalBayar
FROM StrukHeader AS h
INNER JOIN StrukDetail AS d ON h.NoStruk = d.NoStruk
GROUP BY h.NoStruk, h.NamaKasir;
