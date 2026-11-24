-- ====================================================================
-- Modul: 07 - Manipulasi Data atau DML
-- File : 111_insert_single_row.sql
-- Topik: INSERT Satu Baris
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Perintah INSERT INTO digunakan untuk menambahkan baris data baru ke dalam tabel.
-- Disimulasikan menggunakan tabel sementara (TEMP TABLE) agar tidak merusak data produksi.

CREATE TEMP TABLE DemoArtist AS SELECT * FROM Artist WHERE ArtistId <= 3;

-- Menyisipkan satu baris artis baru
INSERT INTO DemoArtist (ArtistId, Name)
VALUES (999, 'Nusantara Symphony Orchestra');

-- Menampilkan hasil penambahan data
SELECT * FROM DemoArtist WHERE ArtistId = 999;
