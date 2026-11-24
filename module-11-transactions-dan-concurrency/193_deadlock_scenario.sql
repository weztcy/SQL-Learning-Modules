-- ====================================================================
-- Modul: 11 - Transactions dan Concurrency
-- File : 193_deadlock_scenario.sql
-- Topik: Simulasi Deadlock dan Strategi Penanganannya
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Deadlock terjadi saat Transaksi A menunggu resource yang dikunci Transaksi B,
-- dan Transaksi B secara bersamaan menunggu resource yang dikunci Transaksi A.
-- Pencegahan terbaik: selalu akses tabel/sumber daya dalam urutan yang konsisten (ordered locking).

PRAGMA busy_timeout = 3000; -- Mengatur timeout 3 detik sebelum melempar error deadlock/lock

SELECT 'Konfigurasi timeout deadlock aktif (3000ms)' AS PengaturanLock;
