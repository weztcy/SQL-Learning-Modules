-- ====================================================================
-- Modul: 09 - Constraints dan Relasi Database
-- File : 153_unique_constraint.sql
-- Topik: Unique Constraint
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Konstrain UNIQUE memastikan bahwa seluruh nilai dalam kolom atau kelompok kolom
-- berbeda satu sama lain (mencegah data duplikat selain Primary Key).

CREATE TEMP TABLE DemoUniqueUser (
    UserId INTEGER PRIMARY KEY,
    Username TEXT UNIQUE,
    Email TEXT UNIQUE
);

INSERT INTO DemoUniqueUser VALUES (1, 'john_doe', 'john@contoh.id');

SELECT * FROM DemoUniqueUser;
