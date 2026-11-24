-- ====================================================================
-- Modul: 16 - Query Optimization dan Performance
-- File : 256_composite_index_order.sql
-- Topik: Urutan Kolom Composite Index (Leftmost Prefix Rule)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Index gabungan (KolomA, KolomB) hanya dapat digunakan jika klausa WHERE
-- menyertakan KolomA (prefix paling kiri).

CREATE INDEX IF NOT EXISTS idx_Opt_Cust ON Customer (Country, State);

-- Menguji pemanfaatan prefix kiri
EXPLAIN QUERY PLAN
SELECT CustomerId, Country, State, City 
FROM Customer 
WHERE Country = 'USA';

DROP INDEX IF EXISTS idx_Opt_Cust;
