-- ====================================================================
-- Modul: 09 - Constraints dan Relasi Database
-- File : 159_on_delete_cascade.sql
-- Topik: ON DELETE CASCADE
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Aksi ON DELETE CASCADE memastikan bila baris pada tabel induk dihapus,
-- seluruh baris anak yang merujuknya akan otomatis terhapus tanpa meninggalkan data sisa.

PRAGMA foreign_keys = ON;

CREATE TEMP TABLE IndukOrder (
    OrderId INTEGER PRIMARY KEY,
    Tanggal DATE
);

CREATE TEMP TABLE DetailOrder (
    DetailId INTEGER PRIMARY KEY,
    OrderId INTEGER,
    Item TEXT,
    FOREIGN KEY (OrderId) REFERENCES IndukOrder(OrderId) ON DELETE CASCADE
);

INSERT INTO IndukOrder VALUES (1, '2026-05-01');
INSERT INTO DetailOrder VALUES (1, 1, 'Album Vinyl'), (2, 1, 'Poster Konser');

-- Menghapus order induk (seluruh detail anak akan otomatis ikut terhapus)
DELETE FROM IndukOrder WHERE OrderId = 1;

SELECT COUNT(*) AS SisaDetailAnak FROM DetailOrder;
