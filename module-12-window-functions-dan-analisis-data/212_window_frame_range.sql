-- ====================================================================
-- Modul: 12 - Window Functions dan Analisis Data
-- File : 212_window_frame_range.sql
-- Topik: Window Frame RANGE
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Klausul RANGE menentukan bingkai berdasarkan nilai logika baris (peer groups).

SELECT 
    InvoiceId,
    Total,
    COUNT(*) OVER (
        ORDER BY Total ASC
        RANGE BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING
    ) AS JumlahInvoiceDenganTotalSamaAtauLebihTinggi
FROM Invoice
LIMIT 6;
