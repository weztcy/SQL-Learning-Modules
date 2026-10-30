-- ====================================================================
-- Modul: 02 - SELECT, Filtering, dan Sorting
-- File : 035_filtering_and_sorting_combined.sql
-- Topik: Kombinasi Filtering dan Sorting
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Menggabungkan klausa WHERE untuk menyaring kriteria,
-- ORDER BY untuk mengatur urutan prioritas, dan LIMIT untuk membatasi ukuran data.

-- Mengambil 5 faktur terbesar dari pelanggan di negara 'USA'
SELECT 
    InvoiceId,
    CustomerId,
    BillingCountry,
    InvoiceDate,
    Total
FROM Invoice
WHERE BillingCountry = 'USA'
ORDER BY Total DESC, InvoiceDate ASC
LIMIT 5;
