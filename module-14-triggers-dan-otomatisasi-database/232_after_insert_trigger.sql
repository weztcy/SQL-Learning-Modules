-- ====================================================================
-- Modul: 14 - Triggers dan Otomatisasi Database
-- File : 232_after_insert_trigger.sql
-- Topik: AFTER INSERT Trigger
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Trigger AFTER INSERT berjalan tepat setelah baris baru berhasil disimpan.

CREATE TEMP TABLE DemoPesanan (PesananId INTEGER PRIMARY KEY, Total NUMERIC);
CREATE TEMP TABLE LogPesanan (LogId INTEGER PRIMARY KEY AUTOINCREMENT, Info TEXT);

CREATE TRIGGER trg_CatatPesananBaru
AFTER INSERT ON DemoPesanan
FOR EACH ROW
BEGIN
    INSERT INTO LogPesanan (Info) 
    VALUES ('Pesanan Baru dibuat dengan ID: ' || NEW.PesananId || ' Total: ' || NEW.Total);
END;

INSERT INTO DemoPesanan VALUES (5001, 29.90);

SELECT * FROM LogPesanan;
