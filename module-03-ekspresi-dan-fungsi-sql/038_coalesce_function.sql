-- ====================================================================
-- Modul: 03 - Ekspresi dan Fungsi SQL
-- File : 038_coalesce_function.sql
-- Topik: Fungsi COALESCE
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Fungsi COALESCE(val1, val2, ...) mengembalikan argumen pertama yang tidak bernilai NULL.
-- Sangat ideal untuk menyediakan nilai fallback atau default ketika data kosong.

-- Jika nama perusahaan (Company) bernilai NULL, ganti dengan 'Pelanggan Individu'
SELECT 
    CustomerId,
    FirstName || ' ' || LastName AS NamaPelanggan,
    COALESCE(Company, 'Pelanggan Individu') AS AfiliasiPerusahaan
FROM Customer
LIMIT 8;
