-- ====================================================================
-- Modul: 02 - SELECT, Filtering, dan Sorting
-- File : 023_wildcard_patterns.sql
-- Topik: Wildcard % dan _
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Wildcard SQL:
-- '%' : mewakili nol, satu, atau banyak karakter bebas
-- '_' : mewakili tepat satu karakter apa pun

-- Mencari artis yang memiliki nama 3 karakter diawali huruf 'U' (misalnya 'U2')
SELECT 
    ArtistId,
    Name
FROM Artist
WHERE Name LIKE 'U_';
