-- ====================================================================
-- Modul: 13 - Stored Procedures dan Functions
-- File : 224_loop_in_procedure.sql
-- Topik: Perulangan (LOOP / WHILE) dalam Routine
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Perulangan terstruktur di SQL dapat diwujudkan dengan WHILE loop atau Recursive CTE.

-- Menghitung faktorial secara iteratif
WITH RECURSIVE HitungFaktorial(Angka, Faktorial) AS (
    SELECT 1, 1
    UNION ALL
    SELECT Angka + 1, Faktorial * (Angka + 1)
    FROM HitungFaktorial
    WHERE Angka < 6
)
SELECT * FROM HitungFaktorial;
