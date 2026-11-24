-- ====================================================================
-- Modul: 03 - Ekspresi dan Fungsi SQL
-- File : 037_case_multiple_conditions.sql
-- Topik: CASE dengan Banyak Kondisi
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- CASE dapat memiliki banyak klausa WHEN bertingkat yang dievaluasi secara berurutan.
-- Begitu satu kondisi cocok, evaluasi berhenti dan mengembalikan nilai THEN terkait.

-- Mengelompokkan durasi trek lagu menjadi Pendek, Sedang, atau Panjang
SELECT 
    TrackId,
    Name,
    Milliseconds / 1000 AS Detik,
    CASE 
        WHEN Milliseconds < 180000 THEN 'Pendek (< 3 Menit)'
        WHEN Milliseconds BETWEEN 180000 AND 300000 THEN 'Sedang (3 - 5 Menit)'
        ELSE 'Panjang (> 5 Menit)'
    END AS KategoriDurasi
FROM Track
LIMIT 8;
