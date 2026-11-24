# Modul 06: Subquery, CTE, dan Set Operations

## Ringkasan Ruang Lingkup Materi
Modul ini membahas query bersarang (subquery skalar, single-row, multi-row, correlated), operator himpunan EXISTS/NOT EXISTS, ANY/ALL, Common Table Expressions (CTE tunggal, jamak, rekursif), dan operasi himpunan (UNION, INTERSECT, EXCEPT).

## Tujuan Pembelajaran
Menguasai modularisasi kueri kompleks menggunakan CTE dan subquery teroptimasi, serta menyelesaikan masalah data berstruktur hierarkis menggunakan CTE rekursif.

---
## Daftar Submodul Pembelajaran

| No | Nama Submodul | File Source Code | Status Eksekusi |
|:---|:---|:---|:---:|
| 091 | Scalar subquery | [091_scalar_subquery.sql](091_scalar_subquery.sql) | Siap Dijalankan |
| 092 | Subquery satu baris | [092_single_row_subquery.sql](092_single_row_subquery.sql) | Siap Dijalankan |
| 093 | Subquery banyak baris | [093_multirow_subquery.sql](093_multirow_subquery.sql) | Siap Dijalankan |
| 094 | Correlated subquery | [094_correlated_subquery.sql](094_correlated_subquery.sql) | Siap Dijalankan |
| 095 | Operator `EXISTS` | [095_exists_operator.sql](095_exists_operator.sql) | Siap Dijalankan |
| 096 | Operator `NOT EXISTS` | [096_not_exists_operator.sql](096_not_exists_operator.sql) | Siap Dijalankan |
| 097 | Operator `ANY` dan `SOME` | [097_any_some_operator.sql](097_any_some_operator.sql) | Siap Dijalankan |
| 098 | Operator `ALL` | [098_all_operator.sql](098_all_operator.sql) | Siap Dijalankan |
| 099 | Subquery pada `FROM` | [099_subquery_in_from.sql](099_subquery_in_from.sql) | Siap Dijalankan |
| 100 | Subquery pada `SELECT` | [100_subquery_in_select.sql](100_subquery_in_select.sql) | Siap Dijalankan |
| 101 | Common Table Expression | [101_cte_basic.sql](101_cte_basic.sql) | Siap Dijalankan |
| 102 | Multiple CTE | [102_multiple_ctes.sql](102_multiple_ctes.sql) | Siap Dijalankan |
| 103 | Recursive CTE | [103_recursive_cte.sql](103_recursive_cte.sql) | Siap Dijalankan |
| 104 | Operator `UNION` | [104_union_operator.sql](104_union_operator.sql) | Siap Dijalankan |
| 105 | Operator `UNION ALL` | [105_union_all.sql](105_union_all.sql) | Siap Dijalankan |
| 106 | Operator `INTERSECT` | [106_intersect_operator.sql](106_intersect_operator.sql) | Siap Dijalankan |
| 107 | Operator `EXCEPT` | [107_except_operator.sql](107_except_operator.sql) | Siap Dijalankan |
| 108 | Perbandingan CTE dan subquery | [108_cte_vs_subquery.sql](108_cte_vs_subquery.sql) | Siap Dijalankan |
| 109 | `LATERAL JOIN` pada DBMS yang mendukung | [109_lateral_join.sql](109_lateral_join.sql) | Siap Dijalankan |
| 110 | Query hierarki rekursif | [110_recursive_hierarchy.sql](110_recursive_hierarchy.sql) | Siap Dijalankan |

---

## Penjelasan Detail Setiap Submodul

### 091. Scalar subquery

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep scalar subquery menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `091_scalar_subquery.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [091_scalar_subquery.sql](091_scalar_subquery.sql) mendemonstrasikan implementasi terstruktur dari konsep scalar subquery. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [091_scalar_subquery.sql](091_scalar_subquery.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('091_scalar_subquery.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 091_scalar_subquery.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 091_scalar_subquery.sql](output/091_scalar_subquery.png)

---

### 092. Subquery satu baris

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep subquery satu baris menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `092_single_row_subquery.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [092_single_row_subquery.sql](092_single_row_subquery.sql) mendemonstrasikan implementasi terstruktur dari konsep subquery satu baris. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [092_single_row_subquery.sql](092_single_row_subquery.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('092_single_row_subquery.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 092_single_row_subquery.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 092_single_row_subquery.sql](output/092_single_row_subquery.png)

---

### 093. Subquery banyak baris

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep subquery banyak baris menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `093_multirow_subquery.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [093_multirow_subquery.sql](093_multirow_subquery.sql) mendemonstrasikan implementasi terstruktur dari konsep subquery banyak baris. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [093_multirow_subquery.sql](093_multirow_subquery.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('093_multirow_subquery.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 093_multirow_subquery.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 093_multirow_subquery.sql](output/093_multirow_subquery.png)

---

### 094. Correlated subquery

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep correlated subquery menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `094_correlated_subquery.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [094_correlated_subquery.sql](094_correlated_subquery.sql) mendemonstrasikan implementasi terstruktur dari konsep correlated subquery. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [094_correlated_subquery.sql](094_correlated_subquery.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('094_correlated_subquery.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 094_correlated_subquery.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 094_correlated_subquery.sql](output/094_correlated_subquery.png)

---

### 095. Operator `EXISTS`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep operator `exists` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `095_exists_operator.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [095_exists_operator.sql](095_exists_operator.sql) mendemonstrasikan implementasi terstruktur dari konsep operator `exists`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [095_exists_operator.sql](095_exists_operator.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('095_exists_operator.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 095_exists_operator.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 095_exists_operator.sql](output/095_exists_operator.png)

---

### 096. Operator `NOT EXISTS`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep operator `not exists` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `096_not_exists_operator.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [096_not_exists_operator.sql](096_not_exists_operator.sql) mendemonstrasikan implementasi terstruktur dari konsep operator `not exists`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [096_not_exists_operator.sql](096_not_exists_operator.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('096_not_exists_operator.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 096_not_exists_operator.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 096_not_exists_operator.sql](output/096_not_exists_operator.png)

---

### 097. Operator `ANY` dan `SOME`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep operator `any` dan `some` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `097_any_some_operator.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [097_any_some_operator.sql](097_any_some_operator.sql) mendemonstrasikan implementasi terstruktur dari konsep operator `any` dan `some`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [097_any_some_operator.sql](097_any_some_operator.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('097_any_some_operator.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 097_any_some_operator.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 097_any_some_operator.sql](output/097_any_some_operator.png)

---

### 098. Operator `ALL`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep operator `all` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `098_all_operator.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [098_all_operator.sql](098_all_operator.sql) mendemonstrasikan implementasi terstruktur dari konsep operator `all`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [098_all_operator.sql](098_all_operator.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('098_all_operator.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 098_all_operator.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 098_all_operator.sql](output/098_all_operator.png)

---

### 099. Subquery pada `FROM`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep subquery pada `from` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `099_subquery_in_from.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [099_subquery_in_from.sql](099_subquery_in_from.sql) mendemonstrasikan implementasi terstruktur dari konsep subquery pada `from`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [099_subquery_in_from.sql](099_subquery_in_from.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('099_subquery_in_from.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 099_subquery_in_from.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 099_subquery_in_from.sql](output/099_subquery_in_from.png)

---

### 100. Subquery pada `SELECT`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep subquery pada `select` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `100_subquery_in_select.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [100_subquery_in_select.sql](100_subquery_in_select.sql) mendemonstrasikan implementasi terstruktur dari konsep subquery pada `select`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [100_subquery_in_select.sql](100_subquery_in_select.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('100_subquery_in_select.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 100_subquery_in_select.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 100_subquery_in_select.sql](output/100_subquery_in_select.png)

---

### 101. Common Table Expression

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep common table expression menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `101_cte_basic.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [101_cte_basic.sql](101_cte_basic.sql) mendemonstrasikan implementasi terstruktur dari konsep common table expression. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [101_cte_basic.sql](101_cte_basic.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('101_cte_basic.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 101_cte_basic.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 101_cte_basic.sql](output/101_cte_basic.png)

---

### 102. Multiple CTE

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep multiple cte menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `102_multiple_ctes.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [102_multiple_ctes.sql](102_multiple_ctes.sql) mendemonstrasikan implementasi terstruktur dari konsep multiple cte. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [102_multiple_ctes.sql](102_multiple_ctes.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('102_multiple_ctes.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 102_multiple_ctes.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 102_multiple_ctes.sql](output/102_multiple_ctes.png)

---

### 103. Recursive CTE

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep recursive cte menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `103_recursive_cte.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [103_recursive_cte.sql](103_recursive_cte.sql) mendemonstrasikan implementasi terstruktur dari konsep recursive cte. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [103_recursive_cte.sql](103_recursive_cte.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('103_recursive_cte.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 103_recursive_cte.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 103_recursive_cte.sql](output/103_recursive_cte.png)

---

### 104. Operator `UNION`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep operator `union` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `104_union_operator.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [104_union_operator.sql](104_union_operator.sql) mendemonstrasikan implementasi terstruktur dari konsep operator `union`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [104_union_operator.sql](104_union_operator.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('104_union_operator.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 104_union_operator.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 104_union_operator.sql](output/104_union_operator.png)

---

### 105. Operator `UNION ALL`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep operator `union all` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `105_union_all.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [105_union_all.sql](105_union_all.sql) mendemonstrasikan implementasi terstruktur dari konsep operator `union all`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [105_union_all.sql](105_union_all.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('105_union_all.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 105_union_all.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 105_union_all.sql](output/105_union_all.png)

---

### 106. Operator `INTERSECT`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep operator `intersect` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `106_intersect_operator.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [106_intersect_operator.sql](106_intersect_operator.sql) mendemonstrasikan implementasi terstruktur dari konsep operator `intersect`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [106_intersect_operator.sql](106_intersect_operator.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('106_intersect_operator.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 106_intersect_operator.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 106_intersect_operator.sql](output/106_intersect_operator.png)

---

### 107. Operator `EXCEPT`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep operator `except` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `107_except_operator.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [107_except_operator.sql](107_except_operator.sql) mendemonstrasikan implementasi terstruktur dari konsep operator `except`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [107_except_operator.sql](107_except_operator.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('107_except_operator.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 107_except_operator.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 107_except_operator.sql](output/107_except_operator.png)

---

### 108. Perbandingan CTE dan subquery

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep perbandingan cte dan subquery menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `108_cte_vs_subquery.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [108_cte_vs_subquery.sql](108_cte_vs_subquery.sql) mendemonstrasikan implementasi terstruktur dari konsep perbandingan cte dan subquery. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [108_cte_vs_subquery.sql](108_cte_vs_subquery.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('108_cte_vs_subquery.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 108_cte_vs_subquery.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 108_cte_vs_subquery.sql](output/108_cte_vs_subquery.png)

---

### 109. `LATERAL JOIN` pada DBMS yang mendukung

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep `lateral join` pada dbms yang mendukung menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `109_lateral_join.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [109_lateral_join.sql](109_lateral_join.sql) mendemonstrasikan implementasi terstruktur dari konsep `lateral join` pada dbms yang mendukung. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [109_lateral_join.sql](109_lateral_join.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('109_lateral_join.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 109_lateral_join.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 109_lateral_join.sql](output/109_lateral_join.png)

---

### 110. Query hierarki rekursif

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep query hierarki rekursif menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `110_recursive_hierarchy.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [110_recursive_hierarchy.sql](110_recursive_hierarchy.sql) mendemonstrasikan implementasi terstruktur dari konsep query hierarki rekursif. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [110_recursive_hierarchy.sql](110_recursive_hierarchy.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('110_recursive_hierarchy.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 110_recursive_hierarchy.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 110_recursive_hierarchy.sql](output/110_recursive_hierarchy.png)

---

## Ringkasan Modul
Modul 06 meningkatkan kemampuan memecah logika analitik kompleks menjadi tahapan-tahapan query yang bersih, mudah dipelihara, dan efisien.

Seluruh submodul di atas saling melengkapi untuk membentuk pemahaman terstruktur yang bertahap, mulai dari konsep fundamental hingga implementasi praktis yang siap pakai di lingkungan kerja nyata.
