-- ====================================================================
-- Modul: 17 - Import, Export, JSON, dan Data Cleaning
-- File : 267_export_csv.sql
-- Topik: Export Query ke Format CSV
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Menghasilkan baris data yang diformat dengan pemisah koma (CSV format)
-- siap diekspor ke file eksternal atau spreadsheet.

SELECT 
    CustomerId || ',' || 
    '"' || FirstName || ' ' || LastName || '",' || 
    '"' || City || '",' || 
    Country AS BarisCSV
FROM Customer
WHERE Country = 'Canada'
LIMIT 5;
