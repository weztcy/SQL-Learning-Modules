-- ====================================================================
-- Modul: 11 - Transactions dan Concurrency
-- File : 192_table_level_locking.sql
-- Topik: Table-Level Locking
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Di MySQL: LOCK TABLES nama_tabel WRITE;
-- Di SQLite: BEGIN EXCLUSIVE TRANSACTION;
-- Mengunci seluruh tabel/database dari akses tulis maupun baca transaksi lain.

BEGIN EXCLUSIVE TRANSACTION;
-- Operasi eksklusif yang memerlukan jaminan mutlak tanpa interferensi
SELECT COUNT(*) AS TotalInvoice FROM Invoice;
COMMIT;
