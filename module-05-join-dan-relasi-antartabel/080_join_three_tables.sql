-- ====================================================================
-- Modul: 05 - JOIN dan Relasi Antartabel
-- File : 080_join_three_tables.sql
-- Topik: Join Tiga Tabel Transaksi
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Menghubungkan transaksi faktur (Invoice), pelanggan (Customer), dan staf pendukung (Employee).

SELECT 
    inv.InvoiceId,
    inv.InvoiceDate,
    inv.Total,
    cust.FirstName || ' ' || cust.LastName AS NamaPelanggan,
    emp.FirstName || ' ' || emp.LastName AS SalesRep
FROM Invoice AS inv
INNER JOIN Customer AS cust ON inv.CustomerId = cust.CustomerId
LEFT JOIN Employee AS emp ON cust.SupportRepId = emp.EmployeeId
ORDER BY inv.InvoiceId ASC
LIMIT 6;
