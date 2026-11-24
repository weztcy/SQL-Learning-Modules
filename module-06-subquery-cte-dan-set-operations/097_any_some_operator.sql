-- ====================================================================
-- Modul: 06 - Subquery, CTE, dan Set Operations
-- File : 097_any_some_operator.sql
-- Topik: Operator ANY dan SOME
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Operator ANY/SOME (PostgreSQL, MySQL, SQL Server) memeriksa apakah kondisi cocok
-- dengan minimal salah satu nilai dalam subquery (> ANY (...)).
-- Di SQLite, kondisi ekuivalen ditulis menggunakan > (SELECT MIN(...)).

-- Mengambil transaksi yang nilainya lebih besar dari invoice terkecil milik pelanggan ber-Id 5
SELECT 
    InvoiceId,
    CustomerId,
    Total
FROM Invoice
WHERE Total > (
    SELECT MIN(Total) 
    FROM Invoice 
    WHERE CustomerId = 5
)
ORDER BY Total ASC
LIMIT 8;
