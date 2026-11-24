-- ====================================================================
-- Modul: 01 - Pengenalan SQL dan Struktur Query
-- File : 004_select_current_date.sql
-- Topik: Mengambil Tanggal Saat Ini
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Standar SQL menggunakan kata kunci CURRENT_DATE untuk memperoleh tanggal saat ini.
-- Di SQLite, fungsi DATE('now') juga sering digunakan untuk menghasilkan tanggal (YYYY-MM-DD).

-- Mengambil tanggal sistem saat ini dalam format standar ISO 8601 (YYYY-MM-DD)
SELECT 
    CURRENT_DATE AS TanggalStandar,
    DATE('now') AS TanggalSQLite;
