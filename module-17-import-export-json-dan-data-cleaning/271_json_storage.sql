-- ====================================================================
-- Modul: 17 - Import, Export, JSON, dan Data Cleaning
-- File : 271_json_storage.sql
-- Topik: Penyimpanan Data Format JSON
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Modern database mendukung penyimpanan dokumen semi-terstruktur JSON secara native
-- dengan validasi format otomatis (json() function).

CREATE TEMP TABLE KatalogJson (
    Id INTEGER PRIMARY KEY,
    MetadataAudio TEXT CHECK(json_valid(MetadataAudio))
);

INSERT INTO KatalogJson VALUES (
    1, 
    json('{"bitrate": 320, "format": "mp3", "lossless": false, "tags": ["rock", "classic"]}')
);

SELECT Id, MetadataAudio FROM KatalogJson;
