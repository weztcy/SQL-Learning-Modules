-- ====================================================================
-- Modul: 10 - Views dan Indexes
-- File : 178_materialized_view.sql
-- Topik: Materialized View
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Di PostgreSQL / Oracle, MATERIALIZED VIEW menyimpan hasil query secara fisik ke disk.
-- Di SQLite, pola ini diimplementasikan dengan tabel cache fisik (CTAS: CREATE TABLE AS SELECT).

CREATE TABLE IF NOT EXISTS mv_PenjualanPerGenre AS
SELECT 
    g.Name AS NamaGenre,
    COUNT(il.InvoiceLineId) AS TotalTerjual,
    ROUND(SUM(il.UnitPrice * il.Quantity), 2) AS TotalOmset
FROM Genre AS g
INNER JOIN Track AS t ON g.GenreId = t.GenreId
INNER JOIN InvoiceLine AS il ON t.TrackId = il.TrackId
GROUP BY g.Name;

SELECT * FROM mv_PenjualanPerGenre ORDER BY TotalOmset DESC LIMIT 5;
