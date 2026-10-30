-- ====================================================================
-- Modul: 16 - Query Optimization dan Performance
-- File : 263_analyze_table.sql
-- Topik: Memperbarui Statistik dengan ANALYZE
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Perintah ANALYZE mengumpulkan statistik distribusi data pada tabel dan index,
-- menyimpannya ke tabel sistem 'sqlite_stat1' untuk membantu optimizer membuat keputusan terbaik.

ANALYZE;

SELECT tbl, idx, stat FROM sqlite_stat1 LIMIT 5;
