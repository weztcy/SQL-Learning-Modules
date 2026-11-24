-- ====================================================================
-- Modul: 13 - Stored Procedures dan Functions
-- File : 226_exception_handling_routine.sql
-- Topik: Penanganan Exception (TRY-CATCH / HANDLER)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Blok TRY ... CATCH (SQL Server) atau DECLARE HANDLER FOR SQLEXCEPTION (MySQL)
-- menangkap error runtime dan mencegah kegagalan transaksi secara mendadak.

CREATE TEMP TABLE DemoValidasiBagi (Id INTEGER, Pembilang REAL, Penyebut REAL);
INSERT INTO DemoValidasiBagi VALUES (1, 100, 2), (2, 50, 0);

-- Menangani pembagian nol secara anggun (graceful handling)
SELECT 
    Id,
    Pembilang,
    Penyebut,
    CASE 
        WHEN Penyebut = 0 THEN 'Error: Pembagian dengan Nol Dicegah'
        ELSE CAST(ROUND(Pembilang / Penyebut, 2) AS TEXT)
    END AS HasilPerhitungan
FROM DemoValidasiBagi;
