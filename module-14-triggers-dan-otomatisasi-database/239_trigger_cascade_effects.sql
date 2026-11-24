-- ====================================================================
-- Modul: 14 - Triggers dan Otomatisasi Database
-- File : 239_trigger_cascade_effects.sql
-- Topik: Dampak Berantai Trigger (Cascading Triggers)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Eksekusi satu trigger dapat memicu trigger lain pada tabel yang berbeda (rantai reaksi).

CREATE TEMP TABLE TabelA (Id INTEGER PRIMARY KEY);
CREATE TEMP TABLE TabelB (Id INTEGER PRIMARY KEY);
CREATE TEMP TABLE TabelC (Info TEXT);

CREATE TRIGGER trg_A_ke_B AFTER INSERT ON TabelA BEGIN INSERT INTO TabelB VALUES (NEW.Id); END;
CREATE TRIGGER trg_B_ke_C AFTER INSERT ON TabelB BEGIN INSERT INTO TabelC VALUES ('Reaksi rantai selesai untuk ID ' || NEW.Id); END;

INSERT INTO TabelA VALUES (99);

SELECT * FROM TabelC;
