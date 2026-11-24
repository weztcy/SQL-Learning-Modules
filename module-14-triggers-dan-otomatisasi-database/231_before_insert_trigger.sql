-- ====================================================================
-- Modul: 14 - Triggers dan Otomatisasi Database
-- File : 231_before_insert_trigger.sql
-- Topik: BEFORE INSERT Trigger
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Trigger BEFORE INSERT dieksekusi sebelum baris baru benar-benar ditulis ke tabel.
-- Sering digunakan untuk validasi, format data otomatis, atau menolak input.

CREATE TEMP TABLE DemoMember (
    MemberId INTEGER PRIMARY KEY,
    Nama TEXT NOT NULL,
    Email TEXT NOT NULL
);

CREATE TRIGGER trg_ValidasiEmailMember
BEFORE INSERT ON DemoMember
FOR EACH ROW
WHEN NEW.Email NOT LIKE '%@%'
BEGIN
    SELECT RAISE(ABORT, 'Format email tidak valid (harus memuat @)');
END;

-- Menyisipkan data yang lolos validasi
INSERT INTO DemoMember VALUES (1, 'Budi Santoso', 'budi@chinook.id');

SELECT * FROM DemoMember;
