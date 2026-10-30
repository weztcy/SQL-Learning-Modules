-- ====================================================================
-- Modul: 15 - Database Security dan Access Control
-- File : 244_revoke_privileges.sql
-- Topik: Mencabut Hak Akses (REVOKE)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Perintah REVOKE mencabut izin yang sebelumnya telah diberikan kepada pengguna atau role:
-- REVOKE DELETE ON Chinook.Customer FROM 'staf_magang';

SELECT 'Hak akses destruktif (DELETE) telah dicabut dari akun non-admin' AS KebijakanKeamanan;
