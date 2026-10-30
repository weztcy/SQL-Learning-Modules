-- ====================================================================
-- Modul: 17 - Import, Export, JSON, dan Data Cleaning
-- File : 277_normalize_text_values.sql
-- Topik: Normalisasi Nilai Teks (Data Sanitization)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Menghapus spasi liar (TRIM) dan menyeragamkan kapitalisasi (LOWER / UPPER).

CREATE TEMP TABLE DemoKotor (TeksAsli TEXT);
INSERT INTO DemoKotor VALUES ('   jAkArTa sElaTan   '), ('  bAnDuNg  ');

SELECT 
    TeksAsli,
    UPPER(TRIM(TeksAsli)) AS TeksTernormalisasi
FROM DemoKotor;
