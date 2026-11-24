-- ====================================================================
-- Modul: 04 - Agregasi dan Pengelompokan Data
-- File : 064_where_vs_having.sql
-- Topik: Perbedaan WHERE dan HAVING
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- WHERE menyaring data baris mentah sebelum proses GROUP BY.
-- HAVING menyaring hasil kelompok setelah kalkulasi agregat selesai.

-- Menyaring faktur berstatus billing di Benua Amerika (WHERE),
-- kemudian hanya menampilkan negara dengan total omset > $40.00 (HAVING)
SELECT 
    BillingCountry,
    COUNT(InvoiceId) AS JumlahTransaksi,
    ROUND(SUM(Total), 2) AS TotalPenjualan
FROM Invoice
WHERE BillingCountry IN ('USA', 'Canada', 'Brazil', 'Chile', 'Argentina')
GROUP BY BillingCountry
HAVING SUM(Total) > 40.00
ORDER BY TotalPenjualan DESC;
