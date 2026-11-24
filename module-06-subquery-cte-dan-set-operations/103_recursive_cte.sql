-- ====================================================================
-- Modul: 06 - Subquery, CTE, dan Set Operations
-- File : 103_recursive_cte.sql
-- Topik: Recursive CTE
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Recursive CTE merujuk pada dirinya sendiri secara iteratif.
-- Terdiri dari query jangkar (anchor member) dan query rekursif (recursive member).

-- Menghasilkan deret angka 1 sampai 10 secara rekursif
WITH RECURSIVE DeretAngka(n) AS (
    -- Anggota jangkar (Anchor member)
    SELECT 1
    UNION ALL
    -- Anggota rekursif (Recursive member)
    SELECT n + 1
    FROM DeretAngka
    WHERE n < 10
)
SELECT n AS Angka, n * n AS Kuadrat
FROM DeretAngka;
