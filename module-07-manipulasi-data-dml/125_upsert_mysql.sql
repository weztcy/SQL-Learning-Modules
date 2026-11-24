-- ====================================================================
-- Modul: 07 - Manipulasi Data atau DML
-- File : 125_upsert_mysql.sql
-- Topik: Upsert dengan ON DUPLICATE KEY UPDATE (MySQL)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Pada MySQL, sintaks UPSERT menggunakan klausa ON DUPLICATE KEY UPDATE:
-- INSERT INTO tabel (id, nilai) VALUES (1, 100) ON DUPLICATE KEY UPDATE nilai = nilai + 100;

-- Di SQLite / PostgreSQL, konsep identik menggunakan ON CONFLICT:
CREATE TEMP TABLE DemoMySQLUpsert (
    KodeProduk TEXT PRIMARY KEY,
    Stok INTEGER
);

INSERT INTO DemoMySQLUpsert VALUES ('PRD-01', 50);

INSERT INTO DemoMySQLUpsert (KodeProduk, Stok)
VALUES ('PRD-01', 20)
ON CONFLICT(KodeProduk) DO UPDATE SET 
    Stok = DemoMySQLUpsert.Stok + excluded.Stok;

SELECT * FROM DemoMySQLUpsert;
