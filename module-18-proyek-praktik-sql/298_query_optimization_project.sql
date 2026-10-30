-- ====================================================================
-- Modul: 18 - Proyek Praktik SQL
-- File : 298_query_optimization_project.sql
-- Topik: Proyek Optimasi Kueri Database
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Mengoptimalkan kueri pencarian lagu berdasarkan artis dan album
EXPLAIN QUERY PLAN
SELECT 
    art.Name AS Artis,
    alb.Title AS Album,
    t.Name AS Lagu
FROM Track AS t
INNER JOIN Album AS alb ON t.AlbumId = alb.AlbumId
INNER JOIN Artist AS art ON alb.ArtistId = art.ArtistId
WHERE art.Name = 'Queen' AND t.UnitPrice = 0.99;
