-- ====================================================================
-- Modul: 12 - Window Functions dan Analisis Data
-- File : 201_dense_rank.sql
-- Topik: Fungsi DENSE_RANK()
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- DENSE_RANK() mirip dengan RANK(), namun TIDAK pernah meloncatkan nomor peringkat
-- setelah terjadi nilai kembar (misal: 1, 2, 2, 3).

SELECT 
    TrackId,
    Name,
    UnitPrice,
    DENSE_RANK() OVER (ORDER BY UnitPrice DESC) AS PeringkatKategoriHarga
FROM Track
LIMIT 8;
