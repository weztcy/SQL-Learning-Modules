-- ====================================================================
-- Modul: 01 - Pengenalan SQL dan Struktur Query
-- File : 009_table_aliases.sql
-- Topik: Alias Tabel
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Memberikan alias pada tabel pada klausa FROM menyederhanakan penulisan query,
-- terutama saat menggunakan kolom berkualifikasi atau menghubungkan beberapa tabel.

-- Menggunakan alias 'alb' untuk tabel Album
SELECT 
    alb.AlbumId,
    alb.Title,
    alb.ArtistId
FROM Album AS alb
LIMIT 5;
