-- ====================================================================
-- Modul: 06 - Subquery, CTE, dan Set Operations
-- File : 098_all_operator.sql
-- Topik: Operator ALL
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Operator ALL memeriksa apakah kondisi bernilai TRUE untuk seluruh elemen subquery (> ALL (...)).
-- Di SQLite, padanan ekuivalennya adalah > (SELECT MAX(...)).

-- Mengambil transaksi yang nilainya lebih besar dari SELURUH invoice pelanggan ber-Id 5
SELECT 
    InvoiceId,
    CustomerId,
    Total
FROM Invoice
WHERE Total > (
    SELECT MAX(Total) 
    FROM Invoice 
    WHERE CustomerId = 5
)
ORDER BY Total ASC
LIMIT 8;
