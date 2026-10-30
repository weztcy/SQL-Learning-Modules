-- ====================================================================
-- Modul: 02 - SELECT, Filtering, dan Sorting
-- File : 017_comparison_operators.sql
-- Topik: Operator Perbandingan
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Operator perbandingan dasar dalam SQL:
-- = (sama dengan), != atau <> (tidak sama dengan), < (kurang dari),
-- <= (kurang dari sama dengan), > (lebih dari), >= (lebih dari sama dengan).

-- Mengambil lagu yang durasinya lebih dari atau sama dengan 500.000 milidetik (~8.3 menit)
SELECT 
    TrackId,
    Name,
    Milliseconds,
    UnitPrice
FROM Track
WHERE Milliseconds >= 500000
LIMIT 5;
