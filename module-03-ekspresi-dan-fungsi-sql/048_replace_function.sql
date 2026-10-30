-- ====================================================================
-- Modul: 03 - Ekspresi dan Fungsi SQL
-- File : 048_replace_function.sql
-- Topik: Fungsi REPLACE
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Fungsi REPLACE(string, substring_lama, substring_baru) mengganti
-- seluruh kemunculan teks tertentu dengan teks pengganti.

-- Mengganti tanda hubung (-) pada nomor telepon dengan spasi
SELECT 
    CustomerId,
    Phone AS TeleponAsli,
    REPLACE(Phone, '-', ' ') AS TeleponFormatBaru
FROM Customer
WHERE Phone IS NOT NULL
LIMIT 6;
