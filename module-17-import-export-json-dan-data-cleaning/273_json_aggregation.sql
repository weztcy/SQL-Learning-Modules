-- ====================================================================
-- Modul: 17 - Import, Export, JSON, dan Data Cleaning
-- File : 273_json_aggregation.sql
-- Topik: Agregasi Data Menjadi JSON (json_group_array)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Mengagregasi baris-baris data relasional langsung menjadi array JSON atau object JSON.

SELECT 
    art.Name AS NamaArtis,
    json_group_array(alb.Title) AS DaftarAlbumJson
FROM Artist AS art
INNER JOIN Album AS alb ON art.ArtistId = alb.ArtistId
WHERE art.ArtistId IN (1, 2)
GROUP BY art.ArtistId, art.Name;
