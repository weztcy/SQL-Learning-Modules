-- ====================================================================
-- Modul: 07 - Manipulasi Data atau DML
-- File : 118_update_multiple_columns.sql
-- Topik: Update Beberapa Kolom Sekaligus
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Beberapa kolom dapat diubah sekaligus dalam satu klausa SET dengan pemisah koma.

CREATE TEMP TABLE DemoEmployee AS SELECT * FROM Employee WHERE EmployeeId = 1;

UPDATE DemoEmployee
SET 
    Title = 'Senior General Manager',
    City = 'Vancouver',
    PostalCode = 'V6B 2W9'
WHERE EmployeeId = 1;

SELECT EmployeeId, FirstName, LastName, Title, City, PostalCode 
FROM DemoEmployee;
