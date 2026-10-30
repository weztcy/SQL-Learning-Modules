-- ====================================================================
-- Modul: 07 - Manipulasi Data atau DML
-- File : 112_insert_multiple_rows.sql
-- Topik: INSERT Banyak Baris (Multi-Row Insert)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Standar SQL memungkinkan penyisipan banyak baris sekaligus dalam satu statement
-- dengan memisahkan tupel nilai menggunakan tanda koma.

CREATE TEMP TABLE DemoGenre AS SELECT * FROM Genre WHERE GenreId <= 2;

-- Menyisipkan 3 baris genre sekaligus
INSERT INTO DemoGenre (GenreId, Name)
VALUES 
    (101, 'Gamelan Fusion'),
    (102, 'Dangdut Akustik'),
    (103, 'Keroncong Modern');

-- Menampilkan genre baru yang berhasil dimasukkan
SELECT * FROM DemoGenre WHERE GenreId >= 100;
