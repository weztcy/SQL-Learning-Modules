-- ====================================================================
-- Modul: 05 - JOIN dan Relasi Antartabel
-- File : 089_bridge_table_join.sql
-- Topik: Join Melalui Bridge Table (Many-to-Many Relationship)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Hubungan many-to-many antara Playlist dan Track dihubungkan melalui bridge table: PlaylistTrack.

-- Mengambil daftar lagu yang terdapat dalam playlist 'Brazilian Music'
SELECT 
    p.PlaylistId,
    p.Name AS NamaPlaylist,
    t.TrackId,
    t.Name AS JudulLagu
FROM Playlist AS p
INNER JOIN PlaylistTrack AS pt ON p.PlaylistId = pt.PlaylistId
INNER JOIN Track AS t ON pt.TrackId = t.TrackId
WHERE p.Name = 'Brazilian Music'
LIMIT 8;
