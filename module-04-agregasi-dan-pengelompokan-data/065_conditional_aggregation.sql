-- ====================================================================
-- Modul: 04 - Agregasi dan Pengelompokan Data
-- File : 065_conditional_aggregation.sql
-- Topik: Agregasi Bersyarat (Conditional Aggregation)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Menggabungkan fungsi agregasi seperti SUM() atau COUNT() dengan ekspresi CASE
-- untuk melakukan pivot data atau menghitung subset data dalam satu query.

-- Menghitung total faktur bernilai kecil (< $5) vs faktur besar (>= $5) per negara
SELECT 
    BillingCountry,
    COUNT(*) AS TotalSemuaFaktur,
    SUM(CASE WHEN Total < 5.00 THEN 1 ELSE 0 END) AS FakturKecil,
    SUM(CASE WHEN Total >= 5.00 THEN 1 ELSE 0 END) AS FakturBesar
FROM Invoice
GROUP BY BillingCountry
ORDER BY TotalSemuaFaktur DESC
LIMIT 6;
