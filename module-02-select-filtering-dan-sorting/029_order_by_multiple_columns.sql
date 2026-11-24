-- ====================================================================
-- Modul: 02 - SELECT, Filtering, dan Sorting
-- File : 029_order_by_multiple_columns.sql
-- Topik: Pengurutan Berdasarkan Beberapa Kolom
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Kita dapat mengurutkan berdasarkan beberapa tingkat hierarki kolom.
-- Kolom kedua hanya digunakan untuk menentukan urutan jika nilai pada kolom pertama sama.

-- Mengurutkan pelanggan berdasarkan Negara (A-Z), lalu berdasarkan Kota (A-Z)
SELECT 
    CustomerId,
    Country,
    City,
    FirstName,
    LastName
FROM Customer
ORDER BY Country ASC, City ASC
LIMIT 5;
