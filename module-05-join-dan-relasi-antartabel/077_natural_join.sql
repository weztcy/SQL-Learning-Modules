-- ====================================================================
-- Modul: 05 - JOIN dan Relasi Antartabel
-- File : 077_natural_join.sql
-- Topik: NATURAL JOIN
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- NATURAL JOIN secara otomatis menghubungkan dua tabel berdasarkan seluruh kolom
-- yang memiliki nama sama persis di kedua tabel.

-- Menghubungkan Album dan Artist secara alami pada kolom ArtistId
SELECT 
    AlbumId,
    Title,
    Name AS NamaArtis
FROM Album
NATURAL JOIN Artist
LIMIT 8;
