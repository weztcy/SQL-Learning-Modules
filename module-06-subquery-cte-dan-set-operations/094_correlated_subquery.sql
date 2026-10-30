-- ====================================================================
-- Modul: 06 - Subquery, CTE, dan Set Operations
-- File : 094_correlated_subquery.sql
-- Topik: Correlated Subquery
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Correlated Subquery adalah subquery yang mengevaluasi baris demi baris karena
-- merujuk pada nilai kolom dari query luar (outer query).

-- Menemukan lagu termahal atau terpanjang di setiap album
SELECT 
    t1.AlbumId,
    t1.TrackId,
    t1.Name,
    t1.Milliseconds
FROM Track AS t1
WHERE t1.Milliseconds = (
    SELECT MAX(t2.Milliseconds)
    FROM Track AS t2
    WHERE t2.AlbumId = t1.AlbumId
)
ORDER BY t1.AlbumId ASC
LIMIT 8;
