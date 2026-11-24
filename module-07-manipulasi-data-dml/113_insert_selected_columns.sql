-- ====================================================================
-- Modul: 07 - Manipulasi Data atau DML
-- File : 113_insert_selected_columns.sql
-- Topik: Insert Kolom Tertentu
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Kita dapat menentukan kolom mana saja yang ingin diisi.
-- Kolom lain yang tidak disertakan akan otomatis terisi nilai DEFAULT atau NULL.

CREATE TEMP TABLE DemoCustomer (
    CustomerId INTEGER PRIMARY KEY,
    FirstName NVARCHAR(40) NOT NULL,
    LastName NVARCHAR(20) NOT NULL,
    Email NVARCHAR(60) NOT NULL,
    Country NVARCHAR(40) DEFAULT 'Indonesia'
);

-- Menyisipkan data hanya pada kolom wajib (FirstName, LastName, Email)
INSERT INTO DemoCustomer (CustomerId, FirstName, LastName, Email)
VALUES (1, 'Budi', 'Santoso', 'budi.santoso@contoh.id');

-- Memeriksa nilai kolom Country yang otomatis terisi default
SELECT * FROM DemoCustomer;
