-- ====================================================================
-- Modul: 06 - Subquery, CTE, dan Set Operations
-- File : 095_exists_operator.sql
-- Topik: Operator EXISTS
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Operator EXISTS mengembalikan nilai TRUE jika subquery menghasilkan minimal satu baris data.
-- Database engine berhenti memeriksa begitu menemukan baris pertama yang cocok (short-circuit).

-- Mengambil pelanggan yang memiliki transaksi faktur bernilai di atas $20.00
SELECT 
    c.CustomerId,
    c.FirstName || ' ' || c.LastName AS NamaPelanggan,
    c.Country
FROM Customer AS c
WHERE EXISTS (
    SELECT 1 
    FROM Invoice AS inv 
    WHERE inv.CustomerId = c.CustomerId AND inv.Total > 20.00
);
