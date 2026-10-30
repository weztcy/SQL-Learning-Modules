-- ====================================================================
-- Modul: 13 - Stored Procedures dan Functions
-- File : 227_dynamic_sql.sql
-- Topik: Dynamic SQL
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Dynamic SQL adalah teknik membangun query SQL sebagai string teks pada saat runtime
-- lalu mengeksekusinya (PREPARE stmt FROM ...; EXECUTE stmt;).

-- Mensimulasikan pembentukan query dinamis terfilter
SELECT 
    'SELECT * FROM Customer WHERE Country = ''' || 'USA' || ''' LIMIT 5;' AS DynamicQueryString;
