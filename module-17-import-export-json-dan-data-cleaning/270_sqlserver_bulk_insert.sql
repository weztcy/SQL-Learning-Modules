-- ====================================================================
-- Modul: 17 - Import, Export, JSON, dan Data Cleaning
-- File : 270_sqlserver_bulk_insert.sql
-- Topik: Bulk Import pada Microsoft SQL Server (BULK INSERT)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Pada SQL Server:
-- BULK INSERT Chinook.dbo.Track
-- FROM 'C:\\Data\\tracks.csv'
-- WITH (FIELDTERMINATOR = ',', ROWTERMINATOR = '\r\n', FIRSTROW = 2);

SELECT 'BULK INSERT menyediakan performa throughput maksimal pada SQL Server' AS InfoTsql;
