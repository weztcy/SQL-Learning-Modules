-- ====================================================================
-- Modul: 06 - Subquery, CTE, dan Set Operations
-- File : 096_not_exists_operator.sql
-- Topik: Operator NOT EXISTS
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Operator NOT EXISTS bernilai TRUE jika subquery sama sekali tidak menghasilkan baris (kosong).

-- Mengambil artis yang sama sekali belum pernah merilis album
SELECT 
    art.ArtistId,
    art.Name
FROM Artist AS art
WHERE NOT EXISTS (
    SELECT 1 
    FROM Album AS alb 
    WHERE alb.ArtistId = art.ArtistId
)
ORDER BY art.ArtistId ASC
LIMIT 8;
