-- ====================================================================
-- Modul: 01 - Pengenalan SQL dan Struktur Query
-- File : 015_sql_client_execution.sql
-- Topik: Menjalankan Skrip SQL Melalui Client Database
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Client database dapat menjalankan beberapa perintah SQL yang dipisahkan oleh titik koma (;).
-- Client mengeksekusi statement secara berurutan dalam satu sesi.

-- Perintah 1: Menghitung total jumlah artis di database Chinook
SELECT COUNT(*) AS TotalArtis FROM Artist;

-- Perintah 2: Menampilkan 3 album pertama
SELECT AlbumId, Title, ArtistId FROM Album LIMIT 3;
