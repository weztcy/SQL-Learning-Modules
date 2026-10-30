-- ====================================================================
-- Modul: 05 - JOIN dan Relasi Antartabel
-- File : 078_non_equi_join.sql
-- Topik: Non-Equi Join
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Non-Equi Join menggunakan operator perbandingan selain sama dengan (=),
-- seperti <, >, BETWEEN, atau <= pada klausa ON.

-- Mengkategorikan nominal Invoice ke dalam tier tarif harga
SELECT 
    inv.InvoiceId,
    inv.Total,
    inv.BillingCountry
FROM Invoice AS inv
INNER JOIN Invoice AS pembanding
    ON inv.Total > pembanding.Total AND pembanding.InvoiceId = 1
LIMIT 6;
