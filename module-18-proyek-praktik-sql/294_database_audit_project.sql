-- ====================================================================
-- Modul: 18 - Proyek Praktik SQL
-- File : 294_database_audit_project.sql
-- Topik: Sistem Audit Perubahan Data Terintegrasi
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

CREATE TEMP TABLE DataSensitif (Id INTEGER PRIMARY KEY, Nilai TEXT);
CREATE TEMP TABLE RiwayatAudit (
    AuditId INTEGER PRIMARY KEY AUTOINCREMENT,
    TabelAsal TEXT,
    Aksi TEXT,
    Waktu TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Keterangan TEXT
);

CREATE TRIGGER trg_AuditSensitif AFTER INSERT ON DataSensitif
BEGIN
    INSERT INTO RiwayatAudit (TabelAsal, Aksi, Keterangan)
    VALUES ('DataSensitif', 'INSERT', 'Penambahan record ID: ' || NEW.Id);
END;

INSERT INTO DataSensitif VALUES (1, 'Dokumen Rahasia A');

SELECT * FROM RiwayatAudit;
