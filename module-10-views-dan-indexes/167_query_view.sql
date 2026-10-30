-- ====================================================================
-- Modul: 10 - Views dan Indexes
-- File : 167_query_view.sql
-- Topik: Melakukan Query pada View
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- View dapat diakses persis seperti tabel biasa dengan SELECT, WHERE, ORDER BY, dan LIMIT.

SELECT 
    CustomerId,
    NamaLengkap,
    Country,
    TotalPengeluaran
FROM v_RingkasanPelanggan
WHERE Country = 'USA'
ORDER BY TotalPengeluaran DESC
LIMIT 5;
