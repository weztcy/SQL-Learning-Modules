-- ====================================================================
-- Modul: 18 - Proyek Praktik SQL
-- File : 283_inventory_database_project.sql
-- Topik: Proyek Database Inventaris Barang dan Stok Otomatis
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

CREATE TEMP TABLE BarangGudang (
    KodeBarang TEXT PRIMARY KEY,
    NamaBarang TEXT NOT NULL,
    StokSaatIni INTEGER NOT NULL,
    BatasMinimum INTEGER DEFAULT 10
);

INSERT INTO BarangGudang VALUES 
    ('BRG-01', 'Kabel Jack Gitar 3M', 8, 15),
    ('BRG-02', 'Stand Microphone Pro', 25, 10),
    ('BRG-03', 'Gitar Akustik Yamaha', 4, 5);

-- Menemukan barang yang memerlukan pemesanan ulang (Reorder Alert)
SELECT 
    KodeBarang,
    NamaBarang,
    StokSaatIni,
    BatasMinimum,
    (BatasMinimum - StokSaatIni) AS JumlahHarusDipesan,
    'PERLU REORDER SEGERA' AS StatusPeringatan
FROM BarangGudang
WHERE StokSaatIni < BatasMinimum;
