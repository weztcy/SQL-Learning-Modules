-- ====================================================================
-- Modul: 14 - Triggers dan Otomatisasi Database
-- File : 236_row_level_trigger.sql
-- Topik: Row-Level Trigger (FOR EACH ROW)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Klausa FOR EACH ROW menginstruksikan trigger untuk dieksekusi satu kali untuk SETIAP baris yang terpengaruh.

CREATE TEMP TABLE ItemGudang (Id INTEGER PRIMARY KEY, Jumlah INTEGER);
CREATE TEMP TABLE RiwayatPenyesuaian (Aktivitas TEXT);

INSERT INTO ItemGudang VALUES (1, 10), (2, 20);

CREATE TRIGGER trg_PerBaris
AFTER UPDATE ON ItemGudang
FOR EACH ROW
BEGIN
    INSERT INTO RiwayatPenyesuaian (Aktivitas) VALUES ('Baris ID ' || NEW.Id || ' diperbarui');
END;

UPDATE ItemGudang SET Jumlah = Jumlah + 5;

SELECT * FROM RiwayatPenyesuaian;
