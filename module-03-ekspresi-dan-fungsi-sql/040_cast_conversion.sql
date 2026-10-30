-- ====================================================================
-- Modul: 03 - Ekspresi dan Fungsi SQL
-- File : 040_cast_conversion.sql
-- Topik: Konversi Tipe Data dengan CAST
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Operator standar ANSI SQL CAST(ekspresi AS tipe_data) digunakan untuk
-- mengubah tipe data suatu nilai secara eksplisit.

-- Mengonversi angka desimal Total menjadi INTEGER dan teks VARCHAR
SELECT 
    InvoiceId,
    Total,
    CAST(Total AS INTEGER) AS TotalBulat,
    CAST(InvoiceDate AS DATE) AS TanggalSaja
FROM Invoice
LIMIT 6;
