-- ====================================================================
-- Modul: 03 - Ekspresi dan Fungsi SQL
-- File : 036_case_expression.sql
-- Topik: Ekspresi CASE Sederhana dan Bersyarat
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Ekspresi CASE menyediakan logika percabangan kondisional (IF-THEN-ELSE) di dalam SQL.
-- Sintaks: CASE WHEN kondisi THEN hasil ELSE nilai_default END.

-- Mengkategorikan nominal transaksi faktur menjadi 'Besar' atau 'Standar'
SELECT 
    InvoiceId,
    CustomerId,
    Total,
    CASE 
        WHEN Total >= 10.00 THEN 'Transaksi Besar'
        ELSE 'Transaksi Standar'
    END AS KategoriPenjualan
FROM Invoice
LIMIT 8;
