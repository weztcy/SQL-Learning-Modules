-- ====================================================================
-- Modul: 13 - Stored Procedures dan Functions
-- File : 217_procedure_parameters.sql
-- Topik: Parameter Prosedur
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Parameter bertindak sebagai variabel masukan yang diteruskan ke dalam prosedur.
-- Contoh: sp_CariLaguGenre(p_GenreName VARCHAR, p_MaxHarga DECIMAL)

-- Menyimulasikan pemanggilan parameter (Genre = 'Rock', MaxHarga = 0.99)
SELECT 
    t.TrackId,
    t.Name AS JudulLagu,
    g.Name AS NamaGenre,
    t.UnitPrice
FROM Track AS t
INNER JOIN Genre AS g ON t.GenreId = g.GenreId
WHERE g.Name = 'Rock' AND t.UnitPrice <= 0.99
LIMIT 5;
