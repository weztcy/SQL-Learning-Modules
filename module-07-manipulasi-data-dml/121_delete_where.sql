-- ====================================================================
-- Modul: 07 - Manipulasi Data atau DML
-- File : 121_delete_where.sql
-- Topik: Delete dengan Kondisi WHERE
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Menyertakan WHERE memastikan hanya baris yang memenuhi kriteria yang dihapus.

CREATE TEMP TABLE DemoInvoice AS SELECT * FROM Invoice WHERE InvoiceId <= 10;

-- Menghapus faktur yang nominal Total-nya kurang dari 3.00
DELETE FROM DemoInvoice
WHERE Total < 3.00;

SELECT InvoiceId, CustomerId, Total FROM DemoInvoice;
