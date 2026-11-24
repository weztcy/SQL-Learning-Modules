-- ====================================================================
-- Modul: 14 - Triggers dan Otomatisasi Database
-- File : 235_after_delete_trigger.sql
-- Topik: AFTER DELETE Trigger
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Trigger AFTER DELETE dieksekusi setelah baris dihapus, memungkinkan pengarsipan data.

CREATE TEMP TABLE DemoPlaylist (Id INTEGER PRIMARY KEY, Nama TEXT);
CREATE TEMP TABLE TempatSampahPlaylist (Id INTEGER, Nama TEXT, WaktuHapus DATETIME DEFAULT CURRENT_TIMESTAMP);

INSERT INTO DemoPlaylist VALUES (1, 'Koleksi Klasik');

CREATE TRIGGER trg_ArsipHapusPlaylist
AFTER DELETE ON DemoPlaylist
FOR EACH ROW
BEGIN
    INSERT INTO TempatSampahPlaylist (Id, Nama) VALUES (OLD.Id, OLD.Nama);
END;

DELETE FROM DemoPlaylist WHERE Id = 1;

SELECT * FROM TempatSampahPlaylist;
