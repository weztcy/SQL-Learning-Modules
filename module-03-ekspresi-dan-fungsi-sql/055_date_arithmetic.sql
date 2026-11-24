-- ====================================================================
-- Modul: 03 - Ekspresi dan Fungsi SQL
-- File : 055_date_arithmetic.sql
-- Topik: Operasi Aritmetika Tanggal
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- SQLite menyediakan pengubah (modifiers) pada fungsi DATE / DATETIME:
-- '+7 days', '+1 month', '-1 year', dll.

-- Menghitung estimasi tanggal jatuh tempo pembayaran (+14 hari dari InvoiceDate)
SELECT 
    InvoiceId,
    InvoiceDate AS TanggalTransaksi,
    DATE(InvoiceDate, '+14 days') AS JatuhTempoPembayaran,
    DATE(InvoiceDate, '+1 month') AS PeriodeTagihanBerikutnya
FROM Invoice
LIMIT 6;
