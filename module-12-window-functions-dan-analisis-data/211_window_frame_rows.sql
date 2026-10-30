-- ====================================================================
-- Modul: 12 - Window Functions dan Analisis Data
-- File : 211_window_frame_rows.sql
-- Topik: Window Frame ROWS
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Klausul ROWS menentukan ukuran bingkai berdasarkan jumlah baris fisik.

SELECT 
    InvoiceId,
    Total,
    SUM(Total) OVER (
        ORDER BY InvoiceId ASC
        ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING
    ) AS JumlahJendela3Baris
FROM Invoice
LIMIT 6;
