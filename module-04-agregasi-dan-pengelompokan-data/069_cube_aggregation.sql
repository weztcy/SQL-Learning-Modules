-- ====================================================================
-- Modul: 04 - Agregasi dan Pengelompokan Data
-- File : 069_cube_aggregation.sql
-- Topik: Agregasi CUBE (Agregasi Multi-Dimensi)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Klausa CUBE menghasilkan seluruh kemungkinan kombinasi subtotal dari dimensi yang ditentukan.
-- Query berikut mendemonstrasikan kombinasi dimensi Tahun dan Negara.

SELECT 
    STRFTIME('%Y', InvoiceDate) AS Tahun,
    BillingCountry AS Negara,
    ROUND(SUM(Total), 2) AS TotalPenjualan
FROM Invoice
WHERE BillingCountry IN ('Germany', 'France') AND STRFTIME('%Y', InvoiceDate) IN ('2009', '2010')
GROUP BY STRFTIME('%Y', InvoiceDate), BillingCountry
ORDER BY Tahun, Negara;
