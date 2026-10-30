-- ====================================================================
-- Modul: 06 - Subquery, CTE, dan Set Operations
-- File : 110_recursive_hierarchy.sql
-- Topik: Query Hierarki Rekursif (Struktur Organisasi)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Menelusuri seluruh jalur hierarki atasan-bawahan pada tabel Employee secara rekursif.

WITH RECURSIVE HierarkiKaryawan AS (
    -- Anchor member: Pejabat puncak (ReportsTo IS NULL)
    SELECT 
        EmployeeId,
        FirstName || ' ' || LastName AS NamaKaryawan,
        Title,
        ReportsTo,
        0 AS LevelHierarki
    FROM Employee
    WHERE ReportsTo IS NULL
    
    UNION ALL
    
    -- Recursive member: Bawahan langsung dari level sebelumnya
    SELECT 
        e.EmployeeId,
        e.FirstName || ' ' || e.LastName,
        e.Title,
        e.ReportsTo,
        h.LevelHierarki + 1
    FROM Employee AS e
    INNER JOIN HierarkiKaryawan AS h ON e.ReportsTo = h.EmployeeId
)
SELECT 
    LevelHierarki,
    NamaKaryawan,
    Title AS Jabatan
FROM HierarkiKaryawan
ORDER BY LevelHierarki ASC, EmployeeId ASC;
