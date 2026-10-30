-- ====================================================================
-- Modul: 08 - DDL dan Struktur Database
-- File : 136_integer_numeric_types.sql
-- Topik: Tipe Data Integer dan Numerik
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Tipe data numerik integer menyimpan bilangan bulat: TINYINT, SMALLINT, INT/INTEGER, BIGINT.
-- SQLite mengoptimalkan penyimpanan integer antara 1 hingga 8 byte secara otomatis.

CREATE TEMP TABLE DemoNumerik (
    JumlahTrack SMALLINT,
    TotalPlay BIGINT,
    Rating INTEGER
);

INSERT INTO DemoNumerik VALUES (12, 15000000, 5);

SELECT * FROM DemoNumerik;
