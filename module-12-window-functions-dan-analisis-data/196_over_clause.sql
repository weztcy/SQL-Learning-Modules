-- ====================================================================
-- Modul: 12 - Window Functions dan Analisis Data
-- File : 196_over_clause.sql
-- Topik: Klausa OVER Dasar
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Window Function melakukan kalkulasi di seluruh set baris tabel tanpa menciutkan
-- (collapse) baris menjadi satu baris seperti GROUP BY biasa. Klausa OVER() mendefinisikan partisi window.

-- Menampilkan nominal setiap transaksi beserta total omset global di sampingnya
SELECT 
    InvoiceId,
    CustomerId,
    InvoiceDate,
    Total,
    ROUND(SUM(Total) OVER (), 2) AS TotalSeluruhInvoice,
    ROUND(AVG(Total) OVER (), 2) AS RataRataGlobal
FROM Invoice
LIMIT 8;
