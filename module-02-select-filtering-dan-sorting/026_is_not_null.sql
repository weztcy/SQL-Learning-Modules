-- ====================================================================
-- Modul: 02 - SELECT, Filtering, dan Sorting
-- File : 026_is_not_null.sql
-- Topik: Pemeriksaan IS NOT NULL
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Predikat IS NOT NULL menyaring baris yang memiliki nilai pasti (tidak NULL).

-- Mengambil pelanggan korporat yang memiliki data instansi/perusahaan
SELECT 
    CustomerId,
    FirstName,
    LastName,
    Company,
    Country
FROM Customer
WHERE Company IS NOT NULL
LIMIT 5;
