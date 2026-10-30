-- ====================================================================
-- Modul: 04 - Agregasi dan Pengelompokan Data
-- File : 060_min_max_functions.sql
-- Topik: Fungsi MIN dan MAX
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- MIN(): mengambil nilai terendah (angka terkecil, tanggal terawal, atau huruf alfabet awal).
-- MAX(): mengambil nilai tertinggi (angka terbesar, tanggal terbaru, atau huruf alfabet akhir).

-- Mengambil transaksi faktur terendah, tertinggi, tanggal transaksi pertama, dan terakhir
SELECT 
    MIN(Total) AS TransaksiTerendah,
    MAX(Total) AS TransaksiTertinggi,
    MIN(InvoiceDate) AS TransaksiPertama,
    MAX(InvoiceDate) AS TransaksiTerakhir
FROM Invoice;
