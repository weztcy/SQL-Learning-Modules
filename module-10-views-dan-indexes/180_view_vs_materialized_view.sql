-- ====================================================================
-- Modul: 10 - Views dan Indexes
-- File : 180_view_vs_materialized_view.sql
-- Topik: Perbandingan Standard View dan Materialized View
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Standard View:
-- (+) Selalu menyajikan data real-time terbaru.
-- (-) Query kompleks dihitung ulang setiap kali view diakses.

-- Materialized View:
-- (+) Sangat cepat karena membaca data fisik yang sudah terkomputasi sebelumnya.
-- (-) Memerlukan strategi REFRESH data berkala dan memakan ruang disk tambahan.

-- Menghapus tabel materialized view demo setelah selesai pengujian
DROP TABLE IF EXISTS mv_PenjualanPerGenre;

SELECT 'Komparasi dan pembersihan selesai' AS Ringkasan;
