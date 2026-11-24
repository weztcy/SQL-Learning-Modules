-- ====================================================================
-- Modul: 10 - Views dan Indexes
-- File : 175_expression_index.sql
-- Topik: Expression Index (Index Berbasis Fungsi)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Mengindeks hasil ekspresi atau fungsi, seperti LOWER(kolom).
-- Sangat bermanfaat untuk pencarian case-insensitive yang cepat.

CREATE INDEX IF NOT EXISTS idx_Customer_LowerEmail ON Customer (LOWER(Email));

SELECT name, sql FROM sqlite_master WHERE name = 'idx_Customer_LowerEmail';
