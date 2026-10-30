-- ====================================================================
-- Modul: 16 - Query Optimization dan Performance
-- File : 255_sargable_queries.sql
-- Topik: Kueri SARGable (Search Argument Able)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Kueri SARGable memungkinkan optimizer memanfaatkan index.
-- Non-SARGable: WHERE STRFTIME('%Y', InvoiceDate) = '2010' (memaksa scan seluruh fungsi).
-- SARGable: WHERE InvoiceDate >= '2010-01-01' AND InvoiceDate < '2011-01-01' (dapat memanfaatkan range index).

EXPLAIN QUERY PLAN
SELECT InvoiceId, InvoiceDate, Total
FROM Invoice
WHERE InvoiceDate >= '2010-01-01' AND InvoiceDate < '2011-01-01';
