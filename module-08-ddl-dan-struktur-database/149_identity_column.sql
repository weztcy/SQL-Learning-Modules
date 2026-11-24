-- ====================================================================
-- Modul: 08 - DDL dan Struktur Database
-- File : 149_identity_column.sql
-- Topik: Identity Columns (GENERATED AS IDENTITY)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Standar SQL:2003 mendefinisikan kolom identitas otomatis:
-- GENERATED ALWAYS AS IDENTITY (didukung PostgreSQL 10+, Oracle 12c+, SQL Server IDENTITY).
-- SQLite mengimplementasikannya melalui INTEGER PRIMARY KEY:

CREATE TEMP TABLE DemoIdentitas (
    NomorAntrian INTEGER PRIMARY KEY,
    WaktuAmbil DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO DemoIdentitas DEFAULT VALUES;
INSERT INTO DemoIdentitas DEFAULT VALUES;

SELECT * FROM DemoIdentitas;
