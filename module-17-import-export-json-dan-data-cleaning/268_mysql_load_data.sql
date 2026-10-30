-- ====================================================================
-- Modul: 17 - Import, Export, JSON, dan Data Cleaning
-- File : 268_mysql_load_data.sql
-- Topik: Import Menggunakan LOAD DATA INFILE pada MySQL
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Pada MySQL:
-- LOAD DATA INFILE '/tmp/pelanggan.csv'
-- INTO TABLE Customer
-- FIELDS TERMINATED BY ',' ENCLOSED BY '"'
-- LINES TERMINATED BY '\r\n'
-- IGNORE 1 ROWS;

SELECT 'Sintaks LOAD DATA INFILE siap digunakan untuk impor data massal di MySQL' AS Info;
