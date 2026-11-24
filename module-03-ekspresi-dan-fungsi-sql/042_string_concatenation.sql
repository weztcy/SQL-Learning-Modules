-- ====================================================================
-- Modul: 03 - Ekspresi dan Fungsi SQL
-- File : 042_string_concatenation.sql
-- Topik: Penggabungan String dengan Operator ||
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Standar SQL dan SQLite menggunakan operator double pipe (||) untuk menggabungkan string.

-- Menggabungkan nama depan, spasi, dan nama belakang pelanggan menjadi nama lengkap
SELECT 
    CustomerId,
    FirstName || ' ' || LastName AS NamaLengkap,
    City || ', ' || Country AS Lokasi
FROM Customer
LIMIT 6;
