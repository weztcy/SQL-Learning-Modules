-- ====================================================================
-- Modul: 15 - Database Security dan Access Control
-- File : 248_column_level_access.sql
-- Topik: Pembatasan Akses Kolom (Column-Level Security)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Menyembunyikan kolom sensitif (seperti nomor telepon, fax, atau email staf)
-- dengan menyediakan View terbatas bagi pengguna umum.

CREATE VIEW IF NOT EXISTS v_KatalogKaryawanPublik AS
SELECT 
    EmployeeId,
    FirstName,
    LastName,
    Title
FROM Employee;

-- Menampilkan data dari view aman tanpa mengekspos data pribadi
SELECT * FROM v_KatalogKaryawanPublik LIMIT 5;
