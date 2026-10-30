-- ====================================================================
-- Modul: 10 - Views dan Indexes
-- File : 172_unique_index.sql
-- Topik: Unique Index
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- UNIQUE INDEX memadukan fungsi optimasi pencarian cepat sekaligus
-- menegakkan aturan bahwa tidak boleh ada dua baris dengan nilai yang sama.

CREATE TEMP TABLE DemoEmailUnik (Id INTEGER, Email TEXT);
CREATE UNIQUE INDEX idx_unik_email ON DemoEmailUnik (Email);

INSERT INTO DemoEmailUnik VALUES (1, 'kontak@perusahaan.id');

SELECT * FROM DemoEmailUnik;
