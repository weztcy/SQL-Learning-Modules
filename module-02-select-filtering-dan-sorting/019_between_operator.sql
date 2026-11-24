-- ====================================================================
-- Modul: 02 - SELECT, Filtering, dan Sorting
-- File : 019_between_operator.sql
-- Topik: Operator BETWEEN
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Operator BETWEEN menyaring nilai dalam rentang inklusif (batas awal dan akhir diikutsertakan).
-- Sintaks: nilai BETWEEN batas_bawah AND batas_atas.

-- Mengambil faktur dengan Total antara 10.00 dan 15.00
SELECT 
    InvoiceId,
    InvoiceDate,
    BillingCountry,
    Total
FROM Invoice
WHERE Total BETWEEN 10.00 AND 15.00
ORDER BY Total ASC
LIMIT 5;
