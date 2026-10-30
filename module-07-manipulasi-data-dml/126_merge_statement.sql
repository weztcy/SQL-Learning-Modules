-- ====================================================================
-- Modul: 07 - Manipulasi Data atau DML
-- File : 126_merge_statement.sql
-- Topik: Statement MERGE (ANSI SQL / SQL Server / Oracle)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Statement MERGE menyatukan operasi INSERT, UPDATE, dan DELETE dalam satu perintah
-- berdasarkan kecocokan (MATCHED / NOT MATCHED) antara tabel sumber dan tabel target.

-- Mensimulasikan logika MERGE dengan INSERT OR REPLACE di SQLite
CREATE TEMP TABLE MasterProduk (Id INTEGER PRIMARY KEY, Harga NUMERIC);
CREATE TEMP TABLE UpdateProduk (Id INTEGER, HargaBaru NUMERIC);

INSERT INTO MasterProduk VALUES (1, 10.0), (2, 20.0);
INSERT INTO UpdateProduk VALUES (1, 15.0), (3, 30.0);

-- Sinkronisasi data: jika ID cocok diganti, jika belum ada disisipkan baru
INSERT OR REPLACE INTO MasterProduk (Id, Harga)
SELECT Id, HargaBaru FROM UpdateProduk;

SELECT * FROM MasterProduk ORDER BY Id;
