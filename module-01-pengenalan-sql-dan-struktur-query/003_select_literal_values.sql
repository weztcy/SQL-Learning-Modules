-- ====================================================================
-- Modul: 01 - Pengenalan SQL dan Struktur Query
-- File : 003_select_literal_values.sql
-- Topik: Menampilkan Nilai Literal dengan SELECT
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Perintah SELECT dapat digunakan tanpa klausa FROM untuk mengevaluasi
-- nilai konstan (literal), seperti teks string, angka numerik, dan operasi matematika.

-- Menampilkan teks literal, angka integer, angka desimal, dan hasil perhitungan
SELECT 
    'Halo Dunia SQL' AS PesanTeks,
    100 AS AngkaBulat,
    3.14159 AS AngkaDesimal,
    (25 * 4) + 10 AS HasilHitung;
