-- ====================================================================
-- Modul: 10 - Views dan Indexes
-- File : 169_updatable_view.sql
-- Topik: Updatable View dan Trigger INSTEAD OF
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- View yang kompleks (memiliki JOIN atau agregasi) tidak dapat di-UPDATE langsung.
-- Database menyediakan INSTEAD OF trigger untuk memetakan operasi DML pada view ke tabel aslinya.

CREATE TEMP TABLE DemoTargetUpdate (Id INTEGER PRIMARY KEY, StatusTeks TEXT);
INSERT INTO DemoTargetUpdate VALUES (1, 'Pending');

CREATE TEMP VIEW v_StatusView AS SELECT * FROM DemoTargetUpdate;

CREATE TEMP TRIGGER trg_UpdateStatusView
INSTEAD OF UPDATE ON v_StatusView
BEGIN
    UPDATE DemoTargetUpdate SET StatusTeks = NEW.StatusTeks WHERE Id = OLD.Id;
END;

-- Mengubah status melalui view
UPDATE v_StatusView SET StatusTeks = 'Disetujui' WHERE Id = 1;

SELECT * FROM DemoTargetUpdate;

DROP VIEW IF EXISTS v_StatusView;
