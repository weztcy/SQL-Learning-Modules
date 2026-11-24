-- ====================================================================
-- Modul: 05 - JOIN dan Relasi Antartabel
-- File : 086_semi_join.sql
-- Topik: Pola Semi Join
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Semi Join mengembalikan baris tabel kiri yang memiliki minimal satu kecocokan di tabel kanan,
-- tanpa menduplikasi baris tabel kiri jika ada banyak pasangan. Biasanya diimplementasikan dengan EXISTS.

-- Menampilkan artis yang memiliki setidaknya satu album
SELECT 
    art.ArtistId,
    art.Name
FROM Artist AS art
WHERE EXISTS (
    SELECT 1 
    FROM Album AS alb 
    WHERE alb.ArtistId = art.ArtistId
)
ORDER BY art.ArtistId ASC
LIMIT 8;
