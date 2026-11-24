-- ====================================================================
-- Modul: 02 - SELECT, Filtering, dan Sorting
-- File : 032_offset_pagination.sql
-- Topik: Pagination dengan OFFSET
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- OFFSET menentukan jumlah baris awal yang dilewati sebelum mulai mengambil baris data.
-- Kombinasi LIMIT n OFFSET m digunakan untuk implementasi paginasi pada aplikasi.

-- Mengambil halaman kedua data Customer (halaman per 5 baris, melewati 5 baris pertama)
SELECT 
    CustomerId,
    FirstName,
    LastName,
    Country
FROM Customer
ORDER BY CustomerId ASC
LIMIT 5 OFFSET 5;
