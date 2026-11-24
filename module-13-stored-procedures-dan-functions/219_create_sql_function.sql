-- ====================================================================
-- Modul: 13 - Stored Procedures dan Functions
-- File : 219_create_sql_function.sql
-- Topik: Membuat SQL Function (User-Defined Function / UDF)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- User-Defined Function (UDF) mengembalikan nilai skalar atau tabel dan dapat
-- dipanggil langsung di dalam klausa SELECT atau WHERE.

-- Menguji konversi durasi milidetik menjadi format menit:detik
SELECT 
    TrackId,
    Name,
    Milliseconds,
    (Milliseconds / 60000) || ':' || PRINTF('%02d', (Milliseconds % 60000) / 1000) AS DurasiFormat
FROM Track
LIMIT 5;
