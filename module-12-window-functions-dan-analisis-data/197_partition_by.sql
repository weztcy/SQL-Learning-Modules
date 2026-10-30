-- ====================================================================
-- Modul: 12 - Window Functions dan Analisis Data
-- File : 197_partition_by.sql
-- Topik: Sub-partisi dengan PARTITION BY
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- PARTITION BY membagi baris hasil query ke dalam kelompok independen.
-- Window function dihitung ulang secara terisolasi untuk setiap partisi.

-- Menghitung total dan rata-rata pengeluaran per negara pelanggan
SELECT 
    InvoiceId,
    BillingCountry,
    Total,
    ROUND(AVG(Total) OVER (PARTITION BY BillingCountry), 2) AS RataRataNegaraIni,
    COUNT(*) OVER (PARTITION BY BillingCountry) AS TotalFakturNegaraIni
FROM Invoice
WHERE BillingCountry IN ('USA', 'Canada', 'Germany')
LIMIT 10;
