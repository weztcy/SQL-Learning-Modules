-- ====================================================================
-- Modul: 18 - Proyek Praktik SQL
-- File : 295_role_based_access_project.sql
-- Topik: Implementasi Keamanan Akses Berbasis Role (RBAC)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

CREATE TEMP TABLE MasterPengguna (UserId INTEGER PRIMARY KEY, Username TEXT);
CREATE TEMP TABLE MasterRole (RoleId INTEGER PRIMARY KEY, RoleName TEXT);
CREATE TEMP TABLE PemetaanUserRole (UserId INTEGER, RoleId INTEGER);

INSERT INTO MasterPengguna VALUES (1, 'siti_kasir'), (2, 'budi_manager');
INSERT INTO MasterRole VALUES (10, 'ROLE_CASHIER'), (20, 'ROLE_MANAGER');
INSERT INTO PemetaanUserRole VALUES (1, 10), (2, 20);

-- Query otorisasi: Memeriksa apakah user memiliki wewenang manajerial
SELECT 
    u.Username,
    r.RoleName,
    CASE 
        WHEN r.RoleName = 'ROLE_MANAGER' THEN 'AKSES DIIZINKAN: Laporan Eksekutif'
        ELSE 'AKSES TERBATAS: Menu Kasir Standar'
    END AS StatusHakAkses
FROM MasterPengguna AS u
INNER JOIN PemetaanUserRole AS ur ON u.UserId = ur.UserId
INNER JOIN MasterRole AS r ON ur.RoleId = r.RoleId;
