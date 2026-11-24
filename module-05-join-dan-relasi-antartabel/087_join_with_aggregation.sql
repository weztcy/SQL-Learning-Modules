-- ====================================================================
-- Modul: 05 - JOIN dan Relasi Antartabel
-- File : 087_join_with_aggregation.sql
-- Topik: Join dengan Agregasi
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Menggabungkan tabel lalu melakukan pengelompokan (GROUP BY) dan fungsi agregat.

-- Menghitung total album yang dimiliki oleh masing-masing artis
SELECT 
    art.ArtistId,
    art.Name AS NamaArtis,
    COUNT(alb.AlbumId) AS TotalAlbum
FROM Artist AS art
INNER JOIN Album AS alb ON art.ArtistId = alb.ArtistId
GROUP BY art.ArtistId, art.Name
HAVING COUNT(alb.AlbumId) >= 5
ORDER BY TotalAlbum DESC;
