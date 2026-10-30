-- ====================================================================
-- Modul: 08 - DDL dan Struktur Database
-- File : 133_create_schema.sql
-- Topik: CREATE SCHEMA
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- CREATE SCHEMA (PostgreSQL / SQL Server) mengelompokkan objek-objek tabel secara logis.
-- Di SQLite, skema diisolasi per file database yang di-ATTACH.

-- Memeriksa skema integritas database SQLite
PRAGMA schema_version;
