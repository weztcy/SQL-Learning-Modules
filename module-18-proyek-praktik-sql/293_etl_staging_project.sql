-- ====================================================================
-- Modul: 18 - Proyek Praktik SQL
-- File : 293_etl_staging_project.sql
-- Topik: Pipeline ETL (Extract, Transform, Load) dan Staging
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- 1. Extract & Transform ke tabel staging
CREATE TEMP TABLE StagingInvoiceClean AS
SELECT 
    InvoiceId,
    CustomerId,
    InvoiceDate,
    BillingCountry,
    Total,
    CASE WHEN Total >= 10.00 THEN 'HIGH' ELSE 'STANDARD' END AS SalesClass
FROM Invoice
WHERE Total > 0;

-- 2. Memeriksa hasil data yang siap dimuat (load) ke data mart
SELECT SalesClass, COUNT(*) AS JumlahTransaksi, ROUND(SUM(Total), 2) AS TotalNilai
FROM StagingInvoiceClean
GROUP BY SalesClass;
