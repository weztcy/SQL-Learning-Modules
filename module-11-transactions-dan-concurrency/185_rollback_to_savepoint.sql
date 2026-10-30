-- ====================================================================
-- Modul: 11 - Transactions dan Concurrency
-- File : 185_rollback_to_savepoint.sql
-- Topik: ROLLBACK TO SAVEPOINT
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Membatalkan perubahan yang terjadi setelah savepoint tertentu,
-- tanpa membatalkan transaksi utama secara menyeluruh.

CREATE TEMP TABLE DemoRollbackSP (Id INTEGER PRIMARY KEY, Pesan TEXT);

BEGIN TRANSACTION;
INSERT INTO DemoRollbackSP VALUES (1, 'Pesanan dibuat');
SAVEPOINT PesananAman;

-- Mencoba memasukkan langkah yang keliru
INSERT INTO DemoRollbackSP VALUES (2, 'Error sistem pembayaran');

-- Membatalkan hanya langkah error, kembali ke status 'PesananAman'
ROLLBACK TO SAVEPOINT PesananAman;

COMMIT;

SELECT * FROM DemoRollbackSP;
