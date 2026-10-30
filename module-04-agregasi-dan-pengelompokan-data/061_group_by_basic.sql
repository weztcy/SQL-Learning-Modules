-- ====================================================================
-- Modul: 04 - Agregasi dan Pengelompokan Data
-- File : 061_group_by_basic.sql
-- Topik: Klausa GROUP BY Dasar
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Klausa GROUP BY mengelompokkan baris data yang memiliki nilai kolom yang sama,
-- sehingga fungsi agregat dapat diterapkan pada setiap kelompok secara independen.

-- Menghitung jumlah pelanggan di setiap negara
SELECT 
    Country,
    COUNT(*) AS JumlahPelanggan
FROM Customer
GROUP BY Country
ORDER BY JumlahPelanggan DESC, Country ASC
LIMIT 8;
