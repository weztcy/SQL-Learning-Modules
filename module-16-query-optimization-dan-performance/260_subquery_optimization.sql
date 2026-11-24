-- ====================================================================
-- Modul: 16 - Query Optimization dan Performance
-- File : 260_subquery_optimization.sql
-- Topik: Optimasi Subquery (Subquery Flattening)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Modern Query Optimizer otomatis meratakan (flatten) subquery menjadi JOIN
-- jika memungkinkan untuk memperluas opsi urutan join yang optimal.

EXPLAIN QUERY PLAN
SELECT TrackId, Name
FROM Track
WHERE AlbumId IN (
    SELECT AlbumId FROM Album WHERE ArtistId = 1
);
