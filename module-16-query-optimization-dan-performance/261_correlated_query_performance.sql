-- ====================================================================
-- Modul: 16 - Query Optimization dan Performance
-- File : 261_correlated_query_performance.sql
-- Topik: Analisis Performa Correlated Subquery
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Correlated query dievaluasi berulang-ulang untuk setiap baris luar (O(M * N)).
-- Mengubahnya menjadi JOIN atau Window Function dapat memangkas kompleksitas menjadi O(M + N).

-- Versi optimal menggunakan window function:
SELECT 
    InvoiceId,
    CustomerId,
    Total,
    MAX(Total) OVER (PARTITION BY CustomerId) AS TotalTerbesarPelanggan
FROM Invoice
LIMIT 8;
