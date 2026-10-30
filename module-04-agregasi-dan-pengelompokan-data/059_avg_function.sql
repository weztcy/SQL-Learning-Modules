-- ====================================================================
-- Modul: 04 - Agregasi dan Pengelompokan Data
-- File : 059_avg_function.sql
-- Topik: Fungsi AVG
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Fungsi AVG() menghitung nilai rata-rata aritmetika dari kolom numerik.

-- Menghitung rata-rata nilai transaksi faktur dan rata-rata durasi lagu dalam detik
SELECT 
    ROUND(AVG(Total), 2) AS RataRataNilaiFaktur
FROM Invoice;
