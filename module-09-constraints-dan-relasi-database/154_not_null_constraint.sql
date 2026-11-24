-- ====================================================================
-- Modul: 09 - Constraints dan Relasi Database
-- File : 154_not_null_constraint.sql
-- Topik: NOT NULL Constraint
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Konstrain NOT NULL melarang nilai kosong (NULL) masuk ke dalam kolom tertentu,
-- mewajibkan setiap operasi INSERT menyuplai nilai valid.

CREATE TEMP TABLE DemoNotNull (
    ProdukId INTEGER PRIMARY KEY,
    NamaProduk TEXT NOT NULL,
    Harga NUMERIC NOT NULL
);

INSERT INTO DemoNotNull VALUES (1, 'Plectrum Gitar', 5000);

SELECT * FROM DemoNotNull;
