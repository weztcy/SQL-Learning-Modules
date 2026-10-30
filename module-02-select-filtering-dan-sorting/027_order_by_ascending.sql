-- ====================================================================
-- Modul: 02 - SELECT, Filtering, dan Sorting
-- File : 027_order_by_ascending.sql
-- Topik: Pengurutan Ascending (ASC)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Klausa ORDER BY mengurutkan baris keluaran. Kata kunci ASC (default)
-- mengurutkan dari nilai terkecil ke terbesar (A-Z, angka kecil ke besar).

-- Mengurutkan nama artis secara alfabetis dari A ke Z
SELECT 
    ArtistId,
    Name
FROM Artist
ORDER BY Name ASC
LIMIT 5;
