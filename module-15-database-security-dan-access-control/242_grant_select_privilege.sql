-- ====================================================================
-- Modul: 15 - Database Security dan Access Control
-- File : 242_grant_select_privilege.sql
-- Topik: Memberikan Hak Baca (GRANT SELECT)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Sintaks standar DCL (Data Control Language):
-- GRANT SELECT ON Chinook.Customer TO 'analis_data';
-- Memberikan hak hanya untuk membaca tabel Customer tanpa izin mengubah data.

-- Di SQLite, mode read-only dapat ditegakkan dengan PRAGMA query_only:
SELECT CustomerId, FirstName, LastName, Country FROM Customer LIMIT 5;
