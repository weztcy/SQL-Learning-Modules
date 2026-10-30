-- ====================================================================
-- Modul: 06 - Subquery, CTE, dan Set Operations
-- File : 108_cte_vs_subquery.sql
-- Topik: Perbandingan CTE dan Subquery
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Menunjukkan solusi yang sama menggunakan CTE (lebih mudah dibaca dan dimodifikasi)
-- dibandingkan subquery bersarang di klausa WHERE/FROM.

WITH TopPelanggan AS (
    SELECT CustomerId, SUM(Total) AS TotalBelanja
    FROM Invoice
    GROUP BY CustomerId
    ORDER BY TotalBelanja DESC
    LIMIT 5
)
SELECT 
    c.CustomerId,
    c.FirstName || ' ' || c.LastName AS NamaPelanggan,
    ROUND(tp.TotalBelanja, 2) AS TotalPengeluaran
FROM Customer AS c
INNER JOIN TopPelanggan AS tp ON c.CustomerId = tp.CustomerId;
