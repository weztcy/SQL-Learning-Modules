-- ====================================================================
-- Modul: 18 - Proyek Praktik SQL
-- File : 289_film_rental_analysis_project.sql
-- Topik: Analisis Penyewaan Film (Model Sakila / Pagila)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Menganalisis konsumsi konten audio-visual berdasarkan kategori genre
SELECT 
    g.Name AS KategoriGenre,
    COUNT(t.TrackId) AS TotalJudul,
    ROUND(AVG(t.Milliseconds / 60000.0), 2) AS RataRataDurasiMenit,
    ROUND(AVG(t.UnitPrice), 2) AS RataRataTarif
FROM Genre AS g
INNER JOIN Track AS t ON g.GenreId = t.GenreId
GROUP BY g.GenreId, g.Name
ORDER BY TotalJudul DESC
LIMIT 5;
