-- ====================================================================
-- Modul: 08 - Stored Procedures dan Functions
-- File : 223_conditional_procedure.sql
-- Topik: Percabangan Logika (IF-ELSE) dalam Routine
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Percabangan IF ... ELSEIF ... ELSE di dalam prosedur database mengontrol alur eksekusi logika bisnis.

SELECT 
    CustomerId,
    SUM(Total) AS TotalBelanja,
    CASE 
        WHEN SUM(Total) >= 45.00 THEN 'Pelanggan Platinum'
        WHEN SUM(Total) >= 40.00 THEN 'Pelanggan Gold'
        ELSE 'Pelanggan Reguler'
    END AS TierLoyalitas
FROM Invoice
GROUP BY CustomerId
LIMIT 6;
