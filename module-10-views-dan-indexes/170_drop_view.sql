-- ====================================================================
-- Modul: 08 - Views dan Indexes
-- File : 170_drop_view.sql
-- Topik: Menghapus View dengan DROP VIEW
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- DROP VIEW menghapus objek virtual view tanpa menyentuh data pada tabel fisik asalnya.

DROP VIEW IF EXISTS v_RingkasanPelanggan;
DROP VIEW IF EXISTS v_StatusView;

SELECT 'View berhasil dibersihkan dari sistem' AS Konfirmasi;
