-- ====================================================================
-- Modul: 08 - DDL dan Struktur Database
-- File : 147_create_table_as_select.sql
-- Topik: Membuat Tabel dari Query (CTAS: CREATE TABLE AS SELECT)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- CTAS menyalin struktur kolom sekaligus mengisi datanya langsung dari hasil query SELECT.

CREATE TEMP TABLE RingkasanArtisPopuler AS
SELECT 
    art.ArtistId,
    art.Name AS NamaArtis,
    COUNT(alb.AlbumId) AS TotalAlbum
FROM Artist AS art
INNER JOIN Album AS alb ON art.ArtistId = alb.ArtistId
GROUP BY art.ArtistId, art.Name
HAVING COUNT(alb.AlbumId) >= 5;

SELECT * FROM RingkasanArtisPopuler ORDER BY TotalAlbum DESC;
