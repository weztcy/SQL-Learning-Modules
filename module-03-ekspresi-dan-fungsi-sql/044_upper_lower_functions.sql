-- ====================================================================
-- Modul: 03 - Ekspresi dan Fungsi SQL
-- File : 044_upper_lower_functions.sql
-- Topik: Fungsi UPPER dan LOWER
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Fungsi UPPER() mengubah seluruh huruf menjadi kapital.
-- Fungsi LOWER() mengubah seluruh huruf menjadi kecil.

-- Standardisasi format teks nama dan email pelanggan
SELECT 
    CustomerId,
    UPPER(LastName) AS NamaBelakangKapital,
    LOWER(Email) AS EmailHurufKecil
FROM Customer
LIMIT 6;
