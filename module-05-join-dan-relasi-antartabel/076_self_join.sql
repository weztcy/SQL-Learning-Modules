-- ====================================================================
-- Modul: 05 - JOIN dan Relasi Antartabel
-- File : 076_self_join.sql
-- Topik: Self Join (Relasi Hirarki dalam Satu Tabel)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Self Join adalah teknik menghubungkan suatu tabel dengan dirinya sendiri.
-- Sangat berguna untuk model data hierarkis seperti struktur organisasi atasan-bawahan.

-- Menampilkan nama karyawan beserta nama manajer/atasannya dari tabel Employee
SELECT 
    emp.EmployeeId,
    emp.FirstName || ' ' || emp.LastName AS Karyawan,
    emp.Title AS Jabatan,
    mgr.FirstName || ' ' || mgr.LastName AS AtasanLangsung
FROM Employee AS emp
LEFT JOIN Employee AS mgr 
    ON emp.ReportsTo = mgr.EmployeeId
ORDER BY emp.EmployeeId ASC;
