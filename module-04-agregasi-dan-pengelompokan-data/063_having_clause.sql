-- ====================================================================
-- Modul: 04 - Agregasi dan Pengelompokan Data
-- File : 063_having_clause.sql
-- Topik: Klausa HAVING
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Klausa HAVING digunakan untuk menyaring kelompok data hasil agregasi.
-- (WHERE menyaring baris individual sebelum dikelompokkan, HAVING menyaring kelompok).

-- Menampilkan negara yang memiliki lebih dari 3 pelanggan
SELECT 
    Country,
    COUNT(*) AS JumlahPelanggan
FROM Customer
GROUP BY Country
HAVING COUNT(*) > 3
ORDER BY JumlahPelanggan DESC;
