-- ====================================================================
-- Modul: 14 - Triggers dan Otomatisasi Database
-- File : 233_before_update_trigger.sql
-- Topik: BEFORE UPDATE Trigger
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Trigger BEFORE UPDATE memvalidasi atau mencegah perubahan yang tidak diinginkan.

CREATE TEMP TABLE DemoHargaTrack (TrackId INTEGER PRIMARY KEY, Harga NUMERIC);
INSERT INTO DemoHargaTrack VALUES (1, 0.99);

CREATE TRIGGER trg_CegahHargaNegatif
BEFORE UPDATE ON DemoHargaTrack
FOR EACH ROW
WHEN NEW.Harga < 0
BEGIN
    SELECT RAISE(ABORT, 'Harga tidak boleh negatif');
END;

UPDATE DemoHargaTrack SET Harga = 1.29 WHERE TrackId = 1;

SELECT * FROM DemoHargaTrack;
