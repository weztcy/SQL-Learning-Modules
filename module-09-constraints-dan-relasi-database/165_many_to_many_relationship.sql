-- ====================================================================
-- Modul: 09 - Constraints dan Relasi Database
-- File : 165_many_to_many_relationship.sql
-- Topik: Relasi Many-to-Many (Banyak ke Banyak)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Relasi Many-to-Many dipecah menjadi dua relasi One-to-Many melalui
-- tabel perantara (junction / bridge table), seperti PlaylistTrack antara Playlist dan Track.

SELECT 
    p.Name AS Playlist,
    t.Name AS JudulLagu
FROM Playlist AS p
INNER JOIN PlaylistTrack AS pt ON p.PlaylistId = pt.PlaylistId
INNER JOIN Track AS t ON pt.TrackId = t.TrackId
WHERE p.PlaylistId = 8
LIMIT 5;
