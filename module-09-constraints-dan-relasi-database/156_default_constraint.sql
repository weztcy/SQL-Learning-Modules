-- ====================================================================
-- Modul: 09 - Constraints dan Relasi Database
-- File : 156_default_constraint.sql
-- Topik: DEFAULT Constraint
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Konstrain DEFAULT menyuplai nilai standar otomatis jika saat INSERT kolom tidak dinyatakan.

CREATE TEMP TABLE DemoDefault (
    AkunId INTEGER PRIMARY KEY,
    Status TEXT DEFAULT 'Aktif',
    PoinReward INTEGER DEFAULT 100
);

INSERT INTO DemoDefault (AkunId) VALUES (1);

SELECT * FROM DemoDefault;
