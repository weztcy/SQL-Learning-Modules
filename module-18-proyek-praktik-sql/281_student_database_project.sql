-- ====================================================================
-- Modul: 18 - Proyek Praktik SQL
-- File : 281_student_database_project.sql
-- Topik: Proyek Database Mahasiswa dan Nilai Akademik
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- 1. Pembuatan skema tabel mahasiswa dan nilai mata kuliah
CREATE TEMP TABLE Mahasiswa (
    NIM TEXT PRIMARY KEY,
    Nama TEXT NOT NULL,
    Jurusan TEXT NOT NULL
);

CREATE TEMP TABLE NilaiUjian (
    NilaiId INTEGER PRIMARY KEY AUTOINCREMENT,
    NIM TEXT,
    MataKuliah TEXT,
    SKS INTEGER,
    BobotNilai REAL,
    FOREIGN KEY (NIM) REFERENCES Mahasiswa(NIM)
);

-- 2. Memasukkan data sampel
INSERT INTO Mahasiswa VALUES 
    ('101', 'Aditya Wijaya', 'Sains Komputer'),
    ('102', 'Dian Sastro', 'Sistem Informasi');

INSERT INTO NilaiUjian (NIM, MataKuliah, SKS, BobotNilai) VALUES
    ('101', 'Basis Data Lanjut', 3, 4.0),
    ('101', 'Algoritma Pemrograman', 4, 3.5),
    ('102', 'Manajemen Proyek TI', 3, 3.75);

-- 3. Menghitung Indeks Prestasi Kumulatif (IPK)
SELECT 
    m.NIM,
    m.Nama,
    m.Jurusan,
    SUM(n.SKS) AS TotalSKS,
    ROUND(SUM(n.SKS * n.BobotNilai) / SUM(n.SKS), 2) AS IPK
FROM Mahasiswa AS m
INNER JOIN NilaiUjian AS n ON m.NIM = n.NIM
GROUP BY m.NIM, m.Nama, m.Jurusan;
