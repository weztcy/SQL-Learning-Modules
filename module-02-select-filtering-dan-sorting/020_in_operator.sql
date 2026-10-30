-- ====================================================================
-- Modul: 02 - SELECT, Filtering, dan Sorting
-- File : 020_in_operator.sql
-- Topik: Operator IN
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Operator IN digunakan untuk memeriksa apakah suatu nilai cocok dengan
-- salah satu nilai dalam daftar kumpulan yang ditentukan.

-- Mengambil pelanggan yang berasal dari Brazil, Canada, atau Germany
SELECT 
    CustomerId,
    FirstName,
    LastName,
    City,
    Country
FROM Customer
WHERE Country IN ('Brazil', 'Canada', 'Germany')
LIMIT 5;
