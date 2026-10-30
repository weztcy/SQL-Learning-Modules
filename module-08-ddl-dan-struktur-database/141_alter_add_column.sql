-- ====================================================================
-- Modul: 08 - DDL dan Struktur Database
-- File : 141_alter_add_column.sql
-- Topik: Menambahkan Kolom dengan ALTER TABLE ADD COLUMN
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- ALTER TABLE ... ADD COLUMN menambahkan kolom baru ke dalam tabel yang sudah ada.

CREATE TEMP TABLE DemoAlter (Id INTEGER PRIMARY KEY, Judul TEXT);
INSERT INTO DemoAlter VALUES (1, 'Rock Anthem');

-- Menambahkan kolom baru 'TahunRilis'
ALTER TABLE DemoAlter ADD COLUMN TahunRilis INTEGER DEFAULT 2026;

SELECT * FROM DemoAlter;
