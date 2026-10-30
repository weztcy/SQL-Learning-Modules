-- ====================================================================
-- Modul: 13 - Stored Procedures dan Functions
-- File : 216_create_stored_procedure.sql
-- Topik: Membuat Stored Procedure (CREATE PROCEDURE)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Stored Procedure adalah kumpulan statement SQL yang dikompilasi dan disimpan di database engine
-- untuk mengeksekusi logika bisnis berulang dengan performa tinggi.
-- Sintaks standar (PostgreSQL / MySQL / SQL Server):
-- CREATE PROCEDURE sp_DaftarInvoicePelanggan(IN p_CustomerId INT)
-- BEGIN
--     SELECT InvoiceId, InvoiceDate, Total FROM Invoice WHERE CustomerId = p_CustomerId;
-- END;

-- Di lingkungan SQLite, logika query modular ini dapat dipanggil secara modular:
SELECT 
    InvoiceId,
    CustomerId,
    InvoiceDate,
    Total
FROM Invoice
WHERE CustomerId = 1
ORDER BY InvoiceDate DESC;
