-- ====================================================================
-- Modul: 11 - Transactions dan Concurrency
-- File : 183_rollback_transaction.sql
-- Topik: ROLLBACK Transaksi
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Perintah ROLLBACK membatalkan seluruh operasi dalam transaksi yang belum di-commit,
-- mengembalikan kondisi database persis seperti sebelum transaksi dimulai.

CREATE TEMP TABLE DemoBatal (Id INTEGER PRIMARY KEY, Status TEXT);
INSERT INTO DemoBatal VALUES (1, 'Awal');

BEGIN TRANSACTION;
UPDATE DemoBatal SET Status = 'Diubah Sementara' WHERE Id = 1;
ROLLBACK;

-- Nilai status kembali ke 'Awal'
SELECT * FROM DemoBatal;
