-- ====================================================================
-- Modul: 18 - Proyek Praktik SQL
-- File : 282_library_database_project.sql
-- Topik: Proyek Database Perpustakaan dan Peminjaman
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

CREATE TEMP TABLE Buku (
    BukuId INTEGER PRIMARY KEY,
    Judul TEXT NOT NULL,
    Penulis TEXT NOT NULL,
    Stok INTEGER DEFAULT 1
);

CREATE TEMP TABLE Peminjaman (
    PeminjamanId INTEGER PRIMARY KEY AUTOINCREMENT,
    BukuId INTEGER,
    NamaPeminjam TEXT,
    TglPinjam DATE,
    TglJatuhTempo DATE,
    TglKembali DATE
);

INSERT INTO Buku VALUES 
    (1, 'Mastering Modern SQL', 'Dr. Relational', 5),
    (2, 'Database System Concepts', 'Silberschatz', 2);

INSERT INTO Peminjaman (BukuId, NamaPeminjam, TglPinjam, TglJatuhTempo, TglKembali) VALUES
    (1, 'Farhan', '2026-05-01', '2026-05-08', '2026-05-07'),
    (2, 'Laila', '2026-05-01', '2026-05-08', '2026-05-12'); -- Terlambat 4 hari

-- Laporan denda keterlambatan (Rp 2.000 per hari lewat jatuh tempo)
SELECT 
    p.PeminjamanId,
    p.NamaPeminjam,
    b.Judul,
    p.TglJatuhTempo,
    p.TglKembali,
    CASE 
        WHEN julianday(p.TglKembali) > julianday(p.TglJatuhTempo) 
        THEN CAST((julianday(p.TglKembali) - julianday(p.TglJatuhTempo)) AS INTEGER) * 2000
        ELSE 0
    END AS DendaKeterlambatan
FROM Peminjaman AS p
INNER JOIN Buku AS b ON p.BukuId = b.BukuId;
