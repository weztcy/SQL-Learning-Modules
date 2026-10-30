-- ====================================================================
-- Modul: 08 - DDL dan Struktur Database
-- File : 139_date_time_data_types.sql
-- Topik: Tipe Data Tanggal dan Waktu
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Format waktu ISO 8601 standar:
-- DATE: 'YYYY-MM-DD'
-- TIME: 'HH:MM:SS'
-- DATETIME: 'YYYY-MM-DD HH:MM:SS'

CREATE TEMP TABLE DemoWaktu (
    JadwalMulai DATE,
    WaktuRilis DATETIME
);

INSERT INTO DemoWaktu VALUES ('2026-05-20', '2026-05-20 19:30:00');

SELECT JadwalMulai, WaktuRilis, STRFTIME('%d/%m/%Y', JadwalMulai) AS FormatIndonesia 
FROM DemoWaktu;
