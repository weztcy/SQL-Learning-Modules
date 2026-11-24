-- ====================================================================
-- Modul: 05 - JOIN dan Relasi Antartabel
-- File : 088_join_duplicate_rows.sql
-- Topik: Identifikasi dan Penanganan Duplikasi Akibat Join
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Join one-to-many (1 artis memiliki banyak album) akan mereplikasi baris artis
-- sebanyak jumlah album yang dimilikinya. DISTINCT digunakan jika hanya ingin daftar unik.

-- Menampilkan daftar unik artis yang memiliki album
SELECT DISTINCT 
    art.ArtistId,
    art.Name AS NamaArtis
FROM Artist AS art
INNER JOIN Album AS alb ON art.ArtistId = alb.ArtistId
ORDER BY art.ArtistId ASC
LIMIT 8;
