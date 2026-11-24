-- ====================================================================
-- Modul: 09 - Constraints dan Relasi Database
-- File : 160_on_update_cascade.sql
-- Topik: ON UPDATE CASCADE
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- ON UPDATE CASCADE menyelaraskan pembaruan kunci primer induk ke seluruh kunci asing tabel anak.

PRAGMA foreign_keys = ON;

CREATE TEMP TABLE KategoriProduk (
    KodeKategori TEXT PRIMARY KEY,
    NamaKategori TEXT
);

CREATE TEMP TABLE ProdukKatalog (
    ProdukId INTEGER PRIMARY KEY,
    NamaProduk TEXT,
    KatRef TEXT,
    FOREIGN KEY (KatRef) REFERENCES KategoriProduk(KodeKategori) ON UPDATE CASCADE
);

INSERT INTO KategoriProduk VALUES ('KAT-A', 'Audio Aksesoris');
INSERT INTO ProdukKatalog VALUES (1, 'Headphone Stand', 'KAT-A');

-- Memperbarui primary key induk
UPDATE KategoriProduk SET KodeKategori = 'KAT-NEW' WHERE KodeKategori = 'KAT-A';

SELECT * FROM ProdukKatalog;
