-- ====================================================================
-- Modul: 09 - Constraints dan Relasi Database
-- File : 152_foreign_key.sql
-- Topik: Foreign Key (Integritas Referensial)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- FOREIGN KEY mengaitkan kolom pada tabel anak ke kolom PRIMARY KEY tabel induk,
-- mencegah timbulnya data yatim (orphan records).

PRAGMA foreign_keys = ON;

CREATE TEMP TABLE DemoPenerbit (
    PenerbitId INTEGER PRIMARY KEY,
    NamaPenerbit TEXT NOT NULL
);

CREATE TEMP TABLE DemoBukuMusik (
    BukuId INTEGER PRIMARY KEY,
    Judul TEXT NOT NULL,
    PenerbitId INTEGER,
    FOREIGN KEY (PenerbitId) REFERENCES DemoPenerbit(PenerbitId)
);

INSERT INTO DemoPenerbit VALUES (1, 'Gramedia Musik');
INSERT INTO DemoBukuMusik VALUES (101, 'Teori Harmoni Modern', 1);

SELECT b.Judul, p.NamaPenerbit 
FROM DemoBukuMusik AS b 
INNER JOIN DemoPenerbit AS p ON b.PenerbitId = p.PenerbitId;
