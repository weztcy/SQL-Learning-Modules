-- ====================================================================
-- Modul: 01 - Pengenalan SQL dan Struktur Query
-- File : 011_qualified_column_names.sql
-- Topik: Nama Kolom Berkualifikasi
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Nama kolom berkualifikasi ditulis dengan format NamaTabel.NamaKolom.
-- Cara ini menghilangkan ambiguitas ketika terdapat nama kolom yang sama pada tabel berbeda.

-- Mengambil data karyawan dengan nama kolom yang secara eksplisit berkualifikasi tabel Employee
SELECT 
    Employee.EmployeeId,
    Employee.FirstName,
    Employee.LastName,
    Employee.Title
FROM Employee
LIMIT 5;
