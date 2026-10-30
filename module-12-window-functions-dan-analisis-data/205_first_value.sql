-- ====================================================================
-- Modul: 12 - Window Functions dan Analisis Data
-- File : 205_first_value.sql
-- Topik: Fungsi FIRST_VALUE()
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- FIRST_VALUE() mengembalikan nilai baris pertama dalam jendela bingkai (window frame).

-- Membandingkan harga setiap lagu dengan harga lagu pertama di album terkait
SELECT 
    AlbumId,
    Name,
    Milliseconds,
    FIRST_VALUE(Name) OVER (PARTITION BY AlbumId ORDER BY TrackId ASC) AS LaguPembukaAlbum
FROM Track
WHERE AlbumId = 1;
