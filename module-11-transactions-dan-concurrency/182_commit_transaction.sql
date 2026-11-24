-- ====================================================================
-- Modul: 11 - Transactions dan Concurrency
-- File : 182_commit_transaction.sql
-- Topik: COMMIT Transaksi
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Perintah COMMIT menyimpan seluruh perubahan yang dibuat selama transaksi secara permanen ke disk.

CREATE TEMP TABLE DemoKomit (Id INTEGER PRIMARY KEY, Nilai TEXT);

BEGIN TRANSACTION;
INSERT INTO DemoKomit VALUES (1, 'Data Sah Diterima');
COMMIT;

SELECT * FROM DemoKomit;
