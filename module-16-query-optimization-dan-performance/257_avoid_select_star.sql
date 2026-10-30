-- ====================================================================
-- Modul: 16 - Query Optimization dan Performance
-- File : 257_avoid_select_star.sql
-- Topik: Menghindari SELECT * Jika Tidak Diperlukan
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Mengambil hanya kolom yang diperlukan mengurangi volume data memori,
-- I/O disk, serta memungkinkan pemanfaatan covering index.

-- Memilih hanya kolom esensial
SELECT 
    TrackId,
    Name,
    UnitPrice
FROM Track
LIMIT 5;
