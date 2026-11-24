-- ====================================================================
-- Modul: 13 - Stored Procedures dan Functions
-- File : 230_stored_routine_testing.sql
-- Topik: Pengujian Stored Routine (Unit Testing SQL)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Melakukan unit testing pada output routine untuk memverifikasi kebenaran logika.

SELECT 
    CASE 
        WHEN (SELECT COUNT(*) FROM Artist) > 0 THEN 'TEST PASSED: Database memiliki data artis'
        ELSE 'TEST FAILED: Tabel artis kosong'
    END AS StatusUji;
