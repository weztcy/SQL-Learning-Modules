-- ====================================================================
-- Modul: 16 - Query Optimization dan Performance
-- File : 251_explain_query_plan.sql
-- Topik: EXPLAIN QUERY PLAN
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- EXPLAIN QUERY PLAN menganalisis strategi yang dipilih oleh Query Optimizer
-- untuk mengeksekusi query (apakah menggunakan SCAN TABLE atau SEARCH TABLE USING INDEX).

EXPLAIN QUERY PLAN
SELECT TrackId, Name, UnitPrice 
FROM Track 
WHERE Name = 'The Trooper';
