-- ====================================================================
-- Modul: 04 - Agregasi dan Pengelompokan Data
-- File : 068_rollup_aggregation.sql
-- Topik: Agregasi ROLLUP (Subtotal Bertingkat)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Klausa GROUP BY ROLLUP (PostgreSQL, MySQL, SQL Server) menghasilkan subtotal
-- hierarkis dan grand total. Di SQLite, kita dapat mensimulasikannya secara elegan
-- menggunakan UNION ALL untuk menghasilkan baris subtotal dan grand total.

-- Menghitung total penjualan per negara beserta Grand Total akhir
SELECT 
    BillingCountry AS Negara,
    ROUND(SUM(Total), 2) AS TotalPenjualan
FROM Invoice
WHERE BillingCountry IN ('USA', 'Canada', 'Brazil')
GROUP BY BillingCountry

UNION ALL

-- Baris Grand Total (simulasi ROLLUP)
SELECT 
    '=== GRAND TOTAL ===' AS Negara,
    ROUND(SUM(Total), 2) AS TotalPenjualan
FROM Invoice
WHERE BillingCountry IN ('USA', 'Canada', 'Brazil');
