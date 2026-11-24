# Modul 04: Agregasi dan Pengelompokan Data

## Ringkasan Ruang Lingkup Materi
Modul ini berfokus pada fungsi agregasi (COUNT, SUM, AVG, MIN, MAX), pengelompokan data dengan GROUP BY, penyaringan kelompok menggunakan HAVING, agregasi bersyarat, serta konsep agregasi multidimensi (ROLLUP, CUBE, GROUPING SETS).

## Tujuan Pembelajaran
Mampu merangkum jutaan baris data menjadi ringkasan analitik bernilai tinggi, membedakan evaluasi baris vs kelompok, dan menangani NULL dalam kalkulasi agregat.

---
## Daftar Submodul Pembelajaran

| No | Nama Submodul | File Source Code | Status Eksekusi |
|:---|:---|:---|:---:|
| 056 | Fungsi `COUNT` | [056_count_function.sql](056_count_function.sql) | Siap Dijalankan |
| 057 | `COUNT(DISTINCT ...)` | [057_count_distinct.sql](057_count_distinct.sql) | Siap Dijalankan |
| 058 | Fungsi `SUM` | [058_sum_function.sql](058_sum_function.sql) | Siap Dijalankan |
| 059 | Fungsi `AVG` | [059_avg_function.sql](059_avg_function.sql) | Siap Dijalankan |
| 060 | Fungsi `MIN` dan `MAX` | [060_min_max_functions.sql](060_min_max_functions.sql) | Siap Dijalankan |
| 061 | Klausa `GROUP BY` | [061_group_by_basic.sql](061_group_by_basic.sql) | Siap Dijalankan |
| 062 | Pengelompokan beberapa kolom | [062_group_by_multiple_columns.sql](062_group_by_multiple_columns.sql) | Siap Dijalankan |
| 063 | Klausa `HAVING` | [063_having_clause.sql](063_having_clause.sql) | Siap Dijalankan |
| 064 | Perbedaan `WHERE` dan `HAVING` | [064_where_vs_having.sql](064_where_vs_having.sql) | Siap Dijalankan |
| 065 | Agregasi bersyarat | [065_conditional_aggregation.sql](065_conditional_aggregation.sql) | Siap Dijalankan |
| 066 | Penanganan `NULL` dalam agregasi | [066_aggregate_null_handling.sql](066_aggregate_null_handling.sql) | Siap Dijalankan |
| 067 | Pengelompokan berdasarkan ekspresi | [067_group_by_expressions.sql](067_group_by_expressions.sql) | Siap Dijalankan |
| 068 | Agregasi `ROLLUP` | [068_rollup_aggregation.sql](068_rollup_aggregation.sql) | Siap Dijalankan |
| 069 | Agregasi `CUBE` | [069_cube_aggregation.sql](069_cube_aggregation.sql) | Siap Dijalankan |
| 070 | `GROUPING SETS` | [070_grouping_sets.sql](070_grouping_sets.sql) | Siap Dijalankan |

---

## Penjelasan Detail Setiap Submodul

### 056. Fungsi `COUNT`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep fungsi `count` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `056_count_function.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [056_count_function.sql](056_count_function.sql) mendemonstrasikan implementasi terstruktur dari konsep fungsi `count`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [056_count_function.sql](056_count_function.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('056_count_function.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 056_count_function.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 056_count_function.sql](output/056_count_function.png)

---

### 057. `COUNT(DISTINCT ...)`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep `count(distinct ...)` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `057_count_distinct.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [057_count_distinct.sql](057_count_distinct.sql) mendemonstrasikan implementasi terstruktur dari konsep `count(distinct ...)`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [057_count_distinct.sql](057_count_distinct.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('057_count_distinct.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 057_count_distinct.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 057_count_distinct.sql](output/057_count_distinct.png)

---

### 058. Fungsi `SUM`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep fungsi `sum` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `058_sum_function.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [058_sum_function.sql](058_sum_function.sql) mendemonstrasikan implementasi terstruktur dari konsep fungsi `sum`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [058_sum_function.sql](058_sum_function.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('058_sum_function.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 058_sum_function.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 058_sum_function.sql](output/058_sum_function.png)

---

### 059. Fungsi `AVG`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep fungsi `avg` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `059_avg_function.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [059_avg_function.sql](059_avg_function.sql) mendemonstrasikan implementasi terstruktur dari konsep fungsi `avg`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [059_avg_function.sql](059_avg_function.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('059_avg_function.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 059_avg_function.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 059_avg_function.sql](output/059_avg_function.png)

---

### 060. Fungsi `MIN` dan `MAX`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep fungsi `min` dan `max` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `060_min_max_functions.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [060_min_max_functions.sql](060_min_max_functions.sql) mendemonstrasikan implementasi terstruktur dari konsep fungsi `min` dan `max`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [060_min_max_functions.sql](060_min_max_functions.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('060_min_max_functions.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 060_min_max_functions.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 060_min_max_functions.sql](output/060_min_max_functions.png)

---

### 061. Klausa `GROUP BY`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep klausa `group by` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `061_group_by_basic.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [061_group_by_basic.sql](061_group_by_basic.sql) mendemonstrasikan implementasi terstruktur dari konsep klausa `group by`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [061_group_by_basic.sql](061_group_by_basic.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('061_group_by_basic.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 061_group_by_basic.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 061_group_by_basic.sql](output/061_group_by_basic.png)

---

### 062. Pengelompokan beberapa kolom

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep pengelompokan beberapa kolom menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `062_group_by_multiple_columns.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [062_group_by_multiple_columns.sql](062_group_by_multiple_columns.sql) mendemonstrasikan implementasi terstruktur dari konsep pengelompokan beberapa kolom. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [062_group_by_multiple_columns.sql](062_group_by_multiple_columns.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('062_group_by_multiple_columns.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 062_group_by_multiple_columns.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 062_group_by_multiple_columns.sql](output/062_group_by_multiple_columns.png)

---

### 063. Klausa `HAVING`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep klausa `having` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `063_having_clause.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [063_having_clause.sql](063_having_clause.sql) mendemonstrasikan implementasi terstruktur dari konsep klausa `having`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [063_having_clause.sql](063_having_clause.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('063_having_clause.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 063_having_clause.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 063_having_clause.sql](output/063_having_clause.png)

---

### 064. Perbedaan `WHERE` dan `HAVING`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep perbedaan `where` dan `having` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `064_where_vs_having.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [064_where_vs_having.sql](064_where_vs_having.sql) mendemonstrasikan implementasi terstruktur dari konsep perbedaan `where` dan `having`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [064_where_vs_having.sql](064_where_vs_having.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('064_where_vs_having.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 064_where_vs_having.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 064_where_vs_having.sql](output/064_where_vs_having.png)

---

### 065. Agregasi bersyarat

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep agregasi bersyarat menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `065_conditional_aggregation.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [065_conditional_aggregation.sql](065_conditional_aggregation.sql) mendemonstrasikan implementasi terstruktur dari konsep agregasi bersyarat. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [065_conditional_aggregation.sql](065_conditional_aggregation.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('065_conditional_aggregation.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 065_conditional_aggregation.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 065_conditional_aggregation.sql](output/065_conditional_aggregation.png)

---

### 066. Penanganan `NULL` dalam agregasi

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep penanganan `null` dalam agregasi menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `066_aggregate_null_handling.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [066_aggregate_null_handling.sql](066_aggregate_null_handling.sql) mendemonstrasikan implementasi terstruktur dari konsep penanganan `null` dalam agregasi. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [066_aggregate_null_handling.sql](066_aggregate_null_handling.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('066_aggregate_null_handling.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 066_aggregate_null_handling.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 066_aggregate_null_handling.sql](output/066_aggregate_null_handling.png)

---

### 067. Pengelompokan berdasarkan ekspresi

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep pengelompokan berdasarkan ekspresi menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `067_group_by_expressions.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [067_group_by_expressions.sql](067_group_by_expressions.sql) mendemonstrasikan implementasi terstruktur dari konsep pengelompokan berdasarkan ekspresi. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [067_group_by_expressions.sql](067_group_by_expressions.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('067_group_by_expressions.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 067_group_by_expressions.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 067_group_by_expressions.sql](output/067_group_by_expressions.png)

---

### 068. Agregasi `ROLLUP`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep agregasi `rollup` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `068_rollup_aggregation.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [068_rollup_aggregation.sql](068_rollup_aggregation.sql) mendemonstrasikan implementasi terstruktur dari konsep agregasi `rollup`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [068_rollup_aggregation.sql](068_rollup_aggregation.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('068_rollup_aggregation.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 068_rollup_aggregation.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 068_rollup_aggregation.sql](output/068_rollup_aggregation.png)

---

### 069. Agregasi `CUBE`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep agregasi `cube` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `069_cube_aggregation.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [069_cube_aggregation.sql](069_cube_aggregation.sql) mendemonstrasikan implementasi terstruktur dari konsep agregasi `cube`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [069_cube_aggregation.sql](069_cube_aggregation.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('069_cube_aggregation.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 069_cube_aggregation.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 069_cube_aggregation.sql](output/069_cube_aggregation.png)

---

### 070. `GROUPING SETS`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep `grouping sets` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `070_grouping_sets.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [070_grouping_sets.sql](070_grouping_sets.sql) mendemonstrasikan implementasi terstruktur dari konsep `grouping sets`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [070_grouping_sets.sql](070_grouping_sets.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('070_grouping_sets.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 070_grouping_sets.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 070_grouping_sets.sql](output/070_grouping_sets.png)

---

## Ringkasan Modul
Modul 04 mengajarkan teknik perangkuman data dari tingkat transaksional detail menjadi informasi agregat manajerial dan metrik performa bisnis.

Seluruh submodul di atas saling melengkapi untuk membentuk pemahaman terstruktur yang bertahap, mulai dari konsep fundamental hingga implementasi praktis yang siap pakai di lingkungan kerja nyata.
