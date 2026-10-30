-- ====================================================================
-- Modul: 12 - Window Functions dan Analisis Data
-- File : 200_rank_function.sql
-- Topik: Fungsi RANK()
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- RANK() memberikan peringkat yang sama untuk nilai bernilai kembar (tie),
-- namun nomor peringkat berikutnya akan meloncat (misal: 1, 2, 2, 4).

SELECT 
    InvoiceId,
    CustomerId,
    Total,
    RANK() OVER (ORDER BY Total DESC) AS PeringkatBesarTransaksi
FROM Invoice
LIMIT 8;
