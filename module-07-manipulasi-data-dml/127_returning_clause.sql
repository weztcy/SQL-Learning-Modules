-- ====================================================================
-- Modul: 07 - Manipulasi Data atau DML
-- File : 127_returning_clause.sql
-- Topik: Klausa RETURNING (PostgreSQL / SQLite 3.35+)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Klausa RETURNING mengembalikan kolom hasil pemrosesan langsung dari statement
-- INSERT, UPDATE, atau DELETE tanpa memerlukan SELECT terpisah.

CREATE TEMP TABLE DemoReturn (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    NamaBarang TEXT,
    Status TEXT
);

-- Menyisipkan data dan langsung mengembalikan ID yang dihasilkan oleh database
INSERT INTO DemoReturn (NamaBarang, Status)
VALUES ('Headphone Wireless', 'Tersedia')
RETURNING Id, NamaBarang, Status;
