-- ====================================================================
-- Modul: 05 - JOIN dan Relasi Antartabel
-- File : 082_join_conditions_on.sql
-- Topik: Kondisi Join dengan Klausa ON
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Klausa ON menentukan kriteria relasi dan predikat gabungan antara dua tabel.

SELECT 
    t.TrackId,
    t.Name AS JudulLagu,
    g.Name AS NamaGenre,
    t.UnitPrice
FROM Track AS t
INNER JOIN Genre AS g 
    ON t.GenreId = g.GenreId AND g.Name = 'Rock'
LIMIT 8;
