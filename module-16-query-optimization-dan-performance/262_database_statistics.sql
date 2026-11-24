-- ====================================================================
-- Modul: 16 - Query Optimization dan Performance
-- File : 262_database_statistics.sql
-- Topik: Statistik Database untuk Cost-Based Optimizer
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Query Optimizer membutuhkan statistik distribusi data agar dapat memilih
-- rencana query terbaik (Cost-Based Optimizer).

-- Memeriksa apakah tabel statistik internal tersedia di database
SELECT name FROM sqlite_master WHERE name LIKE 'sqlite_stat%';
