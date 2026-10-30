-- ====================================================================
-- Modul: 06 - Subquery, CTE, dan Set Operations
-- File : 102_multiple_ctes.sql
-- Topik: Multiple CTE (Beberapa CTE Berantai)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Beberapa CTE dapat didefinisikan sekaligus dengan memisahkannya menggunakan tanda koma.
-- CTE selanjutnya dapat merujuk pada CTE yang didefinisikan sebelumnya.

WITH TotalPerPelanggan AS (
    SELECT CustomerId, SUM(Total) AS TotalBelanja
    FROM Invoice
    GROUP BY CustomerId
),
RataRataGlobal AS (
    SELECT AVG(TotalBelanja) AS NilaiRataRata
    FROM TotalPerPelanggan
)
SELECT 
    c.CustomerId,
    c.FirstName || ' ' || c.LastName AS NamaPelanggan,
    ROUND(t.TotalBelanja, 2) AS Belanja,
    ROUND(g.NilaiRataRata, 2) AS RataRataToko,
    CASE 
        WHEN t.TotalBelanja > g.NilaiRataRata THEN 'Diatas Rata-rata'
        ELSE 'Dibawah Rata-rata'
    END AS StatusLoyalitas
FROM Customer AS c
INNER JOIN TotalPerPelanggan AS t ON c.CustomerId = t.CustomerId
CROSS JOIN RataRataGlobal AS g
ORDER BY t.TotalBelanja DESC
LIMIT 8;
