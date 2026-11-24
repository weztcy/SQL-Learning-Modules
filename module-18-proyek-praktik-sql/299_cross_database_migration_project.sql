-- ====================================================================
-- Modul: 18 - Proyek Praktik SQL
-- File : 299_cross_database_migration_project.sql
-- Topik: Proyek Migrasi Skema Antardialek Database
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Tabel relasional standar ANSI SQL yang kompatibel di SQLite, MySQL, dan PostgreSQL
CREATE TEMP TABLE MigrasiUniversal (
    Id INTEGER PRIMARY KEY,
    KodeUnik VARCHAR(20) NOT NULL UNIQUE,
    NamaItem VARCHAR(100) NOT NULL,
    Harga NUMERIC(10, 2) NOT NULL,
    StatusAktif INTEGER DEFAULT 1,
    WaktuDibuat DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO MigrasiUniversal (Id, KodeUnik, NamaItem, Harga)
VALUES (1, 'UNIV-001', 'Mikrofon Dynamic', 750000.00);

SELECT * FROM MigrasiUniversal;
