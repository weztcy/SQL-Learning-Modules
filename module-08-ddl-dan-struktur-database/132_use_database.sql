-- ====================================================================
-- Modul: 08 - DDL dan Struktur Database
-- File : 132_use_database.sql
-- Topik: Memilih Database Aktif (USE Database)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Pada MySQL, perintah 'USE nama_database;' memilih database konteks kerja aktif.
-- Di SQLite atau PostgreSQL, koneksi terikat pada database spesifik atau menggunakan schema qualifier.

-- Memeriksa nama skema tabel yang sedang aktif
SELECT name, type FROM sqlite_master WHERE type = 'table' LIMIT 5;
