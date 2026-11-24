-- ====================================================================
-- Modul: 07 - Manipulasi Data atau DML
-- File : 123_truncate_table.sql
-- Topik: TRUNCATE TABLE vs DELETE
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- TRUNCATE TABLE (MySQL/PostgreSQL/SQL Server) menghapus seluruh data secara cepat
-- dengan mereset alokasi tabel. Di SQLite, perintah 'DELETE FROM tabel;'
-- dioptimalkan menjadi pembersihan halaman instan (truncate optimization).

CREATE TEMP TABLE DemoTruncate AS SELECT * FROM MediaType;

-- Pengosongan seluruh tabel di SQLite
DELETE FROM DemoTruncate;

SELECT COUNT(*) AS JumlahData FROM DemoTruncate;
