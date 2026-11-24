-- ====================================================================
-- Modul: 08 - DDL dan Struktur Database
-- File : 137_decimal_precision.sql
-- Topik: Presisi DECIMAL dan NUMERIC
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- DECIMAL(p, s) atau NUMERIC(p, s):
-- p = precision (jumlah total digit), s = scale (jumlah digit di belakang koma).
-- Sangat krusial untuk transaksi moneter perbankan agar tidak terkena floating point error.

CREATE TEMP TABLE DemoHarga (
    HargaBarang NUMERIC(10, 2)
);

INSERT INTO DemoHarga VALUES (19.99), (0.99), (149.50);

SELECT HargaBarang, ROUND(HargaBarang * 1.11, 2) AS HargaTermasukPPN11Persen 
FROM DemoHarga;
