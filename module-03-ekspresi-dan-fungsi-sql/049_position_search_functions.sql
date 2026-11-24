-- ====================================================================
-- Modul: 03 - Ekspresi dan Fungsi SQL
-- File : 049_position_search_functions.sql
-- Topik: Pencarian Posisi Substring (INSTR / POSITION)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- INSTR(string, substring) di SQLite / MySQL mengembalikan posisi indeks karakter
-- pertama dari pola yang dicari (1-based). Jika tidak ditemukan menghasilkan 0.

-- Menemukan posisi karakter '@' pada alamat email pelanggan
SELECT 
    CustomerId,
    Email,
    INSTR(Email, '@') AS PosisiAt,
    SUBSTR(Email, INSTR(Email, '@') + 1) AS DomainEmail
FROM Customer
LIMIT 6;
