-- ====================================================================
-- Modul: 07 - Manipulasi Data atau DML
-- File : 117_update_where.sql
-- Topik: Update dengan Kondisi WHERE
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Klausa WHERE pada UPDATE sangat penting untuk membatasi baris mana saja
-- yang akan diubah nilainya. Tanpa WHERE, SELURUH baris akan berubah!

CREATE TEMP TABLE DemoCustomer AS SELECT * FROM Customer WHERE CustomerId <= 5;

-- Memperbarui kota dan negara hanya untuk CustomerId = 1
UPDATE DemoCustomer
SET City = 'Jakarta', Country = 'Indonesia'
WHERE CustomerId = 1;

SELECT CustomerId, FirstName, LastName, City, Country 
FROM DemoCustomer 
WHERE CustomerId = 1;
