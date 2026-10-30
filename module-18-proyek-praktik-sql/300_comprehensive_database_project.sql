-- ====================================================================
-- Modul: 18 - Proyek Praktik SQL
-- File : 300_comprehensive_database_project.sql
-- Topik: Proyek Database Terpadu (Capstone Project)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Laporan Terpadu Penjualan Musik Digital:
-- Menggabungkan JOIN multi-tabel, Agregasi, dan Window Function
WITH RingkasanGenreToko AS (
    SELECT 
        g.Name AS NamaGenre,
        COUNT(il.InvoiceLineId) AS TotalLaguTerjual,
        ROUND(SUM(il.UnitPrice * il.Quantity), 2) AS TotalOmsetGenre
    FROM Genre AS g
    INNER JOIN Track AS t ON g.GenreId = t.GenreId
    INNER JOIN InvoiceLine AS il ON t.TrackId = il.TrackId
    GROUP BY g.GenreId, g.Name
)
SELECT 
    NamaGenre,
    TotalLaguTerjual,
    TotalOmsetGenre,
    DENSE_RANK() OVER (ORDER BY TotalOmsetGenre DESC) AS PeringkatOmset,
    ROUND((TotalOmsetGenre * 100.0) / (SELECT SUM(TotalOmsetGenre) FROM RingkasanGenreToko), 2) AS PangsaPasarPersen
FROM RingkasanGenreToko
ORDER BY TotalOmsetGenre DESC
LIMIT 8;
