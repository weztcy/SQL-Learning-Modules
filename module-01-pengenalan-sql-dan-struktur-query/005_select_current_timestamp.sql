-- ====================================================================
-- Modul: 01 - Pengenalan SQL dan Struktur Query
-- File : 005_select_current_timestamp.sql
-- Topik: Mengambil Timestamp Saat Ini
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Standar SQL menyediakan CURRENT_TIMESTAMP untuk mendapatkan waktu presisi (tanggal dan jam).
-- Di SQLite, DATETIME('now') mengembalikan representasi waktu UTC format YYYY-MM-DD HH:MM:SS.

-- Mengambil waktu dan tanggal sistem saat ini (UTC)
SELECT 
    CURRENT_TIMESTAMP AS TimestampStandar,
    DATETIME('now') AS WaktuSQLiteUTC,
    DATETIME('now', 'localtime') AS WaktuLokal;
