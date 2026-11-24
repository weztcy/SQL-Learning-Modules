-- ====================================================================
-- Modul: 12 - Window Functions dan Analisis Data
-- File : 214_deduplicate_with_row_number.sql
-- Topik: Deduplikasi Data Menggunakan ROW_NUMBER()
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Menemukan dan menyaring duplikasi dengan memilih hanya baris yang memiliki ROW_NUMBER() = 1.

WITH DataPelangganUnik AS (
    SELECT 
        CustomerId,
        FirstName,
        LastName,
        Country,
        ROW_NUMBER() OVER (PARTITION BY Country ORDER BY CustomerId ASC) AS UrutanPerNegara
    FROM Customer
)
-- Menampilkan tepat 1 pelanggan representatif pertama untuk setiap negara
SELECT CustomerId, FirstName, LastName, Country
FROM DataPelangganUnik
WHERE UrutanPerNegara = 1
LIMIT 6;
