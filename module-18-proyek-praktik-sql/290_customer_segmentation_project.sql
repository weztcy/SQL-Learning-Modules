-- ====================================================================
-- Modul: 18 - Proyek Praktik SQL
-- File : 290_customer_segmentation_project.sql
-- Topik: Segmentasi Pelanggan (RFM: Recency, Frequency, Monetary)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Analisis segmentasi RFM untuk mengidentifikasi pelanggan loyal vs churn
SELECT 
    c.CustomerId,
    c.FirstName || ' ' || c.LastName AS NamaPelanggan,
    c.Country,
    COUNT(i.InvoiceId) AS FrekuensiTransaksi,
    ROUND(SUM(i.Total), 2) AS NilaiMoneterTotal,
    MAX(i.InvoiceDate) AS TransaksiTerakhir,
    CASE 
        WHEN SUM(i.Total) >= 45.00 THEN 'Champions (Tier 1)'
        WHEN SUM(i.Total) >= 40.00 THEN 'Loyal Customers (Tier 2)'
        ELSE 'Potensial (Tier 3)'
    END AS SegmenPelanggan
FROM Customer AS c
INNER JOIN Invoice AS i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId, c.FirstName, c.LastName, c.Country
ORDER BY NilaiMoneterTotal DESC
LIMIT 8;
