-- ====================================================================
-- Modul: 11 - Transactions dan Concurrency
-- File : 191_row_level_locking.sql
-- Topik: Row-Level Locking (Pessimistic Locking)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Pada PostgreSQL / MySQL / Oracle:
-- SELECT * FROM Track WHERE TrackId = 1 FOR UPDATE;
-- Klausa FOR UPDATE mengunci baris spesifik tersebut agar transaksi lain tidak dapat mengubahnya
-- hingga transaksi ini selesai.

-- Di SQLite, locking dikelola pada level database file / tabel secara aman.
SELECT TrackId, Name, UnitPrice FROM Track WHERE TrackId = 1;
