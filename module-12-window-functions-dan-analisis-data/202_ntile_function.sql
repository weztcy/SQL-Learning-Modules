-- ====================================================================
-- Modul: 12 - Window Functions dan Analisis Data
-- File : 202_ntile_function.sql
-- Topik: Fungsi NTILE(n)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- NTILE(n) membagi kumpulan baris secara merata ke dalam n kelompok kuantil (misal kuartil, desil).

-- Membagi data transaksi faktur ke dalam 4 kuartil nilai penjualan
SELECT 
    InvoiceId,
    Total,
    NTILE(4) OVER (ORDER BY Total ASC) AS KuartilPenjualan
FROM Invoice
LIMIT 10;
