-- ====================================================================
-- Modul: 01 - Pengenalan SQL dan Struktur Query
-- File : 006_select_columns.sql
-- Topik: Memilih Kolom Tertentu dari Tabel
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Memilih hanya kolom-kolom yang dibutuhkan (proyeksi kolom) merupakan
-- praktik terbaik untuk menghemat memori, bandwidth jaringan, dan I/O database.

-- Memilih kolom CustomerId, FirstName, LastName, dan Country dari tabel Customer
SELECT 
    CustomerId,
    FirstName,
    LastName,
    Country
FROM Customer
LIMIT 5;
