-- ====================================================================
-- Modul: 06 - Subquery, CTE, dan Set Operations
-- File : 107_except_operator.sql
-- Topik: Operator EXCEPT (MINUS)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Operator EXCEPT mengembalikan baris yang ada di query pertama tetapi TIDAK ada di query kedua.
-- (Pada Oracle dinamakan operator MINUS).

-- Mencari negara tempat pelanggan berada tetapi tidak memiliki staf Employee di sana
SELECT Country FROM Customer
EXCEPT
SELECT Country FROM Employee
ORDER BY Country ASC
LIMIT 10;
