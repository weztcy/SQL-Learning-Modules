-- ====================================================================
-- Modul: 17 - Import, Export, JSON, dan Data Cleaning
-- File : 276_find_duplicate_records.sql
-- Topik: Mengidentifikasi Data Duplikat
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Menggunakan GROUP BY dan HAVING COUNT(*) > 1 untuk menemukan anomali duplikasi rekaman.

SELECT 
    Name AS JudulLaguKembar,
    COUNT(*) AS FrekuensiKemunculan
FROM Track
GROUP BY Name
HAVING COUNT(*) > 1
ORDER BY FrekuensiKemunculan DESC
LIMIT 5;
