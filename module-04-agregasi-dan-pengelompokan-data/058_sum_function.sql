-- ====================================================================
-- Modul: 04 - Agregasi dan Pengelompokan Data
-- File : 058_sum_function.sql
-- Topik: Fungsi SUM
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Fungsi SUM() menjumlahkan seluruh nilai numerik pada suatu kolom.

-- Menghitung total seluruh pendapatan penjualan dari tabel Invoice
SELECT 
    ROUND(SUM(Total), 2) AS TotalPendapatanPenjualan,
    COUNT(InvoiceId) AS JumlahFaktur
FROM Invoice;
