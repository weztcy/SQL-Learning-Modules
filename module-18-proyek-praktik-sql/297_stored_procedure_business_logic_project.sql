-- ====================================================================
-- Modul: 18 - Proyek Praktik SQL
-- File : 297_stored_procedure_business_logic_project.sql
-- Topik: Penerapan Logika Bisnis Kompleks (Business Logic)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Menghitung diskon dinamis, biaya pengiriman, dan estimasi cashback
SELECT 
    InvoiceId,
    CustomerId,
    Total,
    CASE 
        WHEN Total >= 15.00 THEN ROUND(Total * 0.15, 2)
        WHEN Total >= 10.00 THEN ROUND(Total * 0.10, 2)
        ELSE 0.00
    END AS PotonganDiskon,
    CASE 
        WHEN Total >= 15.00 THEN 0.00 -- Gratis Ongkir
        ELSE 2.50
    END AS BiayaKirim
FROM Invoice
LIMIT 6;
