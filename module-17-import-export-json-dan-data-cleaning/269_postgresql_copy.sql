-- ====================================================================
-- Modul: 17 - Import, Export, JSON, dan Data Cleaning
-- File : 269_postgresql_copy.sql
-- Topik: Import dan Export Menggunakan COPY pada PostgreSQL
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Pada PostgreSQL:
-- COPY Customer FROM '/tmp/customer.csv' WITH (FORMAT csv, HEADER true);
-- COPY (SELECT * FROM Invoice WHERE Total > 10) TO '/tmp/high_invoices.csv' WITH CSV HEADER;

SELECT 'Perintah COPY PostgreSQL dioptimalkan untuk transmisi streaming file ke server' AS Ringkasan;
