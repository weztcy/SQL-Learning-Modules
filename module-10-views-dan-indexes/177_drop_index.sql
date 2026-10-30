-- ====================================================================
-- Modul: 10 - Views dan Indexes
-- File : 177_drop_index.sql
-- Topik: Menghapus Index dengan DROP INDEX
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Menghapus index yang sudah tidak relevan untuk menghemat memori dan mempercepat proses DML.

DROP INDEX IF EXISTS idx_Track_Name;
DROP INDEX IF EXISTS idx_Customer_Country_City;
DROP INDEX IF EXISTS idx_Invoice_HighValue;
DROP INDEX IF EXISTS idx_Customer_LowerEmail;
DROP INDEX IF EXISTS idx_Covering_Invoice;

SELECT 'Index sementara berhasil dihapus' AS Status;
