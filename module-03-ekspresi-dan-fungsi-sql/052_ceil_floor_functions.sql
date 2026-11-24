-- ====================================================================
-- Modul: 03 - Ekspresi dan Fungsi SQL
-- File : 052_ceil_floor_functions.sql
-- Topik: Fungsi Pembulatan ke Atas (CEIL) dan ke Bawah (FLOOR)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- CEIL() / CEILING(): membulatkan ke atas ke bilangan bulat terdekat.
-- FLOOR(): membulatkan ke bawah ke bilangan bulat terdekat.
-- Didukung secara native di SQLite modern (3.35+).

-- Membulatkan durasi menit ke batas atas dan bawah bilangan bulat
SELECT 
    TrackId,
    Milliseconds / 60000.0 AS MenitDesimal,
    CEIL(Milliseconds / 60000.0) AS PembulatanAtas,
    FLOOR(Milliseconds / 60000.0) AS PembulatanBawah
FROM Track
LIMIT 6;
