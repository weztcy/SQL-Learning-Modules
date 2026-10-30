# Modul 05: JOIN dan Relasi Antartabel

## Ringkasan Ruang Lingkup Materi
Modul ini mendalami hubungan antartabel relasional melalui INNER JOIN, LEFT/RIGHT/FULL OUTER JOIN, CROSS JOIN, Self Join, Natural Join, Non-Equi Join, relasi multi-tabel, anti-join, semi-join, dan join dengan derived table.

## Tujuan Pembelajaran
Mampu merelasikan entitas yang terpisah dalam skema ternormalisasi, menghindari duplikasi kartesian, serta menerapkan pola query relasional tingkat lanjut.

---
## Daftar Submodul Pembelajaran

| No | Nama Submodul | File Source Code | Status Eksekusi |
|:---|:---|:---|:---:|
| 071 | `INNER JOIN` | [071_inner_join.sql](071_inner_join.sql) | Siap Dijalankan |
| 072 | `LEFT JOIN` | [072_left_join.sql](072_left_join.sql) | Siap Dijalankan |
| 073 | `RIGHT JOIN` | [073_right_join.sql](073_right_join.sql) | Siap Dijalankan |
| 074 | `FULL OUTER JOIN` | [074_full_outer_join.sql](074_full_outer_join.sql) | Siap Dijalankan |
| 075 | `CROSS JOIN` | [075_cross_join.sql](075_cross_join.sql) | Siap Dijalankan |
| 076 | Self join | [076_self_join.sql](076_self_join.sql) | Siap Dijalankan |
| 077 | `NATURAL JOIN` | [077_natural_join.sql](077_natural_join.sql) | Siap Dijalankan |
| 078 | Non-equi join | [078_non_equi_join.sql](078_non_equi_join.sql) | Siap Dijalankan |
| 079 | Join beberapa tabel | [079_join_multiple_tables.sql](079_join_multiple_tables.sql) | Siap Dijalankan |
| 080 | Join tiga tabel | [080_join_three_tables.sql](080_join_three_tables.sql) | Siap Dijalankan |
| 081 | Join dengan composite key | [081_composite_key_join.sql](081_composite_key_join.sql) | Siap Dijalankan |
| 082 | Kondisi join dengan `ON` | [082_join_conditions_on.sql](082_join_conditions_on.sql) | Siap Dijalankan |
| 083 | Klausa `USING` | [083_join_using_clause.sql](083_join_using_clause.sql) | Siap Dijalankan |
| 084 | Penempatan filter dalam join | [084_join_filter_placement.sql](084_join_filter_placement.sql) | Siap Dijalankan |
| 085 | Pola anti join | [085_anti_join.sql](085_anti_join.sql) | Siap Dijalankan |
| 086 | Pola semi join | [086_semi_join.sql](086_semi_join.sql) | Siap Dijalankan |
| 087 | Join dengan agregasi | [087_join_with_aggregation.sql](087_join_with_aggregation.sql) | Siap Dijalankan |
| 088 | Identifikasi duplikasi akibat join | [088_join_duplicate_rows.sql](088_join_duplicate_rows.sql) | Siap Dijalankan |
| 089 | Join melalui bridge table | [089_bridge_table_join.sql](089_bridge_table_join.sql) | Siap Dijalankan |
| 090 | Join dengan derived table | [090_join_with_derived_table.sql](090_join_with_derived_table.sql) | Siap Dijalankan |

---

## Penjelasan Detail Setiap Submodul

### 071. `INNER JOIN`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep `inner join` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `071_inner_join.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [071_inner_join.sql](071_inner_join.sql) mendemonstrasikan implementasi terstruktur dari konsep `inner join`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [071_inner_join.sql](071_inner_join.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('071_inner_join.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 071_inner_join.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 071_inner_join.sql](output/071_inner_join.png)

---

### 072. `LEFT JOIN`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep `left join` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `072_left_join.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [072_left_join.sql](072_left_join.sql) mendemonstrasikan implementasi terstruktur dari konsep `left join`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [072_left_join.sql](072_left_join.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('072_left_join.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 072_left_join.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 072_left_join.sql](output/072_left_join.png)

---

### 073. `RIGHT JOIN`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep `right join` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `073_right_join.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [073_right_join.sql](073_right_join.sql) mendemonstrasikan implementasi terstruktur dari konsep `right join`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [073_right_join.sql](073_right_join.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('073_right_join.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 073_right_join.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 073_right_join.sql](output/073_right_join.png)

---

### 074. `FULL OUTER JOIN`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep `full outer join` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `074_full_outer_join.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [074_full_outer_join.sql](074_full_outer_join.sql) mendemonstrasikan implementasi terstruktur dari konsep `full outer join`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [074_full_outer_join.sql](074_full_outer_join.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('074_full_outer_join.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 074_full_outer_join.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 074_full_outer_join.sql](output/074_full_outer_join.png)

---

### 075. `CROSS JOIN`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep `cross join` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `075_cross_join.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [075_cross_join.sql](075_cross_join.sql) mendemonstrasikan implementasi terstruktur dari konsep `cross join`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [075_cross_join.sql](075_cross_join.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('075_cross_join.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 075_cross_join.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 075_cross_join.sql](output/075_cross_join.png)

---

### 076. Self join

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep self join menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `076_self_join.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [076_self_join.sql](076_self_join.sql) mendemonstrasikan implementasi terstruktur dari konsep self join. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [076_self_join.sql](076_self_join.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('076_self_join.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 076_self_join.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 076_self_join.sql](output/076_self_join.png)

---

### 077. `NATURAL JOIN`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep `natural join` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `077_natural_join.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [077_natural_join.sql](077_natural_join.sql) mendemonstrasikan implementasi terstruktur dari konsep `natural join`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [077_natural_join.sql](077_natural_join.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('077_natural_join.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 077_natural_join.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 077_natural_join.sql](output/077_natural_join.png)

---

### 078. Non-equi join

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep non-equi join menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `078_non_equi_join.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [078_non_equi_join.sql](078_non_equi_join.sql) mendemonstrasikan implementasi terstruktur dari konsep non-equi join. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [078_non_equi_join.sql](078_non_equi_join.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('078_non_equi_join.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 078_non_equi_join.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 078_non_equi_join.sql](output/078_non_equi_join.png)

---

### 079. Join beberapa tabel

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep join beberapa tabel menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `079_join_multiple_tables.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [079_join_multiple_tables.sql](079_join_multiple_tables.sql) mendemonstrasikan implementasi terstruktur dari konsep join beberapa tabel. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [079_join_multiple_tables.sql](079_join_multiple_tables.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('079_join_multiple_tables.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 079_join_multiple_tables.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 079_join_multiple_tables.sql](output/079_join_multiple_tables.png)

---

### 080. Join tiga tabel

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep join tiga tabel menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `080_join_three_tables.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [080_join_three_tables.sql](080_join_three_tables.sql) mendemonstrasikan implementasi terstruktur dari konsep join tiga tabel. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [080_join_three_tables.sql](080_join_three_tables.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('080_join_three_tables.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 080_join_three_tables.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 080_join_three_tables.sql](output/080_join_three_tables.png)

---

### 081. Join dengan composite key

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep join dengan composite key menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `081_composite_key_join.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [081_composite_key_join.sql](081_composite_key_join.sql) mendemonstrasikan implementasi terstruktur dari konsep join dengan composite key. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [081_composite_key_join.sql](081_composite_key_join.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('081_composite_key_join.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 081_composite_key_join.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 081_composite_key_join.sql](output/081_composite_key_join.png)

---

### 082. Kondisi join dengan `ON`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep kondisi join dengan `on` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `082_join_conditions_on.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [082_join_conditions_on.sql](082_join_conditions_on.sql) mendemonstrasikan implementasi terstruktur dari konsep kondisi join dengan `on`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [082_join_conditions_on.sql](082_join_conditions_on.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('082_join_conditions_on.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 082_join_conditions_on.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 082_join_conditions_on.sql](output/082_join_conditions_on.png)

---

### 083. Klausa `USING`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep klausa `using` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `083_join_using_clause.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [083_join_using_clause.sql](083_join_using_clause.sql) mendemonstrasikan implementasi terstruktur dari konsep klausa `using`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [083_join_using_clause.sql](083_join_using_clause.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('083_join_using_clause.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 083_join_using_clause.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 083_join_using_clause.sql](output/083_join_using_clause.png)

---

### 084. Penempatan filter dalam join

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep penempatan filter dalam join menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `084_join_filter_placement.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [084_join_filter_placement.sql](084_join_filter_placement.sql) mendemonstrasikan implementasi terstruktur dari konsep penempatan filter dalam join. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [084_join_filter_placement.sql](084_join_filter_placement.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('084_join_filter_placement.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 084_join_filter_placement.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 084_join_filter_placement.sql](output/084_join_filter_placement.png)

---

### 085. Pola anti join

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep pola anti join menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `085_anti_join.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [085_anti_join.sql](085_anti_join.sql) mendemonstrasikan implementasi terstruktur dari konsep pola anti join. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [085_anti_join.sql](085_anti_join.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('085_anti_join.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 085_anti_join.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 085_anti_join.sql](output/085_anti_join.png)

---

### 086. Pola semi join

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep pola semi join menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `086_semi_join.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [086_semi_join.sql](086_semi_join.sql) mendemonstrasikan implementasi terstruktur dari konsep pola semi join. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [086_semi_join.sql](086_semi_join.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('086_semi_join.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 086_semi_join.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 086_semi_join.sql](output/086_semi_join.png)

---

### 087. Join dengan agregasi

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep join dengan agregasi menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `087_join_with_aggregation.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [087_join_with_aggregation.sql](087_join_with_aggregation.sql) mendemonstrasikan implementasi terstruktur dari konsep join dengan agregasi. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [087_join_with_aggregation.sql](087_join_with_aggregation.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('087_join_with_aggregation.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 087_join_with_aggregation.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 087_join_with_aggregation.sql](output/087_join_with_aggregation.png)

---

### 088. Identifikasi duplikasi akibat join

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep identifikasi duplikasi akibat join menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `088_join_duplicate_rows.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [088_join_duplicate_rows.sql](088_join_duplicate_rows.sql) mendemonstrasikan implementasi terstruktur dari konsep identifikasi duplikasi akibat join. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [088_join_duplicate_rows.sql](088_join_duplicate_rows.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('088_join_duplicate_rows.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 088_join_duplicate_rows.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 088_join_duplicate_rows.sql](output/088_join_duplicate_rows.png)

---

### 089. Join melalui bridge table

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep join melalui bridge table menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `089_bridge_table_join.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [089_bridge_table_join.sql](089_bridge_table_join.sql) mendemonstrasikan implementasi terstruktur dari konsep join melalui bridge table. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [089_bridge_table_join.sql](089_bridge_table_join.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('089_bridge_table_join.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 089_bridge_table_join.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 089_bridge_table_join.sql](output/089_bridge_table_join.png)

---

### 090. Join dengan derived table

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep join dengan derived table menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `090_join_with_derived_table.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [090_join_with_derived_table.sql](090_join_with_derived_table.sql) mendemonstrasikan implementasi terstruktur dari konsep join dengan derived table. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [090_join_with_derived_table.sql](090_join_with_derived_table.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('090_join_with_derived_table.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 090_join_with_derived_table.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 090_join_with_derived_table.sql](output/090_join_with_derived_table.png)

---

## Ringkasan Modul
Modul 05 merupakan inti dari kekuatan database relasional, menghubungkan tabel master, transaksi, dan lookup untuk menghasilkan wawasan komprehensif.

Seluruh submodul di atas saling melengkapi untuk membentuk pemahaman terstruktur yang bertahap, mulai dari konsep fundamental hingga implementasi praktis yang siap pakai di lingkungan kerja nyata.
