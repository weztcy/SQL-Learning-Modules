-- ====================================================================
-- Modul: 06 - Subquery, CTE, dan Set Operations
-- File : 099_subquery_in_from.sql
-- Topik: Subquery pada Klausa FROM
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Subquery pada klausa FROM bertindak sebagai tabel sementara dalam memori.

-- Menghitung rata-rata pengeluaran pelanggan dari data agregat per pelanggan
SELECT 
    ROUND(AVG(TotalBelanjaPelanggan), 2) AS RataRataBelanjaPerPelanggan,
    MAX(TotalBelanjaPelanggan) AS BelanjaTertinggi
FROM (
    SELECT 
        CustomerId,
        SUM(Total) AS TotalBelanjaPelanggan
    FROM Invoice
    GROUP BY CustomerId
) AS RingkasanPelanggan;
