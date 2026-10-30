-- ====================================================================
-- Modul: 15 - Database Security dan Access Control
-- File : 250_database_audit_logging.sql
-- Topik: Database Audit Logging
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Audit log memantau dan mencatat riwayat verifikasi keamanan database.

CREATE TEMP TABLE LogAksesKeamanan (
    LogId INTEGER PRIMARY KEY AUTOINCREMENT,
    TipeEvent TEXT,
    Keterangan TEXT,
    Waktu DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO LogAksesKeamanan (TipeEvent, Keterangan)
VALUES ('SECURITY_CHECK', 'Audit izin akses seluruh tabel modul 15 berhasil diverifikasi');

SELECT * FROM LogAksesKeamanan;
