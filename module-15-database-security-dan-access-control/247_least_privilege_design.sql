-- ====================================================================
-- Modul: 15 - Database Security dan Access Control
-- File : 247_least_privilege_design.sql
-- Topik: Prinsip Hak Akses Minimal (Principle of Least Privilege)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Setiap pengguna, layanan, atau aplikasi hanya boleh diberikan hak akses
-- seminimal mungkin yang diperlukan untuk menjalankan tugas pekerjaannya.

SELECT 
    'Aplikasi Web Publik' AS Layanan,
    'Hanya SELECT pada tabel Track, Album, Artist, Genre' AS IzinDiberikan,
    'Dilarang akses langsung ke tabel Employee atau informasi kartu pelanggan' AS BatasanKeamanan;
