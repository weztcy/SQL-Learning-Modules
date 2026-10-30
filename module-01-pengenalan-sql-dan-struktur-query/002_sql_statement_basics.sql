-- ====================================================================
-- Modul: 01 - Pengenalan SQL dan Struktur Query
-- File : 002_sql_statement_basics.sql
-- Topik: Struktur Statement SQL
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Statement SQL merupakan instruksi lengkap yang dikirim ke database engine.
-- Struktur umum terdiri dari klausa SELECT (kolom yang diinginkan)
-- dan klausa FROM (tabel sumber data).
-- Setiap statement standar diakhiri dengan tanda titik koma (;).

-- Mengambil daftar ID dan Nama Genre dari tabel Genre
SELECT 
    GenreId,
    Name
FROM Genre
LIMIT 5;
