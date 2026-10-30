-- ====================================================================
-- Modul: 05 - JOIN dan Relasi Antartabel
-- File : 085_anti_join.sql
-- Topik: Pola Anti Join
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Anti Join menemukan baris di tabel kiri yang TIDAK memiliki pasangan di tabel kanan.
-- Pola ini dicapai dengan LEFT JOIN lalu menyaring kolom tabel kanan WHERE kanan.kunci IS NULL.

-- Menemukan artis yang belum memiliki satupun album di katalog musik
SELECT 
    art.ArtistId,
    art.Name AS ArtisTanpaAlbum
FROM Artist AS art
LEFT JOIN Album AS alb 
    ON art.ArtistId = alb.ArtistId
WHERE alb.AlbumId IS NULL
ORDER BY art.ArtistId ASC
LIMIT 8;
