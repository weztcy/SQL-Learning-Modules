-- ====================================================================
-- Modul: 09 - Constraints dan Relasi Database
-- File : 157_composite_primary_key.sql
-- Topik: Composite Primary Key
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Composite Primary Key dibentuk dari kombinasi dua kolom atau lebih untuk menjamin keunikan.

CREATE TEMP TABLE DemoCompositePK (
    TahunAkademik INTEGER,
    NomorMahasiswa INTEGER,
    IndeksPrestasi REAL,
    PRIMARY KEY (TahunAkademik, NomorMahasiswa)
);

INSERT INTO DemoCompositePK VALUES (2026, 1001, 3.85), (2026, 1002, 3.90);

SELECT * FROM DemoCompositePK;
