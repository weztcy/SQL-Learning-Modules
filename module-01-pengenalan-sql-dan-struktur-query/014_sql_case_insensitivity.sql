-- ====================================================================
-- Modul: 01 - Pengenalan SQL dan Struktur Query
-- File : 014_sql_case_insensitivity.sql
-- Topik: Case Insensitivity pada Identifier dan Nilai Teks
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Kata kunci SQL (SELECT, FROM, WHERE) bersifat case-insensitive.
-- Identifier nama tabel dan kolom di SQLite juga tidak membedakan huruf besar/kecil.
-- Namun, pencarian teks di dalam data dapat bergantung pada collation DBMS.

-- Query menggunakan perpaduan huruf kecil untuk membuktikan case insensitivity keyword & tabel
select 
    artistid, 
    name 
from artist 
where name like 'a%'
limit 5;
