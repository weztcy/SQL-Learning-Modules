# Modul 03: Ekspresi dan Fungsi SQL

## Ringkasan Ruang Lingkup Materi
Modul ini mencakup logika kondisional CASE, fungsi penanganan NULL (COALESCE, NULLIF), konversi tipe data (CAST, CONVERT), manipulasi teks dan string, fungsi matematika numerik, serta ekstraksi dan aritmetika tanggal.

## Tujuan Pembelajaran
Menguasai transformasi data tingkat baris menggunakan ekspresi skalar dan fungsi bawaan SQL untuk kebutuhan analisis dan pembersihan data.

---
## Daftar Submodul Pembelajaran

| No | Nama Submodul | File Source Code | Status Eksekusi |
|:---|:---|:---|:---:|
| 036 | Ekspresi `CASE` | [036_case_expression.sql](036_case_expression.sql) | Siap Dijalankan |
| 037 | `CASE` dengan banyak kondisi | [037_case_multiple_conditions.sql](037_case_multiple_conditions.sql) | Siap Dijalankan |
| 038 | Fungsi `COALESCE` | [038_coalesce_function.sql](038_coalesce_function.sql) | Siap Dijalankan |
| 039 | Fungsi `NULLIF` | [039_nullif_function.sql](039_nullif_function.sql) | Siap Dijalankan |
| 040 | Konversi tipe data dengan `CAST` | [040_cast_conversion.sql](040_cast_conversion.sql) | Siap Dijalankan |
| 041 | Konversi tipe data dengan `CONVERT` | [041_convert_function.sql](041_convert_function.sql) | Siap Dijalankan |
| 042 | Penggabungan string | [042_string_concatenation.sql](042_string_concatenation.sql) | Siap Dijalankan |
| 043 | Fungsi `CONCAT` | [043_concat_function.sql](043_concat_function.sql) | Siap Dijalankan |
| 044 | Fungsi `UPPER` dan `LOWER` | [044_upper_lower_functions.sql](044_upper_lower_functions.sql) | Siap Dijalankan |
| 045 | Fungsi `TRIM` | [045_trim_functions.sql](045_trim_functions.sql) | Siap Dijalankan |
| 046 | Fungsi panjang string | [046_length_functions.sql](046_length_functions.sql) | Siap Dijalankan |
| 047 | Fungsi `SUBSTRING` | [047_substring_function.sql](047_substring_function.sql) | Siap Dijalankan |
| 048 | Fungsi `REPLACE` | [048_replace_function.sql](048_replace_function.sql) | Siap Dijalankan |
| 049 | Pencarian posisi substring | [049_position_search_functions.sql](049_position_search_functions.sql) | Siap Dijalankan |
| 050 | Fungsi `ROUND` | [050_round_function.sql](050_round_function.sql) | Siap Dijalankan |
| 051 | Fungsi `ABS` | [051_abs_function.sql](051_abs_function.sql) | Siap Dijalankan |
| 052 | Fungsi pembulatan ke atas dan ke bawah | [052_ceil_floor_functions.sql](052_ceil_floor_functions.sql) | Siap Dijalankan |
| 053 | Operasi modulo | [053_modulo_function.sql](053_modulo_function.sql) | Siap Dijalankan |
| 054 | Ekstraksi bagian tanggal | [054_date_extraction.sql](054_date_extraction.sql) | Siap Dijalankan |
| 055 | Operasi aritmetika tanggal | [055_date_arithmetic.sql](055_date_arithmetic.sql) | Siap Dijalankan |

---

## Penjelasan Detail Setiap Submodul

### 036. Ekspresi `CASE`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep ekspresi `case` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `036_case_expression.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [036_case_expression.sql](036_case_expression.sql) mendemonstrasikan implementasi terstruktur dari konsep ekspresi `case`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [036_case_expression.sql](036_case_expression.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('036_case_expression.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 036_case_expression.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 036_case_expression.sql](output/036_case_expression.png)

---

### 037. `CASE` dengan banyak kondisi

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep `case` dengan banyak kondisi menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `037_case_multiple_conditions.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [037_case_multiple_conditions.sql](037_case_multiple_conditions.sql) mendemonstrasikan implementasi terstruktur dari konsep `case` dengan banyak kondisi. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [037_case_multiple_conditions.sql](037_case_multiple_conditions.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('037_case_multiple_conditions.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 037_case_multiple_conditions.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 037_case_multiple_conditions.sql](output/037_case_multiple_conditions.png)

---

### 038. Fungsi `COALESCE`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep fungsi `coalesce` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `038_coalesce_function.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [038_coalesce_function.sql](038_coalesce_function.sql) mendemonstrasikan implementasi terstruktur dari konsep fungsi `coalesce`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [038_coalesce_function.sql](038_coalesce_function.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('038_coalesce_function.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 038_coalesce_function.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 038_coalesce_function.sql](output/038_coalesce_function.png)

---

### 039. Fungsi `NULLIF`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep fungsi `nullif` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `039_nullif_function.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [039_nullif_function.sql](039_nullif_function.sql) mendemonstrasikan implementasi terstruktur dari konsep fungsi `nullif`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [039_nullif_function.sql](039_nullif_function.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('039_nullif_function.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 039_nullif_function.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 039_nullif_function.sql](output/039_nullif_function.png)

---

### 040. Konversi tipe data dengan `CAST`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep konversi tipe data dengan `cast` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `040_cast_conversion.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [040_cast_conversion.sql](040_cast_conversion.sql) mendemonstrasikan implementasi terstruktur dari konsep konversi tipe data dengan `cast`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [040_cast_conversion.sql](040_cast_conversion.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('040_cast_conversion.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 040_cast_conversion.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 040_cast_conversion.sql](output/040_cast_conversion.png)

---

### 041. Konversi tipe data dengan `CONVERT`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep konversi tipe data dengan `convert` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `041_convert_function.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [041_convert_function.sql](041_convert_function.sql) mendemonstrasikan implementasi terstruktur dari konsep konversi tipe data dengan `convert`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [041_convert_function.sql](041_convert_function.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('041_convert_function.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 041_convert_function.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 041_convert_function.sql](output/041_convert_function.png)

---

### 042. Penggabungan string

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep penggabungan string menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `042_string_concatenation.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [042_string_concatenation.sql](042_string_concatenation.sql) mendemonstrasikan implementasi terstruktur dari konsep penggabungan string. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [042_string_concatenation.sql](042_string_concatenation.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('042_string_concatenation.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 042_string_concatenation.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 042_string_concatenation.sql](output/042_string_concatenation.png)

---

### 043. Fungsi `CONCAT`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep fungsi `concat` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `043_concat_function.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [043_concat_function.sql](043_concat_function.sql) mendemonstrasikan implementasi terstruktur dari konsep fungsi `concat`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [043_concat_function.sql](043_concat_function.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('043_concat_function.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 043_concat_function.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 043_concat_function.sql](output/043_concat_function.png)

---

### 044. Fungsi `UPPER` dan `LOWER`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep fungsi `upper` dan `lower` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `044_upper_lower_functions.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [044_upper_lower_functions.sql](044_upper_lower_functions.sql) mendemonstrasikan implementasi terstruktur dari konsep fungsi `upper` dan `lower`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [044_upper_lower_functions.sql](044_upper_lower_functions.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('044_upper_lower_functions.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 044_upper_lower_functions.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 044_upper_lower_functions.sql](output/044_upper_lower_functions.png)

---

### 045. Fungsi `TRIM`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep fungsi `trim` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `045_trim_functions.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [045_trim_functions.sql](045_trim_functions.sql) mendemonstrasikan implementasi terstruktur dari konsep fungsi `trim`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [045_trim_functions.sql](045_trim_functions.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('045_trim_functions.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 045_trim_functions.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 045_trim_functions.sql](output/045_trim_functions.png)

---

### 046. Fungsi panjang string

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep fungsi panjang string menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `046_length_functions.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [046_length_functions.sql](046_length_functions.sql) mendemonstrasikan implementasi terstruktur dari konsep fungsi panjang string. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [046_length_functions.sql](046_length_functions.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('046_length_functions.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 046_length_functions.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 046_length_functions.sql](output/046_length_functions.png)

---

### 047. Fungsi `SUBSTRING`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep fungsi `substring` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `047_substring_function.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [047_substring_function.sql](047_substring_function.sql) mendemonstrasikan implementasi terstruktur dari konsep fungsi `substring`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [047_substring_function.sql](047_substring_function.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('047_substring_function.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 047_substring_function.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 047_substring_function.sql](output/047_substring_function.png)

---

### 048. Fungsi `REPLACE`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep fungsi `replace` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `048_replace_function.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [048_replace_function.sql](048_replace_function.sql) mendemonstrasikan implementasi terstruktur dari konsep fungsi `replace`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [048_replace_function.sql](048_replace_function.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('048_replace_function.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 048_replace_function.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 048_replace_function.sql](output/048_replace_function.png)

---

### 049. Pencarian posisi substring

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep pencarian posisi substring menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `049_position_search_functions.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [049_position_search_functions.sql](049_position_search_functions.sql) mendemonstrasikan implementasi terstruktur dari konsep pencarian posisi substring. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [049_position_search_functions.sql](049_position_search_functions.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('049_position_search_functions.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 049_position_search_functions.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 049_position_search_functions.sql](output/049_position_search_functions.png)

---

### 050. Fungsi `ROUND`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep fungsi `round` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `050_round_function.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [050_round_function.sql](050_round_function.sql) mendemonstrasikan implementasi terstruktur dari konsep fungsi `round`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [050_round_function.sql](050_round_function.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('050_round_function.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 050_round_function.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 050_round_function.sql](output/050_round_function.png)

---

### 051. Fungsi `ABS`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep fungsi `abs` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `051_abs_function.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [051_abs_function.sql](051_abs_function.sql) mendemonstrasikan implementasi terstruktur dari konsep fungsi `abs`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [051_abs_function.sql](051_abs_function.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('051_abs_function.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 051_abs_function.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 051_abs_function.sql](output/051_abs_function.png)

---

### 052. Fungsi pembulatan ke atas dan ke bawah

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep fungsi pembulatan ke atas dan ke bawah menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `052_ceil_floor_functions.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [052_ceil_floor_functions.sql](052_ceil_floor_functions.sql) mendemonstrasikan implementasi terstruktur dari konsep fungsi pembulatan ke atas dan ke bawah. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [052_ceil_floor_functions.sql](052_ceil_floor_functions.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('052_ceil_floor_functions.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 052_ceil_floor_functions.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 052_ceil_floor_functions.sql](output/052_ceil_floor_functions.png)

---

### 053. Operasi modulo

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep operasi modulo menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `053_modulo_function.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [053_modulo_function.sql](053_modulo_function.sql) mendemonstrasikan implementasi terstruktur dari konsep operasi modulo. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [053_modulo_function.sql](053_modulo_function.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('053_modulo_function.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 053_modulo_function.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 053_modulo_function.sql](output/053_modulo_function.png)

---

### 054. Ekstraksi bagian tanggal

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep ekstraksi bagian tanggal menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `054_date_extraction.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [054_date_extraction.sql](054_date_extraction.sql) mendemonstrasikan implementasi terstruktur dari konsep ekstraksi bagian tanggal. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [054_date_extraction.sql](054_date_extraction.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('054_date_extraction.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 054_date_extraction.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 054_date_extraction.sql](output/054_date_extraction.png)

---

### 055. Operasi aritmetika tanggal

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep operasi aritmetika tanggal menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `055_date_arithmetic.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [055_date_arithmetic.sql](055_date_arithmetic.sql) mendemonstrasikan implementasi terstruktur dari konsep operasi aritmetika tanggal. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [055_date_arithmetic.sql](055_date_arithmetic.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('055_date_arithmetic.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 055_date_arithmetic.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 055_date_arithmetic.sql](output/055_date_arithmetic.png)

---

## Ringkasan Modul
Modul 03 memberikan keterampilan melakukan komputasi dan transformasi nilai pada tingkat baris data, menyiapkan data yang bersih dan siap dianalisis.

Seluruh submodul di atas saling melengkapi untuk membentuk pemahaman terstruktur yang bertahap, mulai dari konsep fundamental hingga implementasi praktis yang siap pakai di lingkungan kerja nyata.
