-- ====================================================================
-- Modul: 08 - DDL dan Struktur Database
-- File : 134_create_table.sql
-- Topik: CREATE TABLE
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Perintah DDL CREATE TABLE mendefinisikan nama tabel, daftar kolom,
-- tipe data tiap kolom, serta konstrain integritas data.

CREATE TABLE IF NOT EXISTS DemoLaguFavorit (
    FavoritId INTEGER PRIMARY KEY AUTOINCREMENT,
    TrackId INTEGER NOT NULL,
    CatatanPribadi TEXT,
    TanggalSimpan DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (TrackId) REFERENCES Track(TrackId)
);

-- Memeriksa apakah tabel berhasil dibuat pada skema
SELECT name, sql FROM sqlite_master WHERE type = 'table' AND name = 'DemoLaguFavorit';
