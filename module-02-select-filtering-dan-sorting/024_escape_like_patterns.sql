-- ====================================================================
-- Modul: 02 - SELECT, Filtering, dan Sorting
-- File : 024_escape_like_patterns.sql
-- Topik: Escape Karakter pada Pola LIKE
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Ketika teks yang dicari mengandung karakter '%' atau '_' harfiah,
-- klausa ESCAPE digunakan untuk menentukan karakter pelindung (escape character).

-- Mencari judul atau teks yang memuat karakter khusus menggunakan ESCAPE
-- Contoh mencari teks dengan tanda persen atau pola eksplisit
SELECT 
    TrackId,
    Name
FROM Track
WHERE Name LIKE '%/%' ESCAPE '/' OR Name LIKE '%!_%' ESCAPE '!'
LIMIT 5;
