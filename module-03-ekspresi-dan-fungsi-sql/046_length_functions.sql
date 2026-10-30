-- ====================================================================
-- Modul: 03 - Ekspresi dan Fungsi SQL
-- File : 046_length_functions.sql
-- Topik: Fungsi Panjang String (LENGTH / LEN)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Fungsi LENGTH(string) mengembalikan jumlah karakter dari suatu teks string.
-- (Pada T-SQL digunakan fungsi LEN).

-- Menghitung panjang karakter dari judul lagu
SELECT 
    TrackId,
    Name,
    LENGTH(Name) AS PanjangKarakter
FROM Track
ORDER BY LENGTH(Name) DESC
LIMIT 6;
