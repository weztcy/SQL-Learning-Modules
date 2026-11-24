-- ====================================================================
-- Modul: 07 - Manipulasi Data atau DML
-- File : 120_delete_basic.sql
-- Topik: DELETE Data Dasar
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Perintah DELETE FROM menghapus baris dari tabel.

CREATE TEMP TABLE DemoArtist AS SELECT * FROM Artist WHERE ArtistId <= 5;

-- Menghapus seluruh baris di tabel demo
DELETE FROM DemoArtist;

-- Memastikan tabel sekarang kosong (COUNT = 0)
SELECT COUNT(*) AS SisaBaris FROM DemoArtist;
