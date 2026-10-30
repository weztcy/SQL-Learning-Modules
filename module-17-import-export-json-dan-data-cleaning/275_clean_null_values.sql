-- ====================================================================
-- Modul: 17 - Import, Export, JSON, dan Data Cleaning
-- File : 275_clean_null_values.sql
-- Topik: Pembersihan Nilai NULL (Data Imputation)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Mengganti nilai kosong (NULL) dengan nilai standar pengganti yang konsisten.

CREATE TEMP TABLE DemoPembersihan AS 
SELECT CustomerId, FirstName, LastName, Company FROM Customer LIMIT 6;

-- Mengimputasi NULL menjadi 'Perorangan'
UPDATE DemoPembersihan
SET Company = 'Perorangan'
WHERE Company IS NULL;

SELECT * FROM DemoPembersihan;
