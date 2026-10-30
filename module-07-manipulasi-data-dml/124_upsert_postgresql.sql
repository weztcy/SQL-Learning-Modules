-- ====================================================================
-- Modul: 07 - Manipulasi Data atau DML
-- File : 124_upsert_postgresql.sql
-- Topik: Upsert dengan ON CONFLICT (PostgreSQL / SQLite 3.24+)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- UPSERT (Insert or Update) mencoba menyisipkan baris, dan jika terjadi konflik
-- pada kolom kunci unik (PRIMARY KEY / UNIQUE), akan melakukan tindakan alternatif (UPDATE atau DO NOTHING).

CREATE TEMP TABLE DemoTarget (
    Id INTEGER PRIMARY KEY,
    Nama TEXT,
    Kunjungan INTEGER
);

INSERT INTO DemoTarget VALUES (1, 'Budi', 1);

-- Melakukan UPSERT: jika Id 1 sudah ada, tambahkan jumlah kunjungannya
INSERT INTO DemoTarget (Id, Nama, Kunjungan)
VALUES (1, 'Budi', 1)
ON CONFLICT(Id) DO UPDATE SET 
    Kunjungan = DemoTarget.Kunjungan + 1;

SELECT * FROM DemoTarget;
