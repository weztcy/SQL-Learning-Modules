-- ====================================================================
-- Modul: 16 - Query Optimization dan Performance
-- File : 258_query_pagination_optimization.sql
-- Topik: Optimasi Paginasi (Keyset Pagination / Keyset Seek)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Paginasi tradisional 'LIMIT 10 OFFSET 10000' membaca dan membuang 10.000 baris (lambat).
-- Keyset pagination 'WHERE id > id_terakhir LIMIT 10' melompat instan via B-Tree index (O(1)).

-- Mengambil halaman berikutnya secara efisien berbasis kunci terakhir (TrackId > 20)
SELECT 
    TrackId,
    Name,
    UnitPrice
FROM Track
WHERE TrackId > 20
ORDER BY TrackId ASC
LIMIT 5;
