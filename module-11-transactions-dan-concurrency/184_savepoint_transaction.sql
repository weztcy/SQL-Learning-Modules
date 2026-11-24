-- ====================================================================
-- Modul: 11 - Transactions dan Concurrency
-- File : 184_savepoint_transaction.sql
-- Topik: SAVEPOINT Transaksi
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- SAVEPOINT membuat titik simpan sementara di dalam suatu transaksi besar,
-- memungkinkan pembatalan bertahap (nested transactions / sub-transactions).

CREATE TEMP TABLE DemoSavepoint (Id INTEGER PRIMARY KEY, Langkah TEXT);

BEGIN TRANSACTION;
INSERT INTO DemoSavepoint VALUES (1, 'Langkah 1: Inisialisasi');
SAVEPOINT TitikA;

INSERT INTO DemoSavepoint VALUES (2, 'Langkah 2: Proses Tambahan');
RELEASE SAVEPOINT TitikA;
COMMIT;

SELECT * FROM DemoSavepoint;
