-- ====================================================================
-- Modul: 03 - Ekspresi dan Fungsi SQL
-- File : 041_convert_function.sql
-- Topik: Konversi Tipe Data dengan CONVERT
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Fungsi CONVERT(tipe, ekspresi) spesifik pada SQL Server / MySQL.
-- Contoh SQL Server: CONVERT(VARCHAR(10), InvoiceDate, 120).
-- Di SQLite / ANSI SQL, konversi menggunakan fungsi CAST:

-- Konversi eksplisit kompatibel SQLite/ANSI
SELECT 
    InvoiceId,
    Total,
    CAST(Total AS TEXT) AS TotalTeks
FROM Invoice
LIMIT 5;
