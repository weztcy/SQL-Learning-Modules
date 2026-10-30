-- ====================================================================
-- Modul: 02 - SELECT, Filtering, dan Sorting
-- File : 016_where_clause.sql
-- Topik: Klausa WHERE
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Klausa WHERE digunakan untuk menyaring baris data berdasarkan kriteria tertentu.
-- Hanya baris yang memenuhi kondisi bernilai TRUE yang akan disertakan dalam hasil.

-- Mengambil data faktur (Invoice) dengan nilai Total lebih besar dari 15.00
SELECT 
    InvoiceId,
    CustomerId,
    InvoiceDate,
    BillingCountry,
    Total
FROM Invoice
WHERE Total > 15.00
ORDER BY Total DESC
LIMIT 5;
