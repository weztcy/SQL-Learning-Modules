-- ====================================================================
-- Modul: 03 - Ekspresi dan Fungsi SQL
-- File : 051_abs_function.sql
-- Topik: Fungsi ABS (Nilai Mutlak)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Fungsi ABS(angka) mengembalikan nilai absolut/mutlak (selalu bernilai positif atau 0).

-- Menghitung deviasi atau selisih harga dari patokan 1.00
SELECT 
    TrackId,
    UnitPrice,
    (UnitPrice - 1.00) AS SelisihAsli,
    ABS(UnitPrice - 1.00) AS DeviasiMutlak
FROM Track
LIMIT 6;
