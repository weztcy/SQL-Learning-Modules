# Modul 16: Query Optimization dan Performance

## Ringkasan Ruang Lingkup Materi
Modul ini berfokus pada optimasi kueri dan analisis performa: EXPLAIN QUERY PLAN, pemahaman Sequential vs Index Scan, selektivitas index, kueri SARGable, optimasi paginasi keyset, penulisan ulang kueri (query rewriting), dan statistik database.

## Tujuan Pembelajaran
Mampu mendiagnosis bottleneck kueri yang lambat, menafsirkan rencana eksekusi optimizer, dan mengoptimalkan performa kueri secara sistematis.

---
## Daftar Submodul Pembelajaran

| No | Nama Submodul | File Source Code | Status Eksekusi |
|:---|:---|:---|:---:|
| 251 | `EXPLAIN` | [251_explain_query_plan.sql](251_explain_query_plan.sql) | Siap Dijalankan |
| 252 | `EXPLAIN ANALYZE` pada DBMS yang mendukung | [252_explain_analyze.sql](252_explain_analyze.sql) | Siap Dijalankan |
| 253 | Sequential scan dan index scan | [253_sequential_vs_index_scan.sql](253_sequential_vs_index_scan.sql) | Siap Dijalankan |
| 254 | Selectivity index | [254_index_selectivity.sql](254_index_selectivity.sql) | Siap Dijalankan |
| 255 | Penulisan query yang mendukung pemanfaatan index | [255_sargable_queries.sql](255_sargable_queries.sql) | Siap Dijalankan |
| 256 | Urutan kolom composite index | [256_composite_index_order.sql](256_composite_index_order.sql) | Siap Dijalankan |
| 257 | Menghindari `SELECT *` jika tidak diperlukan | [257_avoid_select_star.sql](257_avoid_select_star.sql) | Siap Dijalankan |
| 258 | Optimasi pagination | [258_query_pagination_optimization.sql](258_query_pagination_optimization.sql) | Siap Dijalankan |
| 259 | Analisis performa join | [259_join_performance.sql](259_join_performance.sql) | Siap Dijalankan |
| 260 | Optimasi subquery | [260_subquery_optimization.sql](260_subquery_optimization.sql) | Siap Dijalankan |
| 261 | Analisis correlated query | [261_correlated_query_performance.sql](261_correlated_query_performance.sql) | Siap Dijalankan |
| 262 | Statistik database | [262_database_statistics.sql](262_database_statistics.sql) | Siap Dijalankan |
| 263 | Memperbarui statistik tabel | [263_analyze_table.sql](263_analyze_table.sql) | Siap Dijalankan |
| 264 | Query rewriting | [264_query_rewriting.sql](264_query_rewriting.sql) | Siap Dijalankan |
| 265 | Perbandingan execution plan | [265_execution_plan_comparison.sql](265_execution_plan_comparison.sql) | Siap Dijalankan |

---

## Penjelasan Detail Setiap Submodul

### 251. `EXPLAIN`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep `explain` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `251_explain_query_plan.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [251_explain_query_plan.sql](251_explain_query_plan.sql) mendemonstrasikan implementasi terstruktur dari konsep `explain`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [251_explain_query_plan.sql](251_explain_query_plan.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('251_explain_query_plan.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 251_explain_query_plan.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 251_explain_query_plan.sql](output/251_explain_query_plan.png)

---

### 252. `EXPLAIN ANALYZE` pada DBMS yang mendukung

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep `explain analyze` pada dbms yang mendukung menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `252_explain_analyze.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [252_explain_analyze.sql](252_explain_analyze.sql) mendemonstrasikan implementasi terstruktur dari konsep `explain analyze` pada dbms yang mendukung. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [252_explain_analyze.sql](252_explain_analyze.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('252_explain_analyze.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 252_explain_analyze.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 252_explain_analyze.sql](output/252_explain_analyze.png)

---

### 253. Sequential scan dan index scan

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep sequential scan dan index scan menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `253_sequential_vs_index_scan.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [253_sequential_vs_index_scan.sql](253_sequential_vs_index_scan.sql) mendemonstrasikan implementasi terstruktur dari konsep sequential scan dan index scan. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [253_sequential_vs_index_scan.sql](253_sequential_vs_index_scan.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('253_sequential_vs_index_scan.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 253_sequential_vs_index_scan.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 253_sequential_vs_index_scan.sql](output/253_sequential_vs_index_scan.png)

---

### 254. Selectivity index

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep selectivity index menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `254_index_selectivity.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [254_index_selectivity.sql](254_index_selectivity.sql) mendemonstrasikan implementasi terstruktur dari konsep selectivity index. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [254_index_selectivity.sql](254_index_selectivity.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('254_index_selectivity.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 254_index_selectivity.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 254_index_selectivity.sql](output/254_index_selectivity.png)

---

### 255. Penulisan query yang mendukung pemanfaatan index

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep penulisan query yang mendukung pemanfaatan index menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `255_sargable_queries.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [255_sargable_queries.sql](255_sargable_queries.sql) mendemonstrasikan implementasi terstruktur dari konsep penulisan query yang mendukung pemanfaatan index. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [255_sargable_queries.sql](255_sargable_queries.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('255_sargable_queries.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 255_sargable_queries.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 255_sargable_queries.sql](output/255_sargable_queries.png)

---

### 256. Urutan kolom composite index

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep urutan kolom composite index menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `256_composite_index_order.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [256_composite_index_order.sql](256_composite_index_order.sql) mendemonstrasikan implementasi terstruktur dari konsep urutan kolom composite index. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [256_composite_index_order.sql](256_composite_index_order.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('256_composite_index_order.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 256_composite_index_order.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 256_composite_index_order.sql](output/256_composite_index_order.png)

---

### 257. Menghindari `SELECT *` jika tidak diperlukan

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep menghindari `select *` jika tidak diperlukan menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `257_avoid_select_star.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [257_avoid_select_star.sql](257_avoid_select_star.sql) mendemonstrasikan implementasi terstruktur dari konsep menghindari `select *` jika tidak diperlukan. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [257_avoid_select_star.sql](257_avoid_select_star.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('257_avoid_select_star.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 257_avoid_select_star.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 257_avoid_select_star.sql](output/257_avoid_select_star.png)

---

### 258. Optimasi pagination

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep optimasi pagination menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `258_query_pagination_optimization.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [258_query_pagination_optimization.sql](258_query_pagination_optimization.sql) mendemonstrasikan implementasi terstruktur dari konsep optimasi pagination. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [258_query_pagination_optimization.sql](258_query_pagination_optimization.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('258_query_pagination_optimization.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 258_query_pagination_optimization.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 258_query_pagination_optimization.sql](output/258_query_pagination_optimization.png)

---

### 259. Analisis performa join

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep analisis performa join menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `259_join_performance.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [259_join_performance.sql](259_join_performance.sql) mendemonstrasikan implementasi terstruktur dari konsep analisis performa join. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [259_join_performance.sql](259_join_performance.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('259_join_performance.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 259_join_performance.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 259_join_performance.sql](output/259_join_performance.png)

---

### 260. Optimasi subquery

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep optimasi subquery menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `260_subquery_optimization.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [260_subquery_optimization.sql](260_subquery_optimization.sql) mendemonstrasikan implementasi terstruktur dari konsep optimasi subquery. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [260_subquery_optimization.sql](260_subquery_optimization.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('260_subquery_optimization.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 260_subquery_optimization.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 260_subquery_optimization.sql](output/260_subquery_optimization.png)

---

### 261. Analisis correlated query

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep analisis correlated query menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `261_correlated_query_performance.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [261_correlated_query_performance.sql](261_correlated_query_performance.sql) mendemonstrasikan implementasi terstruktur dari konsep analisis correlated query. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [261_correlated_query_performance.sql](261_correlated_query_performance.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('261_correlated_query_performance.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 261_correlated_query_performance.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 261_correlated_query_performance.sql](output/261_correlated_query_performance.png)

---

### 262. Statistik database

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep statistik database menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `262_database_statistics.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [262_database_statistics.sql](262_database_statistics.sql) mendemonstrasikan implementasi terstruktur dari konsep statistik database. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [262_database_statistics.sql](262_database_statistics.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('262_database_statistics.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 262_database_statistics.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 262_database_statistics.sql](output/262_database_statistics.png)

---

### 263. Memperbarui statistik tabel

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep memperbarui statistik tabel menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `263_analyze_table.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [263_analyze_table.sql](263_analyze_table.sql) mendemonstrasikan implementasi terstruktur dari konsep memperbarui statistik tabel. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [263_analyze_table.sql](263_analyze_table.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('263_analyze_table.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 263_analyze_table.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 263_analyze_table.sql](output/263_analyze_table.png)

---

### 264. Query rewriting

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep query rewriting menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `264_query_rewriting.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [264_query_rewriting.sql](264_query_rewriting.sql) mendemonstrasikan implementasi terstruktur dari konsep query rewriting. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [264_query_rewriting.sql](264_query_rewriting.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('264_query_rewriting.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 264_query_rewriting.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 264_query_rewriting.sql](output/264_query_rewriting.png)

---

### 265. Perbandingan execution plan

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep perbandingan execution plan menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `265_execution_plan_comparison.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [265_execution_plan_comparison.sql](265_execution_plan_comparison.sql) mendemonstrasikan implementasi terstruktur dari konsep perbandingan execution plan. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [265_execution_plan_comparison.sql](265_execution_plan_comparison.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('265_execution_plan_comparison.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 265_execution_plan_comparison.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 265_execution_plan_comparison.sql](output/265_execution_plan_comparison.png)

---

## Ringkasan Modul
Modul 16 membekali keahlian mendiagnosis dan merekayasa ulang kueri agar berjalan dengan efisiensi CPU dan I/O maksimum.

Seluruh submodul di atas saling melengkapi untuk membentuk pemahaman terstruktur yang bertahap, mulai dari konsep fundamental hingga implementasi praktis yang siap pakai di lingkungan kerja nyata.
