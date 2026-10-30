-- ====================================================================
-- Modul: 02 - SELECT, Filtering, dan Sorting
-- File : 034_top_rows_sqlserver.sql
-- Topik: Pembatasan Baris Menggunakan TOP pada SQL Server
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Pada Microsoft SQL Server (T-SQL), pembatasan baris menggunakan klausa TOP:
-- Sintaks T-SQL:
-- SELECT TOP 5 TrackId, Name, UnitPrice FROM Track ORDER BY UnitPrice DESC;

-- Di SQLite / PostgreSQL / MySQL, padanannya adalah klausa LIMIT:
-- Menampilkan 5 lagu termahal di database Chinook
SELECT 
    TrackId,
    Name,
    UnitPrice
FROM Track
ORDER BY UnitPrice DESC, TrackId ASC
LIMIT 5;
