-- ====================================================================
-- Modul: 16 - Query Optimization dan Performance
-- File : 252_explain_analyze.sql
-- Topik: EXPLAIN ANALYZE (Statistik Waktu dan Resource Aktual)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Pada PostgreSQL / MySQL, EXPLAIN ANALYZE benar-benar mengeksekusi query dan
-- mencatat waktu eksekusi serta baris aktual (actual time & rows).
-- Di SQLite, perintah EXPLAIN menampilkan bytecode Virtual Database Engine (VDBE):

EXPLAIN
SELECT CustomerId, Country, City 
FROM Customer 
WHERE Country = 'Brazil';
