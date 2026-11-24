-- ====================================================================
-- Modul: 15 - Database Security dan Access Control
-- File : 241_create_database_user.sql
-- Topik: Membuat User Database (CREATE USER)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Pada sistem RDBMS server (PostgreSQL / MySQL / SQL Server):
-- CREATE USER 'analis_data'@'%' IDENTIFIED BY 'PasswordKuat123!';
-- Mengautentikasi pengguna sebelum mengizinkan koneksi jaringan ke database.

-- Di SQLite (file-based embedded), hak akses dikelola oleh file system OS atau PRAGMA keamanan:
PRAGMA query_only = 0; -- Memastikan mode baca-tulis aktif untuk pengguna sesi ini

SELECT 'Pengguna sesi lokal terverifikasi dengan izin Read-Write' AS StatusAutentikasi;
