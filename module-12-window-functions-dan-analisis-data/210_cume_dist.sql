-- ====================================================================
-- Modul: 12 - Window Functions dan Analisis Data
-- File : 210_cume_dist.sql
-- Topik: Fungsi CUME_DIST() (Cumulative Distribution)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- CUME_DIST() menghitung distribusi kumulatif: proporsi baris yang memiliki nilai <= nilai saat ini.

SELECT 
    InvoiceId,
    Total,
    ROUND(CUME_DIST() OVER (ORDER BY Total ASC), 4) AS DistribusiKumulatif
FROM Invoice
LIMIT 8;
