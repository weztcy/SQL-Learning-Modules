-- ====================================================================
-- Modul: 14 - Triggers dan Otomatisasi Database
-- File : 237_audit_log_trigger.sql
-- Topik: Trigger untuk Audit Log Perubahan Data
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Sistem audit komprehensif mencatat siapa, kapan, dan apa yang diubah.

CREATE TEMP TABLE MasterPelanggan (Id INTEGER PRIMARY KEY, Nama TEXT, Kota TEXT);
CREATE TEMP TABLE AuditTrailPelanggan (
    AuditId INTEGER PRIMARY KEY AUTOINCREMENT,
    CustomerId INTEGER,
    Operasi TEXT,
    Waktu DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TRIGGER trg_AuditInsertPelanggan
AFTER INSERT ON MasterPelanggan
FOR EACH ROW
BEGIN
    INSERT INTO AuditTrailPelanggan (CustomerId, Operasi) VALUES (NEW.Id, 'INSERT DATA');
END;

INSERT INTO MasterPelanggan VALUES (101, 'Joko Widodo', 'Solo');

SELECT * FROM AuditTrailPelanggan;
