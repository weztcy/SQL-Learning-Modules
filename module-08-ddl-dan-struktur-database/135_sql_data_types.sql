-- ====================================================================
-- Modul: 08 - DDL dan Struktur Database
-- File : 135_sql_data_types.sql
-- Topik: Tipe Data SQL (Type Affinity)
-- Database: Chinook_Sqlite.sqlite
-- ====================================================================

-- SQL standar memiliki tipe data terstruktur (INTEGER, VARCHAR, DECIMAL, DATE, BLOB).
-- SQLite memiliki 5 tipe penyimpanan (Storage Classes): NULL, INTEGER, REAL, TEXT, BLOB,
-- dengan sistem tipe dinamis (Type Affinity).

CREATE TEMP TABLE DemoTipeData (
    KolomInt INTEGER,
    KolomReal REAL,
    KolomTeks TEXT,
    KolomBlob BLOB
);

INSERT INTO DemoTipeData VALUES (42, 3.14159, 'Musik Klasik', X'53514C');

SELECT 
    KolomInt, typeof(KolomInt) AS TipeInt,
    KolomReal, typeof(KolomReal) AS TipeReal,
    KolomTeks, typeof(KolomTeks) AS TipeTeks,
    KolomBlob, typeof(KolomBlob) AS TipeBlob
FROM DemoTipeData;
