-- ====================================================================
-- Modul: 18 - Proyek Praktik SQL
-- File : 296_transaction_order_processing_project.sql
-- Topik: Transaksi Pemrosesan Pesanan Lengkap
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

CREATE TEMP TABLE KeranjangBelanja (Id INTEGER PRIMARY KEY, CustId INTEGER, TrackId INTEGER, Qty INTEGER);
CREATE TEMP TABLE OrderSukses (OrderId INTEGER PRIMARY KEY, CustId INTEGER, TotalTagihan NUMERIC);

INSERT INTO KeranjangBelanja VALUES (1, 10, 1, 2);

-- Pemrosesan transaksi checkout
BEGIN TRANSACTION;
INSERT INTO OrderSukses (OrderId, CustId, TotalTagihan)
SELECT 9001, CustId, SUM(Qty * 0.99)
FROM KeranjangBelanja
GROUP BY CustId;

-- Mengosongkan keranjang setelah checkout sukses
DELETE FROM KeranjangBelanja WHERE CustId = 10;
COMMIT;

SELECT * FROM OrderSukses WHERE OrderId = 9001;
