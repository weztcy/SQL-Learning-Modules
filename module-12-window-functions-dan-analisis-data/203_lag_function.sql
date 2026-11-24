-- ====================================================================
-- Modul: 12 - Window Functions dan Analisis Data
-- File : 203_lag_function.sql
-- Topik: Fungsi LAG()
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- LAG(kolom, offset) mengakses nilai dari baris sebelumnya tanpa memerlukan self-join.

-- Menghitung selisih nominal transaksi dengan transaksi tepat sebelumnya dari pelanggan yang sama
SELECT 
    InvoiceId,
    CustomerId,
    InvoiceDate,
    Total,
    LAG(Total, 1, 0) OVER (PARTITION BY CustomerId ORDER BY InvoiceDate ASC) AS TotalTransaksiSebelumnya,
    Total - LAG(Total, 1, Total) OVER (PARTITION BY CustomerId ORDER BY InvoiceDate ASC) AS Selisih
FROM Invoice
WHERE CustomerId = 1;
