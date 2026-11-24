-- ====================================================================
-- Modul: 03 - Ekspresi dan Fungsi SQL
-- File : 054_date_extraction.sql
-- Topik: Ekstraksi Bagian Tanggal (Tahun, Bulan, Hari)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Pada ANSI SQL digunakan EXTRACT(YEAR FROM tanggal).
-- Di SQLite digunakan fungsi STRFTIME(format, tanggal):
-- %Y = Tahun (4 digit), %m = Bulan (01-12), %d = Hari (01-31).

-- Mengekstrak bagian tahun, bulan, dan hari dari InvoiceDate
SELECT 
    InvoiceId,
    InvoiceDate,
    STRFTIME('%Y', InvoiceDate) AS Tahun,
    STRFTIME('%m', InvoiceDate) AS Bulan,
    STRFTIME('%d', InvoiceDate) AS Hari
FROM Invoice
LIMIT 6;
