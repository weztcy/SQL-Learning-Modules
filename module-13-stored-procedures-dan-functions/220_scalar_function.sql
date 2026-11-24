-- ====================================================================
-- Modul: 13 - Stored Procedures dan Functions
-- File : 220_scalar_function.sql
-- Topik: Scalar Function
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Scalar Function menerima satu atau beberapa argumen dan mengembalikan tepat SATU nilai skalar.

-- Kalkulasi tarif diskon skalar (misal: Diskon loyalitas pelanggan)
SELECT 
    CustomerId,
    Total,
    ROUND(Total * 0.90, 2) AS TotalSetelahDiskon10Persen
FROM Invoice
LIMIT 5;
