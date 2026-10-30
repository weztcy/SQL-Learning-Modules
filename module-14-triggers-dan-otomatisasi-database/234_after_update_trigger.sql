-- ====================================================================
-- Modul: 14 - Triggers dan Otomatisasi Database
-- File : 234_after_update_trigger.sql
-- Topik: AFTER UPDATE Trigger
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Trigger AFTER UPDATE merekam jejak perubahan data (perubahan nilai OLD ke NEW).

CREATE TEMP TABLE DemoKaryawanGaji (EmpId INTEGER PRIMARY KEY, Gaji NUMERIC);
CREATE TEMP TABLE LogKenaikanGaji (LogId INTEGER PRIMARY KEY AUTOINCREMENT, EmpId INTEGER, GajiLama NUMERIC, GajiBaru NUMERIC);

INSERT INTO DemoKaryawanGaji VALUES (1, 5000000);

CREATE TRIGGER trg_AuditGaji
AFTER UPDATE OF Gaji ON DemoKaryawanGaji
FOR EACH ROW
BEGIN
    INSERT INTO LogKenaikanGaji (EmpId, GajiLama, GajiBaru)
    VALUES (OLD.EmpId, OLD.Gaji, NEW.Gaji);
END;

UPDATE DemoKaryawanGaji SET Gaji = 5500000 WHERE EmpId = 1;

SELECT * FROM LogKenaikanGaji;
