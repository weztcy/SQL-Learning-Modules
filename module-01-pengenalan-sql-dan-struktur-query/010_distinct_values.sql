-- ====================================================================
-- Modul: 01 - Pengenalan SQL dan Struktur Query
-- File : 010_distinct_values.sql
-- Topik: Mengambil Nilai Unik dengan DISTINCT
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Kata kunci DISTINCT digunakan setelah SELECT untuk mengeliminasi baris duplikat,
-- sehingga hanya nilai-nilai unik yang ditampilkan pada hasil query.

-- Menampilkan daftar negara unik tempat tinggal pelanggan (Customer)
SELECT DISTINCT 
    Country
FROM Customer
ORDER BY Country ASC
LIMIT 10;
