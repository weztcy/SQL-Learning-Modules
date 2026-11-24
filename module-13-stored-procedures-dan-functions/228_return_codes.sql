-- ====================================================================
-- Modul: 13 - Stored Procedures dan Functions
-- File : 228_return_codes.sql
-- Topik: Return Codes pada Prosedur
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Nilai kembalian status: 0 menandakan sukses, kode != 0 menandakan jenis error tertentu.

SELECT 
    CASE 
        WHEN COUNT(*) > 0 THEN 0 -- Status Sukses
        ELSE -1                  -- Data Kosong
    END AS ReturnCode,
    COUNT(*) AS RecordsProcessed
FROM Customer;
