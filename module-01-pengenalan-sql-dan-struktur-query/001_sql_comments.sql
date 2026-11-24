-- ====================================================================
-- Modul: 01 - Pengenalan SQL dan Struktur Query
-- File : 001_sql_comments.sql
-- Topik: Komentar SQL (Single-line dan Multi-line)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Komentar satu baris diawali dengan dua tanda minus (--).
-- Teks setelah tanda minus hingga akhir baris akan diabaikan oleh DBMS.
-- Digunakan untuk menjelaskan tujuan query atau memberikan catatan singkat.

/*
   Komentar multi-baris (blok) diawali dengan tanda garis-miring bintang
   dan diakhiri dengan tanda bintang garis-miring.
   Format ini sangat berguna untuk dokumentasi panjang, penjelasan logika kompleks,
   atau menonaktifkan sementara blok query yang tidak ingin dieksekusi.
*/

-- Menampilkan 5 artis pertama dari tabel Artist untuk membuktikan bahwa
-- komentar di atas sama sekali tidak mempengaruhi eksekusi statement SQL.
SELECT 
    ArtistId,
    Name
FROM Artist
LIMIT 5;
