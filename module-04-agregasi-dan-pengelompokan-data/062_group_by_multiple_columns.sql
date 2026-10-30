-- ====================================================================
-- Modul: 04 - Agregasi dan Pengelompokan Data
-- File : 062_group_by_multiple_columns.sql
-- Topik: Pengelompokan Beberapa Kolom (Multi-Column GROUP BY)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- GROUP BY dapat menggunakan beberapa kolom untuk membuat subkelompok hierarkis.

-- Mengelompokkan pelanggan berdasarkan Negara dan Kota
SELECT 
    Country,
    City,
    COUNT(*) AS JumlahPelanggan
FROM Customer
WHERE Country IN ('USA', 'Canada', 'Brazil')
GROUP BY Country, City
ORDER BY Country ASC, JumlahPelanggan DESC
LIMIT 8;
