-- ====================================================================
-- Modul: 11 - Transactions dan Concurrency
-- File : 187_transaction_isolation.sql
-- Topik: Transaction Isolation Levels
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- 4 Level Isolasi Transaksi Standar ANSI SQL:
-- 1. READ UNCOMMITTED: Tercepat, risiko Dirty Read.
-- 2. READ COMMITTED: Mencegah Dirty Read.
-- 3. REPEATABLE READ: Mencegah Non-Repeatable Read.
-- 4. SERIALIZABLE: Isolasi tertinggi, mencegah Phantom Read.

-- Di SQLite, isolasi default adalah SERIALIZABLE (dalam mode locking eksklusif).
PRAGMA read_uncommitted = 0; -- Memastikan mode pembacaan data hanya membaca data sah terkomit

SELECT 'Tingkat isolasi diatur ke safe committed read' AS Status;
