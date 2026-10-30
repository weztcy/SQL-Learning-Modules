-- ====================================================================
-- Modul: 09 - Constraints dan Relasi Database
-- File : 164_one_to_many_relationship.sql
-- Topik: Relasi One-to-Many (Satu ke Banyak)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Relasi One-to-Many adalah relasi paling fundamental: satu entitas induk
-- (misal: Artist) dapat memiliki banyak rekaman anak (misal: Album).

SELECT 
    art.ArtistId,
    art.Name AS NamaArtis,
    COUNT(alb.AlbumId) AS JumlahAlbum
FROM Artist AS art
INNER JOIN Album AS alb ON art.ArtistId = alb.ArtistId
WHERE art.ArtistId IN (1, 2, 3)
GROUP BY art.ArtistId, art.Name;
