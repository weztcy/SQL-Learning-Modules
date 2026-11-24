-- ====================================================================
-- Modul: 09 - Constraints dan Relasi Database
-- File : 158_composite_foreign_key.sql
-- Topik: Composite Foreign Key
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Composite Foreign Key merujuk pada tabel induk yang menggunakan Composite Primary Key.

CREATE TEMP TABLE IndukCabang (
    KodeWilayah TEXT,
    NomorCabang INTEGER,
    NamaCabang TEXT,
    PRIMARY KEY (KodeWilayah, NomorCabang)
);

CREATE TEMP TABLE KaryawanCabang (
    KaryawanId INTEGER PRIMARY KEY,
    NamaKaryawan TEXT,
    WilayahRef TEXT,
    CabangRef INTEGER,
    FOREIGN KEY (WilayahRef, CabangRef) REFERENCES IndukCabang(KodeWilayah, NomorCabang)
);

INSERT INTO IndukCabang VALUES ('JKT', 1, 'Cabang Thamrin');
INSERT INTO KaryawanCabang VALUES (10, 'Ahmad', 'JKT', 1);

SELECT * FROM KaryawanCabang;
