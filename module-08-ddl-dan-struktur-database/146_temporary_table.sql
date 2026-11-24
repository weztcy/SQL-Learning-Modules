-- ====================================================================
-- Modul: 08 - DDL dan Struktur Database
-- File : 146_temporary_table.sql
-- Topik: Tabel Sementara (Temporary Table)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- TEMPORARY / TEMP TABLE hanya ada selama sesi koneksi database berlangsung
-- dan otomatis dihapus saat koneksi ditutup. Tidak mengganggu pengguna lain.

CREATE TEMP TABLE SesiUserAktif (
    SesiId TEXT PRIMARY KEY,
    LoginTime DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO SesiUserAktif (SesiId) VALUES ('SESI-XYZ-123');

SELECT * FROM SesiUserAktif;
