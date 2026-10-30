-- ====================================================================
-- Modul: 06 - Subquery, CTE, dan Set Operations
-- File : 106_intersect_operator.sql
-- Topik: Operator INTERSECT
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Operator INTERSECT mengembalikan hanya baris yang muncul pada KEDUA query SELECT (irisan himpunan).

-- Mencari negara yang memiliki karyawan SEKALIGUS memiliki pelanggan
SELECT Country FROM Employee
INTERSECT
SELECT Country FROM Customer;
