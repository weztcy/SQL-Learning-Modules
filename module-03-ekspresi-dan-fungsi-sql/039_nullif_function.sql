-- ====================================================================
-- Modul: 03 - Ekspresi dan Fungsi SQL
-- File : 039_nullif_function.sql
-- Topik: Fungsi NULLIF
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Fungsi NULLIF(ekspresi1, ekspresi2) mengembalikan NULL jika kedua argumen bernilai sama,
-- atau mengembalikan ekspresi1 jika keduanya berbeda. Berguna mencegah error division by zero.

-- Menguji NULLIF pada perbandingan nilai
SELECT 
    InvoiceId,
    Total,
    NULLIF(Total, 0.99) AS TotalJikaBukan099
FROM Invoice
LIMIT 6;
