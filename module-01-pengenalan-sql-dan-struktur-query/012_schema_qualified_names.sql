-- ====================================================================
-- Modul: 01 - Pengenalan SQL dan Struktur Query
-- File : 012_schema_qualified_names.sql
-- Topik: Referensi Schema dan Tabel
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Pada sistem RDBMS, tabel berada di dalam schema atau database tertentu.
-- Di SQLite, database utama default diberi nama skema 'main'.
-- Menulis skema secara eksplisit: main.NamaTabel.

-- Mengakses tabel Playlist menggunakan referensi skema 'main'
SELECT 
    main.Playlist.PlaylistId,
    main.Playlist.Name
FROM main.Playlist
LIMIT 5;
