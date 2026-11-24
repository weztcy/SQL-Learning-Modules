-- ====================================================================
-- Modul: 10 - Views dan Indexes
-- File : 179_refresh_materialized_view.sql
-- Topik: Refresh Materialized View
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Pada PostgreSQL: REFRESH MATERIALIZED VIEW nama_mv;
-- Di SQLite, penyegaran data cache dilakukan dengan DELETE & INSERT ulang atau DROP & recreate:

DELETE FROM mv_PenjualanPerGenre;

INSERT INTO mv_PenjualanPerGenre
SELECT 
    g.Name AS NamaGenre,
    COUNT(il.InvoiceLineId) AS TotalTerjual,
    ROUND(SUM(il.UnitPrice * il.Quantity), 2) AS TotalOmset
FROM Genre AS g
INNER JOIN Track AS t ON g.GenreId = t.GenreId
INNER JOIN InvoiceLine AS il ON t.TrackId = il.TrackId
GROUP BY g.Name;

SELECT COUNT(*) AS JumlahGenreTercatat FROM mv_PenjualanPerGenre;
