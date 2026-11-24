-- ====================================================================
-- Modul: 17 - Import, Export, JSON, dan Data Cleaning
-- File : 278_data_quality_checks.sql
-- Topik: Pemeriksaan Kualitas Data (Data Quality Assurance)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Melakukan audit otomatis untuk memastikan tidak ada pelanggaran integritas data.

SELECT 
    SUM(CASE WHEN Total <= 0 THEN 1 ELSE 0 END) AS AnomaliTotalNegatif,
    SUM(CASE WHEN CustomerId IS NULL THEN 1 ELSE 0 END) AS AnomaliCustomerKosong,
    SUM(CASE WHEN InvoiceDate > CURRENT_DATE THEN 1 ELSE 0 END) AS AnomaliTanggalMasaDepan
FROM Invoice;
