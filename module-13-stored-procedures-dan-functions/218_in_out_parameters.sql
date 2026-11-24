-- ====================================================================
-- Modul: 13 - Stored Procedures dan Functions
-- File : 218_in_out_parameters.sql
-- Topik: Parameter IN, OUT, dan INOUT
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- IN   : Menerima input dari pemanggil.
-- OUT  : Mengembalikan nilai hasil kalkulasi ke pemanggil.
-- INOUT: Menerima input sekaligus mengembalikan nilai yang telah dimodifikasi.

-- Menghitung total belanja (OUT) dari CustomerId tertentu (IN)
SELECT 
    1 AS ParamIn_CustomerId,
    COUNT(InvoiceId) AS ParamOut_TotalFaktur,
    ROUND(SUM(Total), 2) AS ParamOut_TotalNominal
FROM Invoice
WHERE CustomerId = 1;
