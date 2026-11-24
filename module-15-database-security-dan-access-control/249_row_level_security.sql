-- ====================================================================
-- Modul: 15 - Database Security dan Access Control
-- File : 249_row_level_security.sql
-- Topik: Row-Level Security (RLS)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- RLS (PostgreSQL / SQL Server) membatasi baris data yang dapat dilihat
-- pengguna berdasarkan identitas sesi pemanggil.
-- Di SQLite / View, ini dicapai dengan menyaring WHERE kolom_pemilik = CURRENT_USER:

-- View data khusus pelanggan wilayah Canada
CREATE VIEW IF NOT EXISTS v_PelangganWilayahKanada AS
SELECT CustomerId, FirstName, LastName, City, Country
FROM Customer
WHERE Country = 'Canada';

SELECT * FROM v_PelangganWilayahKanada LIMIT 5;
