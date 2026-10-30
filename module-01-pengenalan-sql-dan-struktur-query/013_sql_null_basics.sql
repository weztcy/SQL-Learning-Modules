-- ====================================================================
-- Modul: 01 - Pengenalan SQL dan Struktur Query
-- File : 013_sql_null_basics.sql
-- Topik: Nilai NULL dalam SQL
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- NULL merepresentasikan nilai yang tidak ada, belum diketahui, atau tidak berlaku.
-- NULL tidak sama dengan angka 0 atau string kosong ('').
-- Operasi perbandingan dengan NULL tidak dapat menggunakan '=' melainkan 'IS NULL'.

-- Menampilkan pelanggan yang kolom Company-nya berisi nilai NULL
SELECT 
    CustomerId,
    FirstName,
    LastName,
    Company
FROM Customer
WHERE Company IS NULL
LIMIT 5;
