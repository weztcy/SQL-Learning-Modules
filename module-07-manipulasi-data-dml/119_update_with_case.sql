-- ====================================================================
-- Modul: 07 - Manipulasi Data atau DML
-- File : 119_update_with_case.sql
-- Topik: Update Menggunakan Ekspresi CASE
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Menggunakan CASE di dalam klausa SET memungkinkan pembaruan data
-- dengan nilai yang berbeda-beda tergantung kondisi masing-masing baris.

CREATE TEMP TABLE DemoInvoice AS SELECT * FROM Invoice WHERE InvoiceId <= 6;

-- Memberikan penyesuaian diskon berdasarkan nominal total faktur
UPDATE DemoInvoice
SET Total = CASE 
    WHEN Total > 10.00 THEN Total * 0.90  -- Diskon 10%
    ELSE Total * 0.95                     -- Diskon 5%
END;

SELECT InvoiceId, Total FROM DemoInvoice;
