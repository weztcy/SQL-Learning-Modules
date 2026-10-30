-- ====================================================================
-- Modul: 07 - Manipulasi Data atau DML
-- File : 128_output_clause_sqlserver.sql
-- Topik: Klausa OUTPUT SQL Server
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Pada SQL Server, klausa OUTPUT INSERTED.* / DELETED.* mengambil data sebelum dan sesudah operasi.
-- Di SQLite 3.35+, fungsionalitas ini dipenuhi oleh klausa RETURNING:

CREATE TEMP TABLE DemoAudit (
    Id INTEGER PRIMARY KEY,
    Skor INTEGER
);

INSERT INTO DemoAudit VALUES (1, 80);

-- Update dengan mengembalikan nilai skor baru
UPDATE DemoAudit
SET Skor = 95
WHERE Id = 1
RETURNING Id, Skor AS SkorBaru;
