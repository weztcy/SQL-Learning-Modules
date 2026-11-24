-- ====================================================================
-- Modul: 10 - Views dan Indexes
-- File : 171_create_index.sql
-- Topik: Membuat Index (CREATE INDEX)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Index adalah struktur data B-Tree yang mempercepat pencarian data pada klausa WHERE dan JOIN,
-- menghindari Full Table Scan (pembacaan seluruh baris tabel secara sekuensial).

CREATE INDEX IF NOT EXISTS idx_Track_Name ON Track (Name);

-- Memeriksa metadata index yang tersimpan di sistem
SELECT type, name, tbl_name FROM sqlite_master WHERE type = 'index' AND name = 'idx_Track_Name';
