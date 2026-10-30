-- ====================================================================
-- Modul: 03 - Ekspresi dan Fungsi SQL
-- File : 043_concat_function.sql
-- Topik: Fungsi CONCAT
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Pada MySQL dan PostgreSQL, fungsi CONCAT(...) menggabungkan teks.
-- SQLite mendukung fungsi CONCAT() sejak versi 3.44.0 atau operator ||.

-- Menggabungkan alamat lengkap pelanggan
SELECT 
    CustomerId,
    FirstName || ' ' || LastName || ' - ' || City || ' (' || Country || ')' AS BiodataLengkap
FROM Customer
LIMIT 6;
