-- ====================================================================
-- Modul: 06 - Subquery, CTE, dan Set Operations
-- File : 091_scalar_subquery.sql
-- Topik: Scalar Subquery
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Scalar Subquery adalah subquery yang mengembalikan tepat satu baris dan satu kolom (nilai tunggal).
-- Dapat digunakan di mana pun sebuah ekspresi tunggal diperbolehkan (SELECT, WHERE, HAVING).

-- Mengambil faktur yang nominal transaksinya lebih tinggi dari rata-rata penjualan keseluruhan
SELECT 
    InvoiceId,
    CustomerId,
    InvoiceDate,
    Total
FROM Invoice
WHERE Total > (SELECT AVG(Total) FROM Invoice)
ORDER BY Total DESC
LIMIT 8;
