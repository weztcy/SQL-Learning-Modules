-- ====================================================================
-- Modul: 05 - JOIN dan Relasi Antartabel
-- File : 081_composite_key_join.sql
-- Topik: Join dengan Composite Key
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Composite Key Join menghubungkan tabel menggunakan lebih dari satu kolom kunci relasi.
-- Tabel PlaylistTrack memiliki composite primary key (PlaylistId, TrackId).

SELECT 
    pt.PlaylistId,
    p.Name AS NamaPlaylist,
    t.TrackId,
    t.Name AS JudulLagu
FROM PlaylistTrack AS pt
INNER JOIN Playlist AS p ON pt.PlaylistId = p.PlaylistId
INNER JOIN Track AS t ON pt.TrackId = t.TrackId
WHERE pt.PlaylistId = 1
LIMIT 8;
