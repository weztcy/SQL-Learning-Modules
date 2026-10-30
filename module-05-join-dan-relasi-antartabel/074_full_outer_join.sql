-- ====================================================================
-- Modul: 05 - JOIN dan Relasi Antartabel
-- File : 074_full_outer_join.sql
-- Topik: FULL OUTER JOIN
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- FULL OUTER JOIN mengembalikan baris ketika ada kecocokan di salah satu tabel,
-- baik kiri maupun kanan.
-- Di SQLite / MySQL tradisional, FULL OUTER JOIN dapat dicapai dengan menggabungkan
-- LEFT JOIN dan RIGHT JOIN (atau anti-join kanan) menggunakan operator UNION.

-- Menggabungkan seluruh data artis dan album dengan pendekatan UNION
SELECT 
    art.ArtistId,
    art.Name AS NamaArtis,
    alb.Title AS JudulAlbum
FROM Artist AS art
LEFT JOIN Album AS alb ON art.ArtistId = alb.ArtistId
WHERE art.ArtistId BETWEEN 1 AND 10

UNION

SELECT 
    art.ArtistId,
    art.Name AS NamaArtis,
    alb.Title AS JudulAlbum
FROM Album AS alb
LEFT JOIN Artist AS art ON alb.ArtistId = art.ArtistId
WHERE alb.ArtistId BETWEEN 1 AND 10;
