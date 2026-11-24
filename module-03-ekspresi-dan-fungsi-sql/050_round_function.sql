-- ====================================================================
-- Modul: 03 - Ekspresi dan Fungsi SQL
-- File : 050_round_function.sql
-- Topik: Fungsi ROUND
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Fungsi ROUND(angka, jumlah_desimal) membulatkan angka ke presisi desimal terdekat.

-- Menghitung durasi menit trek dan membulatkannya ke 2 angka di belakang koma
SELECT 
    TrackId,
    Name,
    Milliseconds,
    Milliseconds / 60000.0 AS MenitPenuh,
    ROUND(Milliseconds / 60000.0, 2) AS MenitDibulatkan
FROM Track
LIMIT 6;
