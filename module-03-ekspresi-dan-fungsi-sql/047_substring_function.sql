-- ====================================================================
-- Modul: 03 - Ekspresi dan Fungsi SQL
-- File : 047_substring_function.sql
-- Topik: Fungsi SUBSTRING / SUBSTR
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Fungsi SUBSTR(string, posisi_mulai, panjang) mengambil potongan karakter.
-- Posisi index SQL berbasis 1 (1-indexed).

-- Mengambil kode pos 3 digit awal dan inisial nama
SELECT 
    CustomerId,
    PostalCode,
    SUBSTR(PostalCode, 1, 3) AS KodePosAwalan,
    SUBSTR(FirstName, 1, 1) || '.' || SUBSTR(LastName, 1, 1) || '.' AS Inisial
FROM Customer
WHERE PostalCode IS NOT NULL
LIMIT 6;
