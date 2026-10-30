-- ====================================================================
-- Modul: 18 - Proyek Praktik SQL
-- File : 285_ecommerce_database_project.sql
-- Topik: Proyek Database Toko Daring (E-Commerce)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

CREATE TEMP TABLE EcomOrder (
    OrderId INTEGER PRIMARY KEY,
    CustomerName TEXT,
    OrderStatus TEXT,
    PaymentMethod TEXT,
    OrderDate DATE
);

INSERT INTO EcomOrder VALUES 
    (1, 'Rian Hidayat', 'Delivered', 'Credit Card', '2026-05-01'),
    (2, 'Maya Putri', 'Shipped', 'QRIS', '2026-05-03'),
    (3, 'Bambang', 'Processing', 'Virtual Account', '2026-05-04');

SELECT 
    OrderStatus,
    COUNT(*) AS TotalPesanan,
    GROUP_CONCAT(CustomerName, ', ') AS DaftarPelanggan
FROM EcomOrder
GROUP BY OrderStatus;
