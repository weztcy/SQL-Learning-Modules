-- ====================================================================
-- Modul: 05 - JOIN dan Relasi Antartabel
-- File : 079_join_multiple_tables.sql
-- Topik: Join Beberapa Tabel
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Relasi database relasional sering memerlukan penggabungan berantai.
-- Di sini kita menghubungkan Track -> Album -> Artist.

-- Menampilkan detail lagu, judul album, dan artis penciptanya
SELECT 
    t.TrackId,
    t.Name AS JudulLagu,
    alb.Title AS JudulAlbum,
    art.Name AS NamaArtis
FROM Track AS t
INNER JOIN Album AS alb ON t.AlbumId = alb.AlbumId
INNER JOIN Artist AS art ON alb.ArtistId = art.ArtistId
ORDER BY t.TrackId ASC
LIMIT 8;
