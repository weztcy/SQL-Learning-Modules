-- ====================================================================
-- Modul: 11 - Transactions dan Concurrency
-- File : 195_concurrent_updates.sql
-- Topik: Update Konkuren dan Optimistic Concurrency Control
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Optimistic Concurrency Control menggunakan kolom versi atau timestamp:
-- UPDATE tabel SET data = nilai_baru, Versi = Versi + 1 WHERE id = 1 AND Versi = versi_lama;

CREATE TEMP TABLE DemoVersi (
    Id INTEGER PRIMARY KEY,
    Status TEXT,
    Versi INTEGER DEFAULT 1
);

INSERT INTO DemoVersi VALUES (1, 'Draft', 1);

-- Pembaruan konkuren yang aman berbasis versi
UPDATE DemoVersi
SET Status = 'Dipublikasikan', Versi = Versi + 1
WHERE Id = 1 AND Versi = 1;

SELECT * FROM DemoVersi;
