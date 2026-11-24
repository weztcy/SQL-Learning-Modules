-- ====================================================================
-- Modul: 12 - Window Functions dan Analisis Data
-- File : 208_moving_average.sql
-- Topik: Moving Average (Rata-rata Bergerak)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Moving average menghitung rata-rata dari rentang baris sekitar (misal: 2 baris sebelumnya + baris saat ini).

SELECT 
    InvoiceId,
    InvoiceDate,
    Total,
    ROUND(AVG(Total) OVER (
        ORDER BY InvoiceDate ASC
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ), 2) AS RataRataBergerak3Transaksi
FROM Invoice
LIMIT 8;
