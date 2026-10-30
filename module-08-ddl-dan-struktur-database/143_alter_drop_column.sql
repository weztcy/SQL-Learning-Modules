-- ====================================================================
-- Modul: 08 - DDL dan Struktur Database
-- File : 143_alter_drop_column.sql
-- Topik: Menghapus Kolom dengan ALTER TABLE DROP COLUMN
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Standar SQL dan SQLite modern (versi 3.35.0+) mendukung penghapusan kolom secara langsung.

CREATE TEMP TABLE DemoHapusKolom (
    Id INTEGER PRIMARY KEY,
    Nama TEXT,
    KolomTakTerpakai TEXT
);

INSERT INTO DemoHapusKolom VALUES (1, 'Gitar Elektrik', 'Data Usang');

-- Menghapus kolom yang tidak lagi dibutuhkan
ALTER TABLE DemoHapusKolom DROP COLUMN KolomTakTerpakai;

SELECT * FROM DemoHapusKolom;
