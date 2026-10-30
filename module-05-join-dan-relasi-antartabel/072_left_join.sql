-- ====================================================================
-- Modul: 05 - JOIN dan Relasi Antartabel
-- File : 072_left_join.sql
-- Topik: LEFT JOIN (LEFT OUTER JOIN)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- LEFT JOIN mengembalikan seluruh baris dari tabel kiri (LEFT),
-- ditambah baris yang cocok dari tabel kanan. Jika tidak ada kecocokan,
-- kolom tabel kanan akan diisi nilai NULL.

-- Menampilkan seluruh artis dan albumnya (termasuk artis yang belum memiliki album)
SELECT 
    art.ArtistId,
    art.Name AS NamaArtis,
    alb.Title AS JudulAlbum
FROM Artist AS art
LEFT JOIN Album AS alb 
    ON art.ArtistId = alb.ArtistId
ORDER BY art.ArtistId ASC
LIMIT 10;
