-- ====================================================================
-- Modul: 06 - Subquery, CTE, dan Set Operations
-- File : 093_multirow_subquery.sql
-- Topik: Subquery Banyak Baris (Multi-Row Subquery)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Subquery banyak baris menghasilkan lebih dari 1 baris nilai,
-- sehingga harus digunakan bersama operator himpunan seperti IN, NOT IN, ANY, atau ALL.

-- Mengambil seluruh lagu yang tergolong dalam genre 'Jazz' atau 'Blues'
SELECT 
    TrackId,
    Name,
    GenreId
FROM Track
WHERE GenreId IN (
    SELECT GenreId 
    FROM Genre 
    WHERE Name IN ('Jazz', 'Blues')
)
LIMIT 8;
