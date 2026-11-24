-- ====================================================================
-- Modul: 02 - SELECT, Filtering, dan Sorting
-- File : 022_like_operator.sql
-- Topik: Operator LIKE
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Operator LIKE digunakan untuk pencarian pola teks (pattern matching).
-- Di SQLite, LIKE pada string ASCII defaultnya bersifat case-insensitive.

-- Mengambil seluruh nama lagu yang diawali kata 'Love'
SELECT 
    TrackId,
    Name,
    Composer
FROM Track
WHERE Name LIKE 'Love%'
LIMIT 5;
