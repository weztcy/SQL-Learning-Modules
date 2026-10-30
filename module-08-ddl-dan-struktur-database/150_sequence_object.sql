-- ====================================================================
-- Modul: 08 - DDL dan Struktur Database
-- File : 150_sequence_object.sql
-- Topik: Sequence Objects
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- RDBMS seperti PostgreSQL dan Oracle menggunakan objek terpisah: CREATE SEQUENCE nama_seq.
-- Di SQLite, seluruh generator nomor otomatis dikelola oleh tabel sistem 'sqlite_sequence'.

-- Melihat status sequence generator pada tabel-tabel internal database Chinook
SELECT name, seq FROM sqlite_sequence LIMIT 5;
