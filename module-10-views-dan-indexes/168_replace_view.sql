-- ====================================================================
-- Modul: 10 - Views dan Indexes
-- File : 168_replace_view.sql
-- Topik: Mengubah Definisi View (CREATE OR REPLACE / DROP & CREATE)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- PostgreSQL/MySQL mendukung 'CREATE OR REPLACE VIEW'.
-- Di SQLite, definisi view diperbarui dengan menghapus view lama lalu membuatnya kembali.

DROP VIEW IF EXISTS v_RingkasanPelanggan;

CREATE VIEW v_RingkasanPelanggan AS
SELECT 
    c.CustomerId,
    c.FirstName || ' ' || c.LastName AS NamaLengkap,
    c.City,
    c.Country,
    ROUND(COALESCE(SUM(i.Total), 0), 2) AS TotalPengeluaran
FROM Customer AS c
LEFT JOIN Invoice AS i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId, c.FirstName, c.LastName, c.City, c.Country;

SELECT * FROM v_RingkasanPelanggan LIMIT 5;
