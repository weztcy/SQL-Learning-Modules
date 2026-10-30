-- ====================================================================
-- Modul: 07 - Manipulasi Data atau DML
-- File : 130_bulk_insert.sql
-- Topik: Bulk Insert Efisien
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Untuk menyisipkan ribuan data dengan performa maksimal, lakukan di dalam satu transaksi (TRANSACTION).

CREATE TEMP TABLE BulkDemo (Id INTEGER PRIMARY KEY, Nilai TEXT);

BEGIN TRANSACTION;
INSERT INTO BulkDemo (Id, Nilai) VALUES (1, 'Batch 1-A');
INSERT INTO BulkDemo (Id, Nilai) VALUES (2, 'Batch 1-B');
INSERT INTO BulkDemo (Id, Nilai) VALUES (3, 'Batch 1-C');
COMMIT;

SELECT * FROM BulkDemo;
