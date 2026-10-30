-- ====================================================================
-- Modul: 13 - Stored Procedures dan Functions
-- File : 225_cursor_basic.sql
-- Topik: Kursor Database (CURSOR Dasar)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- Cursor memungkinkan traversal data baris demi baris secara prosedural (DECLARE, OPEN, FETCH, CLOSE).
-- Namun, pemrosesan set-based SQL jauh lebih efisien dibandingkan cursor.

-- Demonstrasi traversal set-based yang ekuivalen dan optimal
SELECT 
    ROW_NUMBER() OVER (ORDER BY ArtistId ASC) AS CursorFetchIndex,
    ArtistId,
    Name
FROM Artist
LIMIT 5;
