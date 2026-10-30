-- ====================================================================
-- Modul: 11 - Transactions dan Concurrency
-- File : 189_nonrepeatable_read.sql
-- Topik: Fenomena Non-Repeatable Read
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Non-Repeatable Read terjadi ketika query yang sama dijalankan dua kali dalam satu transaksi,
-- tetapi menghasilkan nilai yang berbeda karena transaksi lain mengubah dan men-commit baris tersebut.

CREATE TEMP TABLE DemoNonRepeatable (Id INTEGER PRIMARY KEY, Harga NUMERIC);
INSERT INTO DemoNonRepeatable VALUES (1, 100.00);

-- Bacaan Pertama
SELECT Harga AS HargaAwal FROM DemoNonRepeatable WHERE Id = 1;

-- Transaksi lain meng-update
UPDATE DemoNonRepeatable SET Harga = 150.00 WHERE Id = 1;

-- Bacaan Kedua (Nilai berubah)
SELECT Harga AS HargaSetelahUpdate FROM DemoNonRepeatable WHERE Id = 1;
