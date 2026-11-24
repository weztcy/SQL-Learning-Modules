-- ====================================================================
-- Modul: 08 - DDL dan Struktur Database
-- File : 145_drop_table.sql
-- Topik: Menghapus Tabel dengan DROP TABLE
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- DROP TABLE menghapus definisi tabel beserta seluruh data di dalamnya secara permanen.
-- Klausul IF EXISTS mencegah timbulnya pesan kesalahan jika tabel target tidak ditemukan.

CREATE TEMP TABLE DemoTabelHapus (Id INTEGER);

-- Menghapus tabel dengan aman
DROP TABLE IF EXISTS DemoTabelHapus;

SELECT 'Tabel berhasil dihapus tanpa error' AS Konfirmasi;
