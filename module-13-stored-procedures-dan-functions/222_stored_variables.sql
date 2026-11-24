-- ====================================================================
-- Modul: 13 - Stored Procedures dan Functions
-- File : 222_stored_variables.sql
-- Topik: Variabel Lokal pada Stored Routine
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Pada T-SQL / PL-SQL / MySQL:
-- DECLARE @v_Threshold DECIMAL = 15.00;
-- Di SQL relasional murni, CTE digunakan untuk mendeklarasikan konstanta variabel:

WITH VariabelKonfigurasi AS (
    SELECT 15.00 AS NilaiAmbangBatas
)
SELECT 
    inv.InvoiceId,
    inv.Total,
    v.NilaiAmbangBatas,
    CASE WHEN inv.Total >= v.NilaiAmbangBatas THEN 'Target Tercapai' ELSE 'Standar' END AS Status
FROM Invoice AS inv
CROSS JOIN VariabelKonfigurasi AS v
LIMIT 6;
