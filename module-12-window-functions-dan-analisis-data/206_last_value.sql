-- ====================================================================
-- Modul: 12 - Window Functions dan Analisis Data
-- File : 206_last_value.sql
-- Topik: Fungsi LAST_VALUE()
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- LAST_VALUE() mengambil nilai baris terakhir dalam frame window aktif.
-- Memerlukan penentuan frame eksplisit: ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING.

SELECT 
    AlbumId,
    TrackId,
    Name,
    LAST_VALUE(Name) OVER (
        PARTITION BY AlbumId 
        ORDER BY TrackId ASC
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS LaguPenutupAlbum
FROM Track
WHERE AlbumId = 1;
