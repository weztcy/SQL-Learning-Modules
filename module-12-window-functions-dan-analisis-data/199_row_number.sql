-- ====================================================================
-- Modul: 12 - Window Functions dan Analisis Data
-- File : 199_row_number.sql
-- Topik: Fungsi ROW_NUMBER()
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- ROW_NUMBER() memberikan nomor urut sekuensial unik (1, 2, 3, ...) pada setiap baris data.

-- Memberikan nomor urut lagu per Album berdasarkan durasi terpanjang
SELECT 
    AlbumId,
    Name AS JudulLagu,
    Milliseconds,
    ROW_NUMBER() OVER (PARTITION BY AlbumId ORDER BY Milliseconds DESC) AS NomorUrutDurasi
FROM Track
WHERE AlbumId IN (1, 2)
LIMIT 10;
