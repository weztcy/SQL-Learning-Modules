-- ====================================================================
-- Modul: 06 - Subquery, CTE, dan Set Operations
-- File : 109_lateral_join.sql
-- Topik: LATERAL JOIN / CROSS APPLY
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- LATERAL JOIN (PostgreSQL) atau CROSS APPLY (SQL Server) memungkinkan subquery
-- pada klausa FROM merujuk kolom dari tabel sebelumnya dalam query yang sama.
-- Di SQLite, pola ini diwujudkan menggunakan correlated subquery skalar.

-- Mengambil transaksi faktur terakhir beserta nominalnya untuk setiap pelanggan
SELECT 
    c.CustomerId,
    c.FirstName || ' ' || c.LastName AS NamaPelanggan,
    (SELECT MAX(InvoiceDate) FROM Invoice WHERE CustomerId = c.CustomerId) AS TransaksiTerakhir,
    (SELECT Total FROM Invoice WHERE CustomerId = c.CustomerId ORDER BY InvoiceDate DESC LIMIT 1) AS TotalTerakhir
FROM Customer AS c
LIMIT 8;
