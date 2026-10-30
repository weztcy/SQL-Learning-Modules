-- ====================================================================
-- Modul: 08 - DDL dan Struktur Database
-- File : 131_create_database.sql
-- Topik: CREATE DATABASE
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Pada sistem RDBMS client-server (MySQL, PostgreSQL, SQL Server),
-- perintah CREATE DATABASE nama_db digunakan untuk membuat kontainer database baru.
-- Di SQLite (file-based embedded), database dibuat otomatis saat membuka berkas file database (.sqlite).
-- Perintah ATTACH DATABASE dapat menghubungkan database eksternal baru ke sesi yang sedang berjalan:

-- Menampilkan database aktif yang terhubung pada sesi SQLite saat ini
PRAGMA database_list;
