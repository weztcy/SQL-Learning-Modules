-- ====================================================================
-- Modul: 06 - Subquery, CTE, dan Set Operations
-- File : 101_cte_basic.sql
-- Topik: Common Table Expression (CTE) Dasar
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Common Table Expression (CTE) didefinisikan menggunakan klausa WITH.
-- CTE membuat result-set bernama sementara yang meningkatkan keterbacaan kode (modularitas).

WITH RingkasanInvoice AS (
    SELECT 
        CustomerId,
        COUNT(InvoiceId) AS JumlahTransaksi,
        ROUND(SUM(Total), 2) AS TotalPengeluaran
    FROM Invoice
    GROUP BY CustomerId
)
SELECT 
    c.CustomerId,
    c.FirstName || ' ' || c.LastName AS NamaPelanggan,
    r.JumlahTransaksi,
    r.TotalPengeluaran
FROM Customer AS c
INNER JOIN RingkasanInvoice AS r ON c.CustomerId = r.CustomerId
ORDER BY r.TotalPengeluaran DESC
LIMIT 8;
