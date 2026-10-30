-- ====================================================================
-- Modul: 03 - Ekspresi dan Fungsi SQL
-- File : 053_modulo_function.sql
-- Topik: Operasi Modulo (%)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Operator modulo (%) atau fungsi MOD(a, b) menghasilkan sisa hasil bagi.
-- Sangat berguna untuk mendeteksi bilangan genap/ganjil atau partisi data.

-- Menentukan apakah InvoiceId bernilai Genap atau Ganjil menggunakan operator modulo
SELECT 
    InvoiceId,
    InvoiceId % 2 AS SisaBagiDua,
    CASE 
        WHEN InvoiceId % 2 = 0 THEN 'Genap' 
        ELSE 'Ganjil' 
    END AS StatusParitas
FROM Invoice
LIMIT 8;
