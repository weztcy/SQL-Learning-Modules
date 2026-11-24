-- ====================================================================
-- Modul: 10 - Views dan Indexes
-- File : 176_covering_index.sql
-- Topik: Covering Index
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Covering Index mencakup seluruh kolom yang dibutuhkan oleh query (filter + proyeksi),
-- sehingga database dapat mengembalikan data langsung dari B-Tree index tanpa membaca tabel fisik.

CREATE INDEX IF NOT EXISTS idx_Covering_Invoice ON Invoice (CustomerId, Total, InvoiceDate);

SELECT CustomerId, Total, InvoiceDate FROM Invoice WHERE CustomerId = 1;
