-- ====================================================================
-- Modul: 06 - Subquery, CTE, dan Set Operations
-- File : 100_subquery_in_select.sql
-- Topik: Subquery pada Klausa SELECT
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Subquery pada SELECT digunakan untuk menghitung nilai kolom komputasi skalar untuk setiap baris.

-- Menampilkan nama artis beserta total album yang dimilikinya
SELECT 
    art.ArtistId,
    art.Name,
    (SELECT COUNT(*) FROM Album AS alb WHERE alb.ArtistId = art.ArtistId) AS JumlahAlbum
FROM Artist AS art
ORDER BY JumlahAlbum DESC
LIMIT 8;
