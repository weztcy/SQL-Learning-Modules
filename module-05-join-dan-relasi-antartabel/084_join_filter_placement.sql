-- ====================================================================
-- Modul: 05 - JOIN dan Relasi Antartabel
-- File : 084_join_filter_placement.sql
-- Topik: Penempatan Filter dalam Join (ON vs WHERE)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Pada LEFT JOIN, filter di klausa ON menyaring tabel kanan sebelum proses join,
-- sedangkan filter di WHERE menyaring baris setelah seluruh proses join selesai.

-- Filter di klausa ON: seluruh artis tetap muncul, tetapi kolom album hanya muncul jika AlbumId <= 5
SELECT 
    art.ArtistId,
    art.Name AS NamaArtis,
    alb.AlbumId,
    alb.Title AS JudulAlbum
FROM Artist AS art
LEFT JOIN Album AS alb 
    ON art.ArtistId = alb.ArtistId AND alb.AlbumId <= 5
WHERE art.ArtistId <= 10
ORDER BY art.ArtistId ASC;
