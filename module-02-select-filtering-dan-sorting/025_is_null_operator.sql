-- ====================================================================
-- Modul: 02 - SELECT, Filtering, dan Sorting
-- File : 025_is_null_operator.sql
-- Topik: Pemeriksaan IS NULL
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Nilai NULL menunjukkan ketiadaan data. Karena sifat three-valued logic (TRUE, FALSE, UNKNOWN),
-- ekspresi '= NULL' akan selalu menghasilkan UNKNOWN, sehingga wajib menggunakan 'IS NULL'.

-- Mengambil pelanggan perorangan yang tidak terafiliasi dengan perusahaan (Company bernilai NULL)
SELECT 
    CustomerId,
    FirstName,
    LastName,
    Company,
    Country
FROM Customer
WHERE Company IS NULL
LIMIT 5;
