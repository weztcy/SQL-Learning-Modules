-- ====================================================================
-- Modul: 08 - DDL dan Struktur Database
-- File : 148_auto_increment_mysql.sql
-- Topik: AUTO_INCREMENT (MySQL / SQLite)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Pada MySQL digunakan kata kunci AUTO_INCREMENT pada primary key.
-- Di SQLite, INTEGER PRIMARY KEY AUTOINCREMENT menjamin nomor ID selalu meningkat secara unik
-- dan tidak pernah mendaur ulang nomor ID yang telah dihapus.

CREATE TEMP TABLE DemoAutoInc (
    Kode INTEGER PRIMARY KEY AUTOINCREMENT,
    NamaProduk TEXT
);

INSERT INTO DemoAutoInc (NamaProduk) VALUES ('Mikrofon Studio'), ('Kabel XLR');

SELECT * FROM DemoAutoInc;
