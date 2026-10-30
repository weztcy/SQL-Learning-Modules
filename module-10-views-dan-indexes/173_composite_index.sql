-- ====================================================================
-- Modul: 10 - Views dan Indexes
-- File : 173_composite_index.sql
-- Topik: Composite Index (Multi-Column Index)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Composite Index dibuat pada dua atau lebih kolom sekaligus.
-- Efektif untuk query yang memfilter atau mengurutkan berdasarkan kombinasi kolom tersebut.

CREATE INDEX IF NOT EXISTS idx_Customer_Country_City ON Customer (Country, City);

SELECT name, tbl_name, sql 
FROM sqlite_master 
WHERE type = 'index' AND name = 'idx_Customer_Country_City';
