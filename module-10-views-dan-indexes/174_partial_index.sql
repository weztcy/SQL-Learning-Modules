-- ====================================================================
-- Modul: 10 - Views dan Indexes
-- File : 174_partial_index.sql
-- Topik: Partial Index (Index Berfilter WHERE)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Partial Index hanya mengindeks subset baris yang memenuhi kondisi WHERE tertentu.
-- Menghemat ukuran penyimpanan disk dan mempercepat operasi penulisan (INSERT/UPDATE).

CREATE INDEX IF NOT EXISTS idx_Invoice_HighValue ON Invoice (Total) WHERE Total >= 15.00;

SELECT name, sql FROM sqlite_master WHERE name = 'idx_Invoice_HighValue';
