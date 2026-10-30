-- ====================================================================
-- Modul: 18 - Proyek Praktik SQL
-- File : 288_music_store_analysis_project.sql
-- Topik: Analisis Toko Musik Menggunakan Chinook Database
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Menemukan 5 Artis terlaris berdasarkan total pendapatan transaksi di Chinook
SELECT 
    art.Name AS NamaArtis,
    COUNT(il.InvoiceLineId) AS JumlahTrackTerjual,
    ROUND(SUM(il.UnitPrice * il.Quantity), 2) AS TotalPendapatanArtis
FROM Artist AS art
INNER JOIN Album AS alb ON art.ArtistId = alb.ArtistId
INNER JOIN Track AS t ON alb.AlbumId = t.AlbumId
INNER JOIN InvoiceLine AS il ON t.TrackId = il.TrackId
GROUP BY art.ArtistId, art.Name
ORDER BY TotalPendapatanArtis DESC
LIMIT 5;
