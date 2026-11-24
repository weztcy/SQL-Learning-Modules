-- ====================================================================
-- Modul: 08 - DDL dan Struktur Database
-- File : 144_rename_table.sql
-- Topik: Mengganti Nama Tabel (RENAME TO)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Perintah ALTER TABLE ... RENAME TO digunakan untuk memperbarui nama tabel.

CREATE TEMP TABLE TabelLama (Id INTEGER PRIMARY KEY, Info TEXT);
INSERT INTO TabelLama VALUES (1, 'Versi 1.0');

-- Mengubah nama tabel menjadi TabelBaru
ALTER TABLE TabelLama RENAME TO TabelBaru;

SELECT * FROM TabelBaru;
