-- ====================================================================
-- Modul: 05 - JOIN dan Relasi Antartabel
-- File : 073_right_join.sql
-- Topik: RIGHT JOIN (RIGHT OUTER JOIN)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- RIGHT JOIN mengembalikan seluruh baris dari tabel kanan dan baris yang cocok dari tabel kiri.
-- Pada database yang tidak mendukung sintaks RIGHT JOIN secara langsung,
-- hasil identik dicapai dengan menukar urutan tabel menggunakan LEFT JOIN.

-- Menampilkan seluruh pelanggan dan invoice-nya menggunakan LEFT JOIN ekuivalen
SELECT 
    c.CustomerId,
    c.FirstName || ' ' || c.LastName AS NamaPelanggan,
    inv.InvoiceId,
    inv.Total
FROM Customer AS c
LEFT JOIN Invoice AS inv 
    ON c.CustomerId = inv.CustomerId
ORDER BY c.CustomerId ASC
LIMIT 8;
