-- ====================================================================
-- Modul: 09 - Constraints dan Relasi Database
-- File : 163_one_to_one_relationship.sql
-- Topik: Relasi One-to-One (Satu ke Satu)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Relasi One-to-One dimodelkan dengan menempatkan konstrain UNIQUE pada kolom Foreign Key,
-- sehingga 1 baris anak hanya dapat berpasangan dengan tepat 1 baris induk.

CREATE TEMP TABLE Pengguna (
    Id INTEGER PRIMARY KEY,
    Username TEXT NOT NULL
);

CREATE TEMP TABLE ProfilKtp (
    ProfilId INTEGER PRIMARY KEY,
    PenggunaId INTEGER UNIQUE NOT NULL,
    NomorIdentitas TEXT NOT NULL,
    FOREIGN KEY (PenggunaId) REFERENCES Pengguna(Id)
);

INSERT INTO Pengguna VALUES (1, 'anton');
INSERT INTO ProfilKtp VALUES (100, 1, '320101990001');

SELECT p.Username, k.NomorIdentitas 
FROM Pengguna p JOIN ProfilKtp k ON p.Id = k.PenggunaId;
