-- ====================================================================
-- Modul: 17 - Import, Export, JSON, dan Data Cleaning
-- File : 266_import_csv.sql
-- Topik: Import Data CSV
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Pada CLI sqlite3: .mode csv diikuti perintah .import file.csv NamaTabel.
-- Pada skrip SQL murni, kita menyimulasikan data hasil pembacaan file CSV ke tabel pementasan (staging).

CREATE TEMP TABLE StagingArtisCSV (
    ArtistId INTEGER,
    Name TEXT
);

INSERT INTO StagingArtisCSV VALUES 
    (301, 'Kahitna'),
    (302, 'Sheila on 7'),
    (303, 'Dewa 19');

SELECT * FROM StagingArtisCSV;
