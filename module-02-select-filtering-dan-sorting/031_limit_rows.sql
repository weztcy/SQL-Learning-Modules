-- ====================================================================
-- Modul: 02 - SELECT, Filtering, dan Sorting
-- File : 031_limit_rows.sql
-- Topik: Pembatasan Jumlah Baris dengan LIMIT
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Klausa LIMIT membatasi jumlah baris maksimum yang dikembalikan query.
-- Sangat penting untuk paginasi data dan menghindari pembacaan data yang berlebihan.

-- Mengambil tepat 5 album pertama
SELECT 
    AlbumId,
    Title,
    ArtistId
FROM Album
ORDER BY AlbumId ASC
LIMIT 5;
