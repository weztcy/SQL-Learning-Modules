-- ====================================================================
-- Modul: 08 - DDL dan Struktur Database
-- File : 140_binary_data_types.sql
-- Topik: Tipe Data Biner (BLOB)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- BLOB (Binary Large Object) menyimpan data biner mentah seperti gambar cover album, file audio, atau hash token.
-- Literal biner di SQL diawali dengan X'...' (hexadecimal).

CREATE TEMP TABLE DemoBlob (
    AlbumId INTEGER,
    CoverHash BLOB
);

INSERT INTO DemoBlob VALUES (1, X'4A46494600010100000100010000');

SELECT AlbumId, hex(CoverHash) AS RepresentasiHex, length(CoverHash) AS UkuranByte 
FROM DemoBlob;
