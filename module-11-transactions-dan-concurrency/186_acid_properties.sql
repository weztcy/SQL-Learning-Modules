-- ====================================================================
-- Modul: 11 - Transactions dan Concurrency
-- File : 186_acid_properties.sql
-- Topik: Prinsip ACID (Atomicity, Consistency, Isolation, Durability)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- A - Atomicity: Semua berhasil atau semua dibatalkan (All or Nothing).
-- C - Consistency: Database tetap mematuhi seluruh aturan dan konstrain.
-- I - Isolation: Transaksi konkuren tidak saling mencemari.
-- D - Durability: Data yang telah di-commit terjamin tersimpan aman.

CREATE TEMP TABLE KasRekening (Id INTEGER PRIMARY KEY, Pemilik TEXT, Saldo NUMERIC CHECK(Saldo >= 0));
INSERT INTO KasRekening VALUES (1, 'Pengirim', 1000), (2, 'Penerima', 200);

-- Demonstrasi transfer dana atomic:
BEGIN TRANSACTION;
UPDATE KasRekening SET Saldo = Saldo - 300 WHERE Id = 1;
UPDATE KasRekening SET Saldo = Saldo + 300 WHERE Id = 2;
COMMIT;

SELECT * FROM KasRekening;
