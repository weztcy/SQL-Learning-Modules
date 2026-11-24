-- ====================================================================
-- Modul: 07 - Manipulasi Data atau DML
-- File : 122_delete_duplicates.sql
-- Topik: Menghapus Data Duplikat
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Menghapus baris duplikat dengan mempertahankan hanya baris ber-ID terkecil.

CREATE TEMP TABLE DemoDuplikat (Id INTEGER PRIMARY KEY, Nama TEXT);
INSERT INTO DemoDuplikat VALUES (1, 'Rock'), (2, 'Rock'), (3, 'Jazz'), (4, 'Jazz'), (5, 'Pop');

-- Menghapus duplikasi nama genre, mempertahankan ID minimum
DELETE FROM DemoDuplikat
WHERE Id NOT IN (
    SELECT MIN(Id)
    FROM DemoDuplikat
    GROUP BY Nama
);

SELECT * FROM DemoDuplikat ORDER BY Id;
