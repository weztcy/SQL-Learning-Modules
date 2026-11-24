-- ====================================================================
-- Modul: 09 - Constraints dan Relasi Database
-- File : 155_check_constraint.sql
-- Topik: CHECK Constraint
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Konstrain CHECK memvalidasi apakah nilai yang dimasukkan memenuhi ekspresi logika boolean
-- sebelum data disimpan ke dalam database.

CREATE TEMP TABLE DemoCheck (
    BarangId INTEGER PRIMARY KEY,
    NamaBarang TEXT,
    Stok INTEGER CHECK (Stok >= 0),
    Harga NUMERIC CHECK (Harga > 0)
);

INSERT INTO DemoCheck VALUES (1, 'Senar Bass', 15, 120000);

SELECT * FROM DemoCheck;
