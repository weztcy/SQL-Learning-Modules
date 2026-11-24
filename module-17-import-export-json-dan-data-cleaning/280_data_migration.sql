-- ====================================================================
-- Modul: 17 - Import, Export, JSON, dan Data Cleaning
-- File : 280_data_migration.sql
-- Topik: Migrasi Data Antartabel (ETL Pipeline)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Memindahkan dan mentransformasikan data dari tabel transaksional OLTP ke tabel dimensi analitik.

CREATE TEMP TABLE DimArtis (
    DimArtisKey INTEGER PRIMARY KEY AUTOINCREMENT,
    ArtistId INTEGER,
    NamaArtis TEXT,
    KategoriKatalog TEXT
);

INSERT INTO DimArtis (ArtistId, NamaArtis, KategoriKatalog)
SELECT 
    ArtistId,
    Name,
    'Katalog Reguler'
FROM Artist
WHERE ArtistId <= 5;

SELECT * FROM DimArtis;
