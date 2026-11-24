-- ====================================================================
-- Modul: 16 - Query Optimization dan Performance
-- File : 259_join_performance.sql
-- Topik: Analisis Performa Relasi Join
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Memeriksa rencana join antartabel besar untuk memastikan foreign key diindeks dengan benar.

EXPLAIN QUERY PLAN
SELECT 
    t.Name AS Lagu,
    alb.Title AS Album,
    art.Name AS Artis
FROM Track AS t
INNER JOIN Album AS alb ON t.AlbumId = alb.AlbumId
INNER JOIN Artist AS art ON alb.ArtistId = art.ArtistId
WHERE art.Name = 'AC/DC';
