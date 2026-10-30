-- ====================================================================
-- Modul: 05 - JOIN dan Relasi Antartabel
-- File : 083_join_using_clause.sql
-- Topik: Klausa USING
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Jika kolom kunci memiliki nama yang identik pada kedua tabel,
-- klausa USING (nama_kolom) dapat digunakan sebagai singkatan dari ON tabel1.kolom = tabel2.kolom.

-- Menggabungkan Customer dan Invoice menggunakan kolom CustomerId
SELECT 
    CustomerId,
    FirstName || ' ' || LastName AS NamaPelanggan,
    InvoiceId,
    Total
FROM Customer
INNER JOIN Invoice USING (CustomerId)
LIMIT 8;
