-- ====================================================================
-- Modul: 15 - Database Security dan Access Control
-- File : 243_grant_dml_privileges.sql
-- Topik: Memberikan Hak DML (INSERT, UPDATE, DELETE)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Sintaks DCL standar:
-- GRANT INSERT, UPDATE ON Chinook.Invoice TO 'kasir_toko';
-- Mengizinkan penambahan dan pembaruan transaksi kasir tanpa memberi hak DELETE.

SELECT 'Hak akses DML (INSERT, UPDATE) diberikan secara spesifik pada objek transaksi' AS RingkasanHakAkses;
