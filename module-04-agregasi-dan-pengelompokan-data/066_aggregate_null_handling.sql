-- ====================================================================
-- Modul: 04 - Agregasi dan Pengelompokan Data
-- File : 066_aggregate_null_handling.sql
-- Topik: Penanganan NULL dalam Agregasi
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Fungsi agregat (SUM, AVG, MIN, MAX, COUNT(kolom)) secara otomatis mengabaikan nilai NULL.
-- Namun dalam GROUP BY, seluruh nilai NULL dikelompokkan ke dalam satu grup yang sama.

-- Mengelompokkan pelanggan berdasarkan kolom Company (mengamati grup NULL)
SELECT 
    CASE WHEN Company IS NULL THEN '(Perorangan / Tanpa Perusahaan)' ELSE Company END AS NamaPerusahaan,
    COUNT(*) AS JumlahPelanggan
FROM Customer
GROUP BY Company
ORDER BY JumlahPelanggan DESC
LIMIT 5;
