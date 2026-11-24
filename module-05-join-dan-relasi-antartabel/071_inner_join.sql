-- ====================================================================
-- Modul: 05 - JOIN dan Relasi Antartabel
-- File : 071_inner_join.sql
-- Topik: INNER JOIN
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- INNER JOIN mengembalikan baris yang memiliki kecocokan di kedua tabel
-- berdasarkan predikat penghubung (biasanya Primary Key dan Foreign Key).

-- Menghubungkan tabel Album dengan Artist berdasarkan ArtistId
SELECT 
    alb.AlbumId,
    alb.Title AS JudulAlbum,
    art.Name AS NamaArtis
FROM Album AS alb
INNER JOIN Artist AS art 
    ON alb.ArtistId = art.ArtistId
ORDER BY alb.AlbumId ASC
LIMIT 8;
