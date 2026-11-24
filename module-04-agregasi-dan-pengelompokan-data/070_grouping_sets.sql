-- ====================================================================
-- Modul: 04 - Agregasi dan Pengelompokan Data
-- File : 070_grouping_sets.sql
-- Topik: GROUPING SETS
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- GROUPING SETS memungkinkan penentuan grup agregasi spesifik dalam satu statement.
-- Berikut simulasi pengelompokan tingkat Negara digabung dengan tingkat Global.

-- Agregat Level 1: Berdasarkan Negara
SELECT 
    BillingCountry AS Wilayah,
    COUNT(*) AS TotalTransaksi,
    ROUND(SUM(Total), 2) AS Omset
FROM Invoice
WHERE BillingCountry IN ('USA', 'United Kingdom')
GROUP BY BillingCountry

UNION ALL

-- Agregat Level 2: Keseluruhan (All)
SELECT 
    'Semua Wilayah Terpilih' AS Wilayah,
    COUNT(*) AS TotalTransaksi,
    ROUND(SUM(Total), 2) AS Omset
FROM Invoice
WHERE BillingCountry IN ('USA', 'United Kingdom');
