-- ====================================================================
-- Modul: 06 - Subquery, CTE, dan Set Operations
-- File : 092_single_row_subquery.sql
-- Topik: Subquery Satu Baris (Single-Row Subquery)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Subquery satu baris menghasilkan 1 baris data dan digunakan dengan operator pembanding standar (=, <, >).

-- Menemukan lagu yang durasinya sama persis dengan lagu 'Fast As a Shark'
SELECT 
    TrackId,
    Name,
    Milliseconds
FROM Track
WHERE Milliseconds = (
    SELECT Milliseconds 
    FROM Track 
    WHERE Name = 'Fast As a Shark'
    LIMIT 1
);
