-- ====================================================================
-- Modul: 04 - Agregasi dan Pengelompokan Data
-- File : 057_count_distinct.sql
-- Topik: COUNT(DISTINCT ...)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- COUNT(DISTINCT NamaKolom) menghitung jumlah nilai unik yang berbeda (non-duplikat).

-- Menghitung jumlah negara unik tempat pelanggan berasal
SELECT 
    COUNT(Country) AS TotalBarisNegara,
    COUNT(DISTINCT Country) AS JumlahNegaraUnik
FROM Customer;
