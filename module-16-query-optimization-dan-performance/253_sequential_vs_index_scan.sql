-- ====================================================================
-- Modul: 16 - Query Optimization dan Performance
-- File : 253_sequential_vs_index_scan.sql
-- Topik: Sequential Scan vs Index Scan
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- SCAN TABLE (Sequential Scan) memeriksa setiap baris satu per satu (O(N)).
-- SEARCH TABLE USING INDEX melompat langsung ke data target menggunakan pohon B-Tree (O(log N)).

-- Mengamati rencana eksekusi menggunakan index bawaan Primary Key (SEARCH)
EXPLAIN QUERY PLAN
SELECT CustomerId, FirstName, LastName 
FROM Customer 
WHERE CustomerId = 15;
