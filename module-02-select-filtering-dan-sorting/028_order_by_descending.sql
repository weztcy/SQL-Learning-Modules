-- ====================================================================
-- Modul: 02 - SELECT, Filtering, dan Sorting
-- File : 028_order_by_descending.sql
-- Topik: Pengurutan Descending (DESC)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Kata kunci DESC mengurutkan dari nilai terbesar ke terkecil (Z-A, angka besar ke kecil).

-- Mengurutkan transaksi faktur dari nilai penjualan tertinggi ke terendah
SELECT 
    InvoiceId,
    CustomerId,
    InvoiceDate,
    Total
FROM Invoice
ORDER BY Total DESC
LIMIT 5;
