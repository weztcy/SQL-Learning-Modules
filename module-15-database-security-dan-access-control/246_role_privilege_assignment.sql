-- ====================================================================
-- Modul: 15 - Database Security dan Access Control
-- File : 246_role_privilege_assignment.sql
-- Topik: Penetapan Hak Akses Melalui Role
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Menetapkan sekumpulan izin ke role, lalu menetapkan role tersebut ke akun pengguna:
-- GRANT SELECT ON Invoice, InvoiceLine TO peran_keuangan;
-- GRANT peran_keuangan TO 'user_akuntan';

SELECT 'Izin transaksi keuangan berhasil diasosiasikan ke dalam peran_keuangan' AS StatusRBAC;
