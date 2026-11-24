-- ====================================================================
-- Modul: 12 - Window Functions dan Analisis Data
-- File : 204_lead_function.sql
-- Topik: Fungsi LEAD()
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- LEAD(kolom, offset) mengakses nilai dari baris setelahnya (mendatang) dalam urutan window.

SELECT 
    InvoiceId,
    CustomerId,
    InvoiceDate,
    Total,
    LEAD(Total, 1) OVER (PARTITION BY CustomerId ORDER BY InvoiceDate ASC) AS TransaksiBerikutnya
FROM Invoice
WHERE CustomerId = 2;
