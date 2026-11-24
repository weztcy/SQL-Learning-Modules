-- ====================================================================
-- Modul: 04 - Agregasi dan Pengelompokan Data
-- File : 056_count_function.sql
-- Topik: Fungsi COUNT
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- COUNT(*) menghitung seluruh baris termasuk baris yang berisi NULL.
-- COUNT(NamaKolom) menghitung baris yang memiliki nilai (mengabaikan NULL).

-- Menghitung total seluruh pelanggan dan total pelanggan yang mengisi Company
SELECT 
    COUNT(*) AS TotalPelanggan,
    COUNT(Company) AS TotalPelangganKorporat,
    COUNT(*) - COUNT(Company) AS TotalPelangganIndividu
FROM Customer;
