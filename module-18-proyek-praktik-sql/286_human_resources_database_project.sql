-- ====================================================================
-- Modul: 18 - Proyek Praktik SQL
-- File : 286_human_resources_database_project.sql
-- Topik: Proyek Database Sumber Daya Manusia (HR Analytics)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Analisis demografi, usia saat rekrutmen, dan masa kerja karyawan Chinook
SELECT 
    EmployeeId,
    FirstName || ' ' || LastName AS NamaKaryawan,
    Title AS Jabatan,
    City,
    Country,
    HireDate,
    CAST((julianday('now') - julianday(HireDate)) / 365.25 AS INTEGER) AS MasaKerjaTahun
FROM Employee
ORDER BY MasaKerjaTahun DESC;
