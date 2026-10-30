-- ====================================================================
-- Modul: 16 - Query Optimization dan Performance
-- File : 254_index_selectivity.sql
-- Topik: Selektivitas Index (Index Selectivity)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Selektivitas dihitung: (Jumlah Nilai Unik / Total Jumlah Baris).
-- Semakin mendekati 1.0 (sangat selektif, misal Email/ID), semakin efektif penggunaan index.
-- Kolom dengan kardinalitas rendah (misal: Jenis Kelamin atau Status) kurang efektif diindeks.

SELECT 
    'CustomerId' AS NamaKolom,
    COUNT(DISTINCT CustomerId) * 1.0 / COUNT(*) AS RasioSelektivitas
FROM Customer

UNION ALL

SELECT 
    'Country',
    COUNT(DISTINCT Country) * 1.0 / COUNT(*)
FROM Customer;
