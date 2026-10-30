-- ====================================================================
-- Modul: 07 - Manipulasi Data atau DML
-- File : 116_update_basic.sql
-- Topik: UPDATE Data Dasar
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Perintah UPDATE digunakan untuk memperbarui nilai data yang sudah ada di tabel.

CREATE TEMP TABLE DemoTrack AS SELECT * FROM Track WHERE TrackId <= 5;

-- Menaikkan harga seluruh lagu pada tabel demo
UPDATE DemoTrack
SET UnitPrice = 1.99;

SELECT TrackId, Name, UnitPrice FROM DemoTrack;
