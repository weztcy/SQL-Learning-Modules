-- ====================================================================
-- Modul: 13 - Stored Procedures dan Functions
-- File : 221_table_valued_function.sql
-- Topik: Table-Valued Function (TVF)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Table-Valued Function (TVF) mengembalikan sekumpulan baris (result-set) berbentuk tabel.
-- Di SQLite / ANSI SQL, CTE atau View mewakili perilaku ini secara elegan.

WITH fn_GetInvoicesByCountry AS (
    SELECT InvoiceId, CustomerId, InvoiceDate, Total 
    FROM Invoice 
    WHERE BillingCountry = 'Canada'
)
SELECT * FROM fn_GetInvoicesByCountry LIMIT 5;
