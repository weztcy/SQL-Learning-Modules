-- ====================================================================
-- Modul: 08 - DDL dan Struktur Database
-- File : 138_character_data_types.sql
-- Topik: Tipe Data Karakter (CHAR, VARCHAR, TEXT)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- CHAR(n): string panjang tetap dengan padding spasi.
-- VARCHAR(n): string panjang variabel hingga batas maksimum n karakter.
-- TEXT: string teks panjang tanpa batas tetap.

CREATE TEMP TABLE DemoKarakter (
    KodeNegara CHAR(2),
    NamaKota VARCHAR(50),
    BiografiLengkap TEXT
);

INSERT INTO DemoKarakter VALUES ('ID', 'Bandung', 'Pusat kebudayaan musik dan seni.');

SELECT * FROM DemoKarakter;
