-- ====================================================================
-- Modul: 12 - Window Functions dan Analisis Data
-- File : 213_top_n_per_group.sql
-- Topik: Mengambil Top N Per Grup
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Kombinasi CTE dan ROW_NUMBER() adalah teknik paling andal untuk mengambil N baris teratas per kategori.

WITH RankingLagu AS (
    SELECT 
        AlbumId,
        TrackId,
        Name,
        Milliseconds,
        ROW_NUMBER() OVER (PARTITION BY AlbumId ORDER BY Milliseconds DESC) AS RankDurasi
    FROM Track
    WHERE AlbumId IN (1, 2, 3)
)
SELECT AlbumId, TrackId, Name, Milliseconds
FROM RankingLagu
WHERE RankDurasi <= 2;
