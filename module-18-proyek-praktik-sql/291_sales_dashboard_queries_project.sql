-- ====================================================================
-- Modul: 18 - Proyek Praktik SQL
-- File : 291_sales_dashboard_queries_project.sql
-- Topik: Kumpulan Query untuk Dashboard Eksekutif Penjualan
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Kartu Metrik Utama (Executive Summary Cards)
SELECT 
    (SELECT COUNT(*) FROM Customer) AS TotalPelanggan,
    (SELECT COUNT(*) FROM Invoice) AS TotalPesanan,
    (SELECT ROUND(SUM(Total), 2) FROM Invoice) AS TotalPendapatanGlobal,
    (SELECT ROUND(AVG(Total), 2) FROM Invoice) AS RataRataNilaiTransaksi,
    (SELECT COUNT(DISTINCT BillingCountry) FROM Invoice) AS JangkauanNegara;
