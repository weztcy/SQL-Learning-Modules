-- ====================================================================
-- Modul: 17 - Import, Export, JSON, dan Data Cleaning
-- File : 272_json_extract.sql
-- Topik: Ekstraksi Nilai JSON (JSON_EXTRACT)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Fungsi json_extract(kolom, '$.properti') mengekstrak atribut spesifik dari dokumen JSON.

CREATE TEMP TABLE ProfilPelangganJson (
    CustId INTEGER,
    DataJson TEXT
);

INSERT INTO ProfilPelangganJson VALUES (
    101, 
    '{"kontak": {"telepon": "0812345678", "tipe": "mobile"}, "preferensi": "Jazz"}'
);

SELECT 
    CustId,
    json_extract(DataJson, '$.preferensi') AS PreferensiGenre,
    json_extract(DataJson, '$.kontak.telepon') AS NomorTelepon
FROM ProfilPelangganJson;
