-- ====================================================================
-- Modul: 02 - SELECT, Filtering, dan Sorting
-- File : 018_logical_operators.sql
-- Topik: Operator Logika AND, OR, dan NOT
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Operator logika menghubungkan beberapa predikat:
-- AND: kedua kondisi harus bernilai TRUE
-- OR : salah satu kondisi bernilai TRUE
-- NOT: membalikkan nilai kebenaran suatu kondisi

-- Mengambil pelanggan asal 'USA' yang berada di kota 'California' (CA) ATAU bukan berstatus 'CA'
SELECT 
    CustomerId,
    FirstName,
    LastName,
    State,
    Country
FROM Customer
WHERE Country = 'USA' AND (State = 'CA' OR State = 'NY')
LIMIT 5;
