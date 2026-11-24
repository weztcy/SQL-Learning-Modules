-- ====================================================================
-- Modul: 11 - Transactions dan Concurrency
-- File : 194_autocommit_control.sql
-- Topik: Pengaturan Autocommit
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Secara default, client SQL menjalankan mode autocommit (setiap statement tunggal otomatis di-commit).
-- Membuka blok BEGIN mematikan autocommit hingga COMMIT atau ROLLBACK dieksekusi.

CREATE TEMP TABLE DemoAuto (Id INTEGER PRIMARY KEY, Info TEXT);

-- Autocommit mode aktif
INSERT INTO DemoAuto VALUES (1, 'Tersimpan otomatis');

SELECT * FROM DemoAuto;
