-- ====================================================================
-- Modul: 02 - SELECT, Filtering, dan Sorting
-- File : 021_not_in_operator.sql
-- Topik: Operator NOT IN
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Operator NOT IN menyaring baris yang nilainya TIDAK terdapat di dalam daftar.
-- Hati-hati bila daftar memuat NULL, karena evaluasi dapat menghasilkan UNKNOWN.

-- Mengambil lagu yang bukan berformat audio MPEG (MediaTypeId 1) atau AAC (MediaTypeId 5)
SELECT 
    TrackId,
    Name,
    MediaTypeId,
    UnitPrice
FROM Track
WHERE MediaTypeId NOT IN (1, 5)
LIMIT 5;
