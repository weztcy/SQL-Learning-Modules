-- ====================================================================
-- Modul: 09 - Constraints dan Relasi Database
-- File : 161_restrict_no_action.sql
-- Topik: RESTRICT dan NO ACTION
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- RESTRICT / NO ACTION mencegah penghapusan atau pengubahan kunci primer tabel induk
-- apabila masih ada catatan anak yang mengait padanya, menjaga integritas data secara ketat.

PRAGMA foreign_keys = ON;

CREATE TEMP TABLE Jurusan (
    Id INTEGER PRIMARY KEY,
    Nama TEXT
);

CREATE TEMP TABLE Siswa (
    SiswaId INTEGER PRIMARY KEY,
    Nama TEXT,
    JurusanId INTEGER,
    FOREIGN KEY (JurusanId) REFERENCES Jurusan(Id) ON DELETE RESTRICT
);

INSERT INTO Jurusan VALUES (1, 'Musik Klasik');
INSERT INTO Siswa VALUES (101, 'Rian', 1);

-- Memeriksa relasi aktif
SELECT s.Nama, j.Nama AS Jurusan 
FROM Siswa s JOIN Jurusan j ON s.JurusanId = j.Id;
