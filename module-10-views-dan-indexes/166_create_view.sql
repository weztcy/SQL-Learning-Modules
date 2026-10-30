-- ====================================================================
-- Modul: 10 - Views dan Indexes
-- File : 166_create_view.sql
-- Topik: Membuat View (CREATE VIEW)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- VIEW adalah tabel virtual yang menyimpan definisi query SQL tersimpan.
-- Menyederhanakan query yang rumit dan memberikan lapisan abstraksi keamanan data.

CREATE VIEW IF NOT EXISTS v_RingkasanPelanggan AS
SELECT 
    c.CustomerId,
    c.FirstName || ' ' || c.LastName AS NamaLengkap,
    c.Country,
    COUNT(i.InvoiceId) AS TotalTransaksi,
    ROUND(COALESCE(SUM(i.Total), 0), 2) AS TotalPengeluaran
FROM Customer AS c
LEFT JOIN Invoice AS i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId, c.FirstName, c.LastName, c.Country;

SELECT 'View v_RingkasanPelanggan berhasil dibuat' AS Status;
