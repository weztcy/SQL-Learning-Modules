-- ====================================================================
-- Modul: 07 - Manipulasi Data atau DML
-- File : 129_update_from_join.sql
-- Topik: UPDATE Berdasarkan Relasi Join
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Memperbarui data tabel berdasarkan nilai dari tabel lain yang berelasi.

CREATE TEMP TABLE DemoCustomer AS SELECT CustomerId, SupportRepId, FirstName FROM Customer LIMIT 5;
CREATE TEMP TABLE InfoRep AS SELECT EmployeeId, Title FROM Employee;

-- Memperbarui nama representatif atau referensi data menggunakan correlated subquery
UPDATE DemoCustomer
SET FirstName = FirstName || ' (Rep: ' || (
    SELECT Title FROM InfoRep WHERE EmployeeId = DemoCustomer.SupportRepId
) || ')'
WHERE SupportRepId IS NOT NULL;

SELECT CustomerId, FirstName FROM DemoCustomer;
