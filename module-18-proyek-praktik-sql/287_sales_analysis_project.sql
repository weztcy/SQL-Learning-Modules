-- ====================================================================
-- Modul: 18 - Proyek Praktik SQL
-- File : 287_sales_analysis_project.sql
-- Topik: Proyek Analisis Penjualan Lintas Waktu
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Menghitung pendapatan penjualan bulanan dan tren pertumbuhan
SELECT 
    STRFTIME('%Y-%m', InvoiceDate) AS PeriodeBulan,
    COUNT(InvoiceId) AS JumlahTransaksi,
    ROUND(SUM(Total), 2) AS OmsetBulanan,
    ROUND(AVG(Total), 2) AS RataRataKeranjang
FROM Invoice
GROUP BY STRFTIME('%Y-%m', InvoiceDate)
ORDER BY PeriodeBulan ASC
LIMIT 6;
