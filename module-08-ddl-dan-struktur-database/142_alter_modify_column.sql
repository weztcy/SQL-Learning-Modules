-- ====================================================================
-- Modul: 08 - DDL dan Struktur Database
-- File : 142_alter_modify_column.sql
-- Topik: Mengubah Definisi Kolom (ALTER TABLE)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Mengubah definisi kolom (tipe data / konstrain) pada PostgreSQL/MySQL menggunakan
-- ALTER TABLE ... MODIFY / ALTER COLUMN.
-- Di SQLite, kita dapat melakukan rename kolom secara native:

CREATE TEMP TABLE DemoKolom (Id INTEGER PRIMARY KEY, NamaLama TEXT);
INSERT INTO DemoKolom VALUES (1, 'Contoh Data');

-- Mengganti nama kolom
ALTER TABLE DemoKolom RENAME COLUMN NamaLama TO NamaBaru;

SELECT * FROM DemoKolom;
