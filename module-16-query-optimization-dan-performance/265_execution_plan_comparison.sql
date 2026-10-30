-- ====================================================================
-- Modul: 16 - Query Optimization dan Performance
-- File : 265_execution_plan_comparison.sql
-- Topik: Perbandingan Execution Plan
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Membandingkan estimasi biaya dan jalur akses sebelum vs sesudah pembuatan index.

EXPLAIN QUERY PLAN
SELECT CustomerId, Total FROM Invoice WHERE CustomerId = 10 AND Total > 5.00;
