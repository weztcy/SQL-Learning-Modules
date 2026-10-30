-- ====================================================================
-- Modul: 16 - Query Optimization dan Performance
-- File : 264_query_rewriting.sql
-- Topik: Penulisan Ulang Kueri (Query Rewriting)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Menghindari operator lambat (seperti LIKE '%teks%' atau OR non-index)
-- dengan menulis ulang kueri menggunakan UNION atau kesetaraan langsung.

-- Menulis ulang OR menjadi UNION untuk efisiensi eksekusi berbasis index
SELECT CustomerId, FirstName, Country FROM Customer WHERE Country = 'USA'
UNION ALL
SELECT CustomerId, FirstName, Country FROM Customer WHERE Country = 'Canada'
LIMIT 6;
