-- ====================================================================
-- Modul: 03 - Ekspresi dan Fungsi SQL
-- File : 045_trim_functions.sql
-- Topik: Fungsi TRIM, LTRIM, dan RTRIM
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- TRIM(): menghapus spasi di awal dan akhir teks.
-- LTRIM(): menghapus spasi hanya di sisi kiri.
-- RTRIM(): menghapus spasi hanya di sisi kanan.

-- Membersihkan spasi berlebih pada manipulasi string
SELECT 
    '   Chinook Music Store   ' AS TeksAsli,
    TRIM('   Chinook Music Store   ') AS TeksTrim,
    LTRIM('   Chinook Music Store   ') AS TeksLTrim,
    RTRIM('   Chinook Music Store   ') AS TeksRTrim;
