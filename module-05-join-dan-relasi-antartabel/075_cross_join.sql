-- ====================================================================
-- Modul: 05 - JOIN dan Relasi Antartabel
-- File : 075_cross_join.sql
-- Topik: CROSS JOIN (Cartesian Product)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- CROSS JOIN menghasilkan perkalian kartesian (Cartesian Product):
-- setiap baris di tabel pertama dipasangkan dengan setiap baris di tabel kedua.

-- Mengombinasikan tipe media (MediaType) dengan genre (Genre) sampel
SELECT 
    m.MediaTypeId,
    m.Name AS TipeMedia,
    g.GenreId,
    g.Name AS NamaGenre
FROM MediaType AS m
CROSS JOIN Genre AS g
WHERE m.MediaTypeId <= 2 AND g.GenreId <= 3;
