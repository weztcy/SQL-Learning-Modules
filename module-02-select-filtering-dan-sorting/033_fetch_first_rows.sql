-- ====================================================================
-- Modul: 02 - SELECT, Filtering, dan Sorting
-- File : 033_fetch_first_rows.sql
-- Topik: Pembatasan Baris dengan FETCH FIRST (ANSI SQL)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Standar ANSI SQL:2008 memperkenalkan klausa:
-- OFFSET m ROWS FETCH NEXT n ROWS ONLY
-- Didukung oleh PostgreSQL, Oracle, dan SQL Server 2012+.
-- SQLite secara native menggunakan sintaks LIMIT / OFFSET yang setara.

-- Menampilkan 5 faktur pertama teratas (padanan LIMIT 5 pada SQLite)
SELECT 
    InvoiceId,
    InvoiceDate,
    Total
FROM Invoice
ORDER BY Total DESC
LIMIT 5;
