-- ====================================================================
-- Modul: 12 - Window Functions dan Analisis Data
-- File : 198_window_order_by.sql
-- Topik: Pengurutan pada Window (ORDER BY di dalam OVER)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Menambahkan ORDER BY di dalam klausa OVER() menetapkan urutan pemrosesan kumulatif baris.

SELECT 
    InvoiceId,
    InvoiceDate,
    Total,
    ROUND(SUM(Total) OVER (ORDER BY InvoiceDate ASC, InvoiceId ASC), 2) AS AkumulasiPenjualan
FROM Invoice
LIMIT 8;
