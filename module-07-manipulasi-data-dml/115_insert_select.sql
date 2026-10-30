-- ====================================================================
-- Modul: 07 - Manipulasi Data atau DML
-- File : 115_insert_select.sql
-- Topik: INSERT INTO ... SELECT
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Menyalin sekumpulan data hasil query SELECT ke dalam tabel target lain.
-- Sangat berguna untuk proses ETL, pembuatan backup data, atau tabel arsip.

CREATE TEMP TABLE ArsipFakturUSA (
    InvoiceId INTEGER,
    CustomerId INTEGER,
    Total NUMERIC(10,2)
);

-- Menyisipkan data faktur khusus dari negara USA
INSERT INTO ArsipFakturUSA (InvoiceId, CustomerId, Total)
SELECT InvoiceId, CustomerId, Total
FROM Invoice
WHERE BillingCountry = 'USA'
LIMIT 5;

SELECT * FROM ArsipFakturUSA;
