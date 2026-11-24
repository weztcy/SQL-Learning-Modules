-- ====================================================================
-- Modul: 14 - Triggers dan Otomatisasi Database
-- File : 240_disable_drop_trigger.sql
-- Topik: Menonaktifkan dan Menghapus Trigger (DROP TRIGGER)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Perintah DROP TRIGGER IF EXISTS menghapus definisi trigger dari database.

DROP TRIGGER IF EXISTS trg_A_ke_B;
DROP TRIGGER IF EXISTS trg_B_ke_C;

SELECT 'Seluruh trigger sementara berhasil dibersihkan' AS Status;
