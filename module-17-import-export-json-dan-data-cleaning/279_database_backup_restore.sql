-- ====================================================================
-- Modul: 17 - Import, Export, JSON, dan Data Cleaning
-- File : 279_database_backup_restore.sql
-- Topik: Backup dan Restore Database
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- SQLite 3.27+ mendukung backup live online langsung dari SQL menggunakan:
-- VACUUM INTO 'nama_file_backup.sqlite';

-- Memverifikasi integritas database sebelum dicadangkan
PRAGMA integrity_check;
