-- ====================================================================
-- Modul: 09 - Constraints dan Relasi Database
-- File : 162_set_null_foreign_key.sql
-- Topik: ON DELETE SET NULL
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- ON DELETE SET NULL mengubah kolom foreign key pada tabel anak menjadi NULL
-- ketika baris tabel induk terkait dihapus.

PRAGMA foreign_keys = ON;

CREATE TEMP TABLE Manajer (
    ManajerId INTEGER PRIMARY KEY,
    Nama TEXT
);

CREATE TEMP TABLE Proyek (
    ProyekId INTEGER PRIMARY KEY,
    NamaProyek TEXT,
    PimpinanId INTEGER,
    FOREIGN KEY (PimpinanId) REFERENCES Manajer(ManajerId) ON DELETE SET NULL
);

INSERT INTO Manajer VALUES (1, 'Hendra');
INSERT INTO Proyek VALUES (50, 'Album Re-mastering', 1);

-- Menghapus manajer (PimpinanId pada Proyek akan diset menjadi NULL)
DELETE FROM Manajer WHERE ManajerId = 1;

SELECT * FROM Proyek;
