-- ====================================================================
-- Modul: 12 - Window Functions dan Analisis Data
-- File : 215_period_over_period_analysis.sql
-- Topik: Analisis Perubahan Antar Periode (Growth / Period-over-Period)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Menghitung persentase pertumbuhan penjualan dari tahun ke tahun (Year-over-Year).

WITH PenjualanTahunan AS (
    SELECT 
        STRFTIME('%Y', InvoiceDate) AS Tahun,
        ROUND(SUM(Total), 2) AS Omset
    FROM Invoice
    GROUP BY STRFTIME('%Y', InvoiceDate)
)
SELECT 
    Tahun,
    Omset,
    LAG(Omset) OVER (ORDER BY Tahun ASC) AS OmsetTahunLalu,
    ROUND(((Omset - LAG(Omset) OVER (ORDER BY Tahun ASC)) / LAG(Omset) OVER (ORDER BY Tahun ASC)) * 100, 2) AS PertumbuhanPersen
FROM PenjualanTahunan;
