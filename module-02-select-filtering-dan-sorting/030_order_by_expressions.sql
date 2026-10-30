-- ====================================================================
-- Modul: 02 - SELECT, Filtering, dan Sorting
-- File : 030_order_by_expressions.sql
-- Topik: Pengurutan Berdasarkan Ekspresi
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Klausa ORDER BY dapat menerima ekspresi komputasi atau fungsi,
-- bukan hanya sekadar nama kolom statis.

-- Mengurutkan lagu berdasarkan durasi menit hasil konversi secara menurun
SELECT 
    TrackId,
    Name,
    Milliseconds,
    ROUND(Milliseconds / 60000.0, 2) AS DurasiMenit
FROM Track
ORDER BY (Milliseconds / 60000.0) DESC
LIMIT 5;
