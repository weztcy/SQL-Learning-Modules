-- ====================================================================
-- Modul: 01 - Pengenalan SQL dan Struktur Query
-- File : 008_column_aliases.sql
-- Topik: Alias Kolom dengan AS
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Kata kunci AS digunakan untuk memberikan nama alternatif (alias) pada kolom hasil query.
-- Alias berguna untuk memperjelas nama kolom, memberi label pada hasil komputasi,
-- atau menyelaraskan nama kolom dengan kebutuhan aplikasi klien.

-- Memberikan alias berbahasa Indonesia pada kolom tabel Track
SELECT 
    TrackId AS IdLagu,
    Name AS JudulLagu,
    UnitPrice AS HargaSatuan,
    Milliseconds / 1000 AS DurasiDetik
FROM Track
LIMIT 5;
