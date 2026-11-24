-- ====================================================================
-- Modul: 05 - JOIN dan Relasi Antartabel
-- File : 090_join_with_derived_table.sql
-- Topik: Join dengan Derived Table (Subquery pada FROM)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Derived Table adalah query SELECT di dalam tanda kurung pada klausa FROM atau JOIN,
-- yang diberi alias dan diperlakukan seperti tabel virtual sementara.

-- Menghubungkan tabel Artist dengan hasil agregasi derived table album
SELECT 
    art.Name AS NamaArtis,
    ringkasan.JumlahAlbum
FROM Artist AS art
INNER JOIN (
    SELECT ArtistId, COUNT(*) AS JumlahAlbum
    FROM Album
    GROUP BY ArtistId
) AS ringkasan ON art.ArtistId = ringkasan.ArtistId
WHERE ringkasan.JumlahAlbum >= 10
ORDER BY ringkasan.JumlahAlbum DESC;
