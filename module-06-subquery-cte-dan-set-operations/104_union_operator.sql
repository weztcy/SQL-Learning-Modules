-- ====================================================================
-- Modul: 06 - Subquery, CTE, dan Set Operations
-- File : 104_union_operator.sql
-- Topik: Operator UNION
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Operator UNION menggabungkan hasil dari dua query SELECT dan menghapus baris duplikat.
-- Jumlah kolom dan tipe data harus bersesuaian di kedua query.

-- Menggabungkan nama depan dari tabel Karyawan dan tabel Pelanggan (daftar unik)
SELECT FirstName, 'Karyawan' AS Peran
FROM Employee
WHERE Country = 'Canada'

UNION

SELECT FirstName, 'Pelanggan' AS Peran
FROM Customer
WHERE Country = 'Canada'
ORDER BY FirstName ASC
LIMIT 10;
