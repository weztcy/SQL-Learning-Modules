-- ====================================================================
-- Modul: 11 - Transactions dan Concurrency
-- File : 190_phantom_read.sql
-- Topik: Fenomena Phantom Read
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Phantom Read terjadi ketika transaksi menjalankan query range (misal WHERE Harga > 50),
-- lalu transaksi lain menyisipkan baris baru yang memenuhi kriteria, sehingga baris 'hantu' muncul pada bacaan kedua.

CREATE TEMP TABLE DemoPhantom (Id INTEGER PRIMARY KEY, Nominal NUMERIC);
INSERT INTO DemoPhantom VALUES (1, 60), (2, 80);

SELECT COUNT(*) AS JumlahAwal FROM DemoPhantom WHERE Nominal > 50;

-- Transaksi lain menyisipkan baris baru
INSERT INTO DemoPhantom VALUES (3, 75);

SELECT COUNT(*) AS JumlahSetelahPenyisipanBaru FROM DemoPhantom WHERE Nominal > 50;
