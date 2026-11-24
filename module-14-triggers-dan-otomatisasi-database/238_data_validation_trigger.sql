-- ====================================================================
-- Modul: 14 - Triggers dan Otomatisasi Database
-- File : 238_data_validation_trigger.sql
-- Topik: Validasi Integritas Melalui Trigger
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Menggunakan RAISE(ABORT, pesan) di SQLite untuk menggagalkan transaksi jika melanggar aturan bisnis.

CREATE TEMP TABLE AkunVip (
    Id INTEGER PRIMARY KEY,
    Nama TEXT,
    SkorKredit INTEGER
);

CREATE TRIGGER trg_ValidasiSkorKredit
BEFORE INSERT ON AkunVip
FOR EACH ROW
WHEN NEW.SkorKredit < 600
BEGIN
    SELECT RAISE(ABORT, 'Skor kredit tidak memenuhi syarat minimum 600 untuk akun VIP');
END;

INSERT INTO AkunVip VALUES (1, 'Rudi Hartono', 750);

SELECT * FROM AkunVip;
