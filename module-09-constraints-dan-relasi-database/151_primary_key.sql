-- ====================================================================
-- Modul: 09 - Constraints dan Relasi Database
-- File : 151_primary_key.sql
-- Topik: Primary Key
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- PRIMARY KEY menjamin integritas entitas: setiap baris memiliki identitas unik
-- dan nilainya tidak boleh NULL.

CREATE TEMP TABLE DemoPK (
    IdPengguna INTEGER PRIMARY KEY,
    NamaLengkap TEXT NOT NULL
);

INSERT INTO DemoPK VALUES (1, 'Budi Pratama'), (2, 'Siti Rahma');

SELECT * FROM DemoPK;
