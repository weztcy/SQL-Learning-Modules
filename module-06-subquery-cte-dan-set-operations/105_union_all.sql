-- ====================================================================
-- Modul: 06 - Subquery, CTE, dan Set Operations
-- File : 105_union_all.sql
-- Topik: Operator UNION ALL
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- UNION ALL menggabungkan hasil query tanpa menghapus duplikasi.
-- Jauh lebih cepat daripada UNION karena tidak memerlukan tahap pengurutan/penghapusan duplikat.

-- Menggabungkan daftar kota dari Customer dan Employee dengan UNION ALL
SELECT City, Country, 'Employee' AS Sumber
FROM Employee

UNION ALL

SELECT City, Country, 'Customer' AS Sumber
FROM Customer
WHERE Country = 'Canada';
