# Modul 02: SELECT, Filtering, dan Sorting

## Ringkasan Ruang Lingkup Materi
Modul ini membahas penyaringan data (filtering) menggunakan klausa WHERE dan berbagai operator logika, perbandingan, range, set, pattern matching, penanganan NULL, pengurutan ORDER BY, serta paginasi hasil dengan LIMIT/OFFSET.

## Tujuan Pembelajaran
Mampu menyaring dan mengurutkan data secara presisi, memahami evaluasi logika three-valued logic SQL, dan menerapkan teknik paginasi pada dataset relasional.

---
## Daftar Submodul Pembelajaran

| No | Nama Submodul | File Source Code | Status Eksekusi |
|:---|:---|:---|:---:|
| 016 | Klausa `WHERE` | [016_where_clause.sql](016_where_clause.sql) | Siap Dijalankan |
| 017 | Operator perbandingan | [017_comparison_operators.sql](017_comparison_operators.sql) | Siap Dijalankan |
| 018 | Operator `AND`, `OR`, dan `NOT` | [018_logical_operators.sql](018_logical_operators.sql) | Siap Dijalankan |
| 019 | Operator `BETWEEN` | [019_between_operator.sql](019_between_operator.sql) | Siap Dijalankan |
| 020 | Operator `IN` | [020_in_operator.sql](020_in_operator.sql) | Siap Dijalankan |
| 021 | Operator `NOT IN` | [021_not_in_operator.sql](021_not_in_operator.sql) | Siap Dijalankan |
| 022 | Operator `LIKE` | [022_like_operator.sql](022_like_operator.sql) | Siap Dijalankan |
| 023 | Wildcard `%` dan `_` | [023_wildcard_patterns.sql](023_wildcard_patterns.sql) | Siap Dijalankan |
| 024 | Escape karakter pada pola `LIKE` | [024_escape_like_patterns.sql](024_escape_like_patterns.sql) | Siap Dijalankan |
| 025 | Pemeriksaan `IS NULL` | [025_is_null_operator.sql](025_is_null_operator.sql) | Siap Dijalankan |
| 026 | Pemeriksaan `IS NOT NULL` | [026_is_not_null.sql](026_is_not_null.sql) | Siap Dijalankan |
| 027 | Pengurutan `ASC` | [027_order_by_ascending.sql](027_order_by_ascending.sql) | Siap Dijalankan |
| 028 | Pengurutan `DESC` | [028_order_by_descending.sql](028_order_by_descending.sql) | Siap Dijalankan |
| 029 | Pengurutan berdasarkan beberapa kolom | [029_order_by_multiple_columns.sql](029_order_by_multiple_columns.sql) | Siap Dijalankan |
| 030 | Pengurutan berdasarkan ekspresi | [030_order_by_expressions.sql](030_order_by_expressions.sql) | Siap Dijalankan |
| 031 | Pembatasan jumlah baris dengan `LIMIT` | [031_limit_rows.sql](031_limit_rows.sql) | Siap Dijalankan |
| 032 | Pagination dengan `OFFSET` | [032_offset_pagination.sql](032_offset_pagination.sql) | Siap Dijalankan |
| 033 | Pembatasan baris dengan `FETCH FIRST` | [033_fetch_first_rows.sql](033_fetch_first_rows.sql) | Siap Dijalankan |
| 034 | Pembatasan baris menggunakan `TOP` pada SQL Server | [034_top_rows_sqlserver.sql](034_top_rows_sqlserver.sql) | Siap Dijalankan |
| 035 | Kombinasi filtering dan sorting | [035_filtering_and_sorting_combined.sql](035_filtering_and_sorting_combined.sql) | Siap Dijalankan |

---

## Penjelasan Detail Setiap Submodul

### 016. Klausa `WHERE`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep klausa `where` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `016_where_clause.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [016_where_clause.sql](016_where_clause.sql) mendemonstrasikan implementasi terstruktur dari konsep klausa `where`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [016_where_clause.sql](016_where_clause.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('016_where_clause.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 016_where_clause.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 016_where_clause.sql](output/016_where_clause.png)

---

### 017. Operator perbandingan

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep operator perbandingan menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `017_comparison_operators.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [017_comparison_operators.sql](017_comparison_operators.sql) mendemonstrasikan implementasi terstruktur dari konsep operator perbandingan. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [017_comparison_operators.sql](017_comparison_operators.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('017_comparison_operators.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 017_comparison_operators.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 017_comparison_operators.sql](output/017_comparison_operators.png)

---

### 018. Operator `AND`, `OR`, dan `NOT`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep operator `and`, `or`, dan `not` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `018_logical_operators.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [018_logical_operators.sql](018_logical_operators.sql) mendemonstrasikan implementasi terstruktur dari konsep operator `and`, `or`, dan `not`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [018_logical_operators.sql](018_logical_operators.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('018_logical_operators.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 018_logical_operators.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 018_logical_operators.sql](output/018_logical_operators.png)

---

### 019. Operator `BETWEEN`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep operator `between` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `019_between_operator.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [019_between_operator.sql](019_between_operator.sql) mendemonstrasikan implementasi terstruktur dari konsep operator `between`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [019_between_operator.sql](019_between_operator.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('019_between_operator.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 019_between_operator.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 019_between_operator.sql](output/019_between_operator.png)

---

### 020. Operator `IN`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep operator `in` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `020_in_operator.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [020_in_operator.sql](020_in_operator.sql) mendemonstrasikan implementasi terstruktur dari konsep operator `in`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [020_in_operator.sql](020_in_operator.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('020_in_operator.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 020_in_operator.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 020_in_operator.sql](output/020_in_operator.png)

---

### 021. Operator `NOT IN`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep operator `not in` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `021_not_in_operator.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [021_not_in_operator.sql](021_not_in_operator.sql) mendemonstrasikan implementasi terstruktur dari konsep operator `not in`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [021_not_in_operator.sql](021_not_in_operator.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('021_not_in_operator.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 021_not_in_operator.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 021_not_in_operator.sql](output/021_not_in_operator.png)

---

### 022. Operator `LIKE`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep operator `like` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `022_like_operator.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [022_like_operator.sql](022_like_operator.sql) mendemonstrasikan implementasi terstruktur dari konsep operator `like`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [022_like_operator.sql](022_like_operator.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('022_like_operator.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 022_like_operator.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 022_like_operator.sql](output/022_like_operator.png)

---

### 023. Wildcard `%` dan `_`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep wildcard `%` dan `_` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `023_wildcard_patterns.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [023_wildcard_patterns.sql](023_wildcard_patterns.sql) mendemonstrasikan implementasi terstruktur dari konsep wildcard `%` dan `_`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [023_wildcard_patterns.sql](023_wildcard_patterns.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('023_wildcard_patterns.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 023_wildcard_patterns.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 023_wildcard_patterns.sql](output/023_wildcard_patterns.png)

---

### 024. Escape karakter pada pola `LIKE`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep escape karakter pada pola `like` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `024_escape_like_patterns.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [024_escape_like_patterns.sql](024_escape_like_patterns.sql) mendemonstrasikan implementasi terstruktur dari konsep escape karakter pada pola `like`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [024_escape_like_patterns.sql](024_escape_like_patterns.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('024_escape_like_patterns.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 024_escape_like_patterns.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 024_escape_like_patterns.sql](output/024_escape_like_patterns.png)

---

### 025. Pemeriksaan `IS NULL`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep pemeriksaan `is null` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `025_is_null_operator.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [025_is_null_operator.sql](025_is_null_operator.sql) mendemonstrasikan implementasi terstruktur dari konsep pemeriksaan `is null`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [025_is_null_operator.sql](025_is_null_operator.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('025_is_null_operator.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 025_is_null_operator.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 025_is_null_operator.sql](output/025_is_null_operator.png)

---

### 026. Pemeriksaan `IS NOT NULL`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep pemeriksaan `is not null` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `026_is_not_null.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [026_is_not_null.sql](026_is_not_null.sql) mendemonstrasikan implementasi terstruktur dari konsep pemeriksaan `is not null`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [026_is_not_null.sql](026_is_not_null.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('026_is_not_null.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 026_is_not_null.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 026_is_not_null.sql](output/026_is_not_null.png)

---

### 027. Pengurutan `ASC`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep pengurutan `asc` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `027_order_by_ascending.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [027_order_by_ascending.sql](027_order_by_ascending.sql) mendemonstrasikan implementasi terstruktur dari konsep pengurutan `asc`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [027_order_by_ascending.sql](027_order_by_ascending.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('027_order_by_ascending.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 027_order_by_ascending.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 027_order_by_ascending.sql](output/027_order_by_ascending.png)

---

### 028. Pengurutan `DESC`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep pengurutan `desc` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `028_order_by_descending.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [028_order_by_descending.sql](028_order_by_descending.sql) mendemonstrasikan implementasi terstruktur dari konsep pengurutan `desc`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [028_order_by_descending.sql](028_order_by_descending.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('028_order_by_descending.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 028_order_by_descending.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 028_order_by_descending.sql](output/028_order_by_descending.png)

---

### 029. Pengurutan berdasarkan beberapa kolom

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep pengurutan berdasarkan beberapa kolom menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `029_order_by_multiple_columns.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [029_order_by_multiple_columns.sql](029_order_by_multiple_columns.sql) mendemonstrasikan implementasi terstruktur dari konsep pengurutan berdasarkan beberapa kolom. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [029_order_by_multiple_columns.sql](029_order_by_multiple_columns.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('029_order_by_multiple_columns.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 029_order_by_multiple_columns.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 029_order_by_multiple_columns.sql](output/029_order_by_multiple_columns.png)

---

### 030. Pengurutan berdasarkan ekspresi

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep pengurutan berdasarkan ekspresi menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `030_order_by_expressions.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [030_order_by_expressions.sql](030_order_by_expressions.sql) mendemonstrasikan implementasi terstruktur dari konsep pengurutan berdasarkan ekspresi. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [030_order_by_expressions.sql](030_order_by_expressions.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('030_order_by_expressions.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 030_order_by_expressions.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 030_order_by_expressions.sql](output/030_order_by_expressions.png)

---

### 031. Pembatasan jumlah baris dengan `LIMIT`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep pembatasan jumlah baris dengan `limit` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `031_limit_rows.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [031_limit_rows.sql](031_limit_rows.sql) mendemonstrasikan implementasi terstruktur dari konsep pembatasan jumlah baris dengan `limit`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [031_limit_rows.sql](031_limit_rows.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('031_limit_rows.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 031_limit_rows.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 031_limit_rows.sql](output/031_limit_rows.png)

---

### 032. Pagination dengan `OFFSET`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep pagination dengan `offset` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `032_offset_pagination.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [032_offset_pagination.sql](032_offset_pagination.sql) mendemonstrasikan implementasi terstruktur dari konsep pagination dengan `offset`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [032_offset_pagination.sql](032_offset_pagination.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('032_offset_pagination.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 032_offset_pagination.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 032_offset_pagination.sql](output/032_offset_pagination.png)

---

### 033. Pembatasan baris dengan `FETCH FIRST`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep pembatasan baris dengan `fetch first` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `033_fetch_first_rows.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [033_fetch_first_rows.sql](033_fetch_first_rows.sql) mendemonstrasikan implementasi terstruktur dari konsep pembatasan baris dengan `fetch first`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [033_fetch_first_rows.sql](033_fetch_first_rows.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('033_fetch_first_rows.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 033_fetch_first_rows.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 033_fetch_first_rows.sql](output/033_fetch_first_rows.png)

---

### 034. Pembatasan baris menggunakan `TOP` pada SQL Server

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep pembatasan baris menggunakan `top` pada sql server menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `034_top_rows_sqlserver.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [034_top_rows_sqlserver.sql](034_top_rows_sqlserver.sql) mendemonstrasikan implementasi terstruktur dari konsep pembatasan baris menggunakan `top` pada sql server. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [034_top_rows_sqlserver.sql](034_top_rows_sqlserver.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('034_top_rows_sqlserver.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 034_top_rows_sqlserver.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 034_top_rows_sqlserver.sql](output/034_top_rows_sqlserver.png)

---

### 035. Kombinasi filtering dan sorting

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep kombinasi filtering dan sorting menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `035_filtering_and_sorting_combined.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [035_filtering_and_sorting_combined.sql](035_filtering_and_sorting_combined.sql) mendemonstrasikan implementasi terstruktur dari konsep kombinasi filtering dan sorting. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [035_filtering_and_sorting_combined.sql](035_filtering_and_sorting_combined.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('035_filtering_and_sorting_combined.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 035_filtering_and_sorting_combined.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 035_filtering_and_sorting_combined.sql](output/035_filtering_and_sorting_combined.png)

---

## Ringkasan Modul
Modul 02 membekali kemampuan memfilter dan menstrukturkan result-set data sesuai kriteria bisnis, menguasai pengurutan bertingkat, dan menerapkan paginasi yang efisien.

Seluruh submodul di atas saling melengkapi untuk membentuk pemahaman terstruktur yang bertahap, mulai dari konsep fundamental hingga implementasi praktis yang siap pakai di lingkungan kerja nyata.
