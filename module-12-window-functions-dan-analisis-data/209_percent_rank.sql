-- ====================================================================
-- Modul: 12 - Window Functions dan Analisis Data
-- File : 209_percent_rank.sql
-- Topik: Fungsi PERCENT_RANK()
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- PERCENT_RANK() menghitung peringkat relatif suatu baris dalam rentang persentase 0.0 hingga 1.0.

SELECT 
    InvoiceId,
    Total,
    ROUND(PERCENT_RANK() OVER (ORDER BY Total ASC), 4) AS PeringkatPersentil
FROM Invoice
LIMIT 8;
