-- ====================================================================
-- Modul: 13 - Stored Procedures dan Functions
-- File : 229_function_security_context.sql
-- Topik: Konteks Keamanan Routine (SECURITY DEFINER vs INVOKER)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- SQL SECURITY DEFINER: Routine dieksekusi dengan hak akses pemilik prosedur.
-- SQL SECURITY INVOKER: Routine dieksekusi dengan hak akses pemanggil.

SELECT 'Routine Security: INVOKER (Standar Sesi Pengguna)' AS KonteksKeamanan;
