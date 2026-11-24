-- ====================================================================
-- Modul: 17 - Import, Export, JSON, dan Data Cleaning
-- File : 274_date_timezone_conversion.sql
-- Topik: Konversi Tanggal dan Zona Waktu
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Mengonversi format waktu UTC ke waktu lokal atau menambahkan pergeseran offset waktu.

SELECT 
    InvoiceId,
    InvoiceDate AS WaktuUTC,
    DATETIME(InvoiceDate, 'localtime') AS WaktuLokalSistem,
    DATETIME(InvoiceDate, '+7 hours') AS WaktuIndonesiaBaratWIB
FROM Invoice
LIMIT 5;
