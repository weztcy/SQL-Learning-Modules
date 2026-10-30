-- ====================================================================
-- Modul: 07 - Manipulasi Data atau DML
-- File : 114_insert_default_values.sql
-- Topik: Insert Nilai Default (DEFAULT VALUES)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Kata kunci DEFAULT VALUES menginstruksikan database untuk mengisi
-- seluruh kolom dengan nilai bawaan (default) yang telah didefinisikan pada skema tabel.

CREATE TEMP TABLE DemoLog (
    LogId INTEGER PRIMARY KEY AUTOINCREMENT,
    Pesan TEXT DEFAULT 'Aktivitas Tercatat',
    WaktuBuat DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Menyisipkan baris menggunakan seluruh nilai default
INSERT INTO DemoLog DEFAULT VALUES;

SELECT * FROM DemoLog;
