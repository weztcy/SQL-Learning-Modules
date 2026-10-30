-- ====================================================================
-- Modul: 04 - Agregasi dan Pengelompokan Data
-- File : 067_group_by_expressions.sql
-- Topik: Pengelompokan Berdasarkan Ekspresi
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- GROUP BY dapat mengelompokkan berdasarkan hasil ekspresi fungsi, seperti fungsi tanggal.

-- Menganalisis total penjualan tahunan berdasarkan ekstraksi tahun dari InvoiceDate
SELECT 
    STRFTIME('%Y', InvoiceDate) AS TahunPenjualan,
    COUNT(*) AS JumlahTransaksi,
    ROUND(SUM(Total), 2) AS TotalOmset
FROM Invoice
GROUP BY STRFTIME('%Y', InvoiceDate)
ORDER BY TahunPenjualan ASC;
