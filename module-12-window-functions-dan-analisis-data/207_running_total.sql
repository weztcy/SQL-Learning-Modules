-- ====================================================================
-- Modul: 12 - Window Functions dan Analisis Data
-- File : 207_running_total.sql
-- Topik: Running Total (Total Berjalan Akumulatif)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Running Total menjumlahkan nilai secara akumulatif dari baris awal hingga baris saat ini.

SELECT 
    InvoiceId,
    CustomerId,
    InvoiceDate,
    Total,
    ROUND(SUM(Total) OVER (
        PARTITION BY CustomerId 
        ORDER BY InvoiceDate ASC, InvoiceId ASC
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ), 2) AS TotalBelanjaBerjalan
FROM Invoice
WHERE CustomerId IN (1, 2)
ORDER BY CustomerId, InvoiceDate;
