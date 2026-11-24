-- ====================================================================
-- Modul: 11 - Transactions dan Concurrency
-- File : 188_dirty_read.sql
-- Topik: Eksperimen Dirty Read
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Dirty Read terjadi ketika Transaksi B membaca data yang diubah oleh Transaksi A
-- yang BELUM di-commit. Jika Transaksi A melakukan ROLLBACK, data yang dibaca Transaksi B menjadi tidak valid (kotor).

CREATE TEMP TABLE DemoDirtyRead (Id INTEGER PRIMARY KEY, Nilai TEXT);
INSERT INTO DemoDirtyRead VALUES (1, 'Nilai Asli');

-- Menunjukkan bahwa database dengan kontrol konkurensi modern melindungi dari pembacaan data kotor
SELECT * FROM DemoDirtyRead WHERE Id = 1;
