-- ====================================================================
-- Modul: 11 - Transactions dan Concurrency
-- File : 181_begin_transaction.sql
-- Topik: Memulai Transaksi (BEGIN TRANSACTION)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Transaksi adalah unit kerja tunggal yang mengelompokkan beberapa operasi database.
-- Dimulai dengan perintah BEGIN TRANSACTION.

CREATE TEMP TABLE AkunSaldo (AkunId INTEGER PRIMARY KEY, Saldo NUMERIC);
INSERT INTO AkunSaldo VALUES (1, 500000);

BEGIN TRANSACTION;
UPDATE AkunSaldo SET Saldo = Saldo - 100000 WHERE AkunId = 1;

-- Memeriksa saldo sementara dalam konteks transaksi aktif
SELECT * FROM AkunSaldo;
COMMIT;
