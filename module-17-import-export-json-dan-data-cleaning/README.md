# Modul 17: Import, Export, JSON, dan Data Cleaning

## Ringkasan Ruang Lingkup Materi
Modul ini mengkaji utilitas data: impor dan ekspor CSV, penanganan data semi-terstruktur JSON (penyimpanan, ekstraksi, agregasi), standardisasi tanggal dan zona waktu, pembersihan data NULL dan duplikat, audit kualitas data, serta migrasi data.

## Tujuan Pembelajaran
Mampu membangun pipeline pembersihan data dan integrasi data heterogen antara format relasional dan dokumen JSON modern.

---
## Daftar Submodul Pembelajaran

| No | Nama Submodul | File Source Code | Status Eksekusi |
|:---|:---|:---|:---:|
| 266 | Import data CSV | [266_import_csv.sql](266_import_csv.sql) | Siap Dijalankan |
| 267 | Export query ke CSV | [267_export_csv.sql](267_export_csv.sql) | Siap Dijalankan |
| 268 | Import menggunakan `LOAD DATA` pada MySQL | [268_mysql_load_data.sql](268_mysql_load_data.sql) | Siap Dijalankan |
| 269 | Import dan export menggunakan `COPY` pada PostgreSQL | [269_postgresql_copy.sql](269_postgresql_copy.sql) | Siap Dijalankan |
| 270 | Bulk import pada SQL Server | [270_sqlserver_bulk_insert.sql](270_sqlserver_bulk_insert.sql) | Siap Dijalankan |
| 271 | Penyimpanan JSON | [271_json_storage.sql](271_json_storage.sql) | Siap Dijalankan |
| 272 | Ekstraksi nilai JSON | [272_json_extract.sql](272_json_extract.sql) | Siap Dijalankan |
| 273 | Agregasi menjadi JSON | [273_json_aggregation.sql](273_json_aggregation.sql) | Siap Dijalankan |
| 274 | Konversi tanggal dan zona waktu | [274_date_timezone_conversion.sql](274_date_timezone_conversion.sql) | Siap Dijalankan |
| 275 | Pembersihan nilai `NULL` | [275_clean_null_values.sql](275_clean_null_values.sql) | Siap Dijalankan |
| 276 | Identifikasi data duplikat | [276_find_duplicate_records.sql](276_find_duplicate_records.sql) | Siap Dijalankan |
| 277 | Normalisasi nilai teks | [277_normalize_text_values.sql](277_normalize_text_values.sql) | Siap Dijalankan |
| 278 | Pemeriksaan kualitas data | [278_data_quality_checks.sql](278_data_quality_checks.sql) | Siap Dijalankan |
| 279 | Backup dan restore database | [279_database_backup_restore.sql](279_database_backup_restore.sql) | Siap Dijalankan |
| 280 | Migrasi data antartabel atau database | [280_data_migration.sql](280_data_migration.sql) | Siap Dijalankan |

---

## Penjelasan Detail Setiap Submodul

### 266. Import data CSV

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep import data csv menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `266_import_csv.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [266_import_csv.sql](266_import_csv.sql) mendemonstrasikan implementasi terstruktur dari konsep import data csv. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [266_import_csv.sql](266_import_csv.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('266_import_csv.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 266_import_csv.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 266_import_csv.sql](output/266_import_csv.png)

---

### 267. Export query ke CSV

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep export query ke csv menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `267_export_csv.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [267_export_csv.sql](267_export_csv.sql) mendemonstrasikan implementasi terstruktur dari konsep export query ke csv. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [267_export_csv.sql](267_export_csv.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('267_export_csv.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 267_export_csv.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 267_export_csv.sql](output/267_export_csv.png)

---

### 268. Import menggunakan `LOAD DATA` pada MySQL

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep import menggunakan `load data` pada mysql menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `268_mysql_load_data.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [268_mysql_load_data.sql](268_mysql_load_data.sql) mendemonstrasikan implementasi terstruktur dari konsep import menggunakan `load data` pada mysql. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [268_mysql_load_data.sql](268_mysql_load_data.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('268_mysql_load_data.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 268_mysql_load_data.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 268_mysql_load_data.sql](output/268_mysql_load_data.png)

---

### 269. Import dan export menggunakan `COPY` pada PostgreSQL

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep import dan export menggunakan `copy` pada postgresql menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `269_postgresql_copy.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [269_postgresql_copy.sql](269_postgresql_copy.sql) mendemonstrasikan implementasi terstruktur dari konsep import dan export menggunakan `copy` pada postgresql. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [269_postgresql_copy.sql](269_postgresql_copy.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('269_postgresql_copy.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 269_postgresql_copy.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 269_postgresql_copy.sql](output/269_postgresql_copy.png)

---

### 270. Bulk import pada SQL Server

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep bulk import pada sql server menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `270_sqlserver_bulk_insert.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [270_sqlserver_bulk_insert.sql](270_sqlserver_bulk_insert.sql) mendemonstrasikan implementasi terstruktur dari konsep bulk import pada sql server. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [270_sqlserver_bulk_insert.sql](270_sqlserver_bulk_insert.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('270_sqlserver_bulk_insert.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 270_sqlserver_bulk_insert.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 270_sqlserver_bulk_insert.sql](output/270_sqlserver_bulk_insert.png)

---

### 271. Penyimpanan JSON

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep penyimpanan json menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `271_json_storage.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [271_json_storage.sql](271_json_storage.sql) mendemonstrasikan implementasi terstruktur dari konsep penyimpanan json. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [271_json_storage.sql](271_json_storage.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('271_json_storage.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 271_json_storage.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 271_json_storage.sql](output/271_json_storage.png)

---

### 272. Ekstraksi nilai JSON

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep ekstraksi nilai json menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `272_json_extract.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [272_json_extract.sql](272_json_extract.sql) mendemonstrasikan implementasi terstruktur dari konsep ekstraksi nilai json. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [272_json_extract.sql](272_json_extract.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('272_json_extract.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 272_json_extract.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 272_json_extract.sql](output/272_json_extract.png)

---

### 273. Agregasi menjadi JSON

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep agregasi menjadi json menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `273_json_aggregation.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [273_json_aggregation.sql](273_json_aggregation.sql) mendemonstrasikan implementasi terstruktur dari konsep agregasi menjadi json. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [273_json_aggregation.sql](273_json_aggregation.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('273_json_aggregation.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 273_json_aggregation.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 273_json_aggregation.sql](output/273_json_aggregation.png)

---

### 274. Konversi tanggal dan zona waktu

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep konversi tanggal dan zona waktu menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `274_date_timezone_conversion.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [274_date_timezone_conversion.sql](274_date_timezone_conversion.sql) mendemonstrasikan implementasi terstruktur dari konsep konversi tanggal dan zona waktu. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [274_date_timezone_conversion.sql](274_date_timezone_conversion.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('274_date_timezone_conversion.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 274_date_timezone_conversion.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 274_date_timezone_conversion.sql](output/274_date_timezone_conversion.png)

---

### 275. Pembersihan nilai `NULL`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep pembersihan nilai `null` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `275_clean_null_values.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [275_clean_null_values.sql](275_clean_null_values.sql) mendemonstrasikan implementasi terstruktur dari konsep pembersihan nilai `null`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [275_clean_null_values.sql](275_clean_null_values.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('275_clean_null_values.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 275_clean_null_values.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 275_clean_null_values.sql](output/275_clean_null_values.png)

---

### 276. Identifikasi data duplikat

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep identifikasi data duplikat menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `276_find_duplicate_records.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [276_find_duplicate_records.sql](276_find_duplicate_records.sql) mendemonstrasikan implementasi terstruktur dari konsep identifikasi data duplikat. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [276_find_duplicate_records.sql](276_find_duplicate_records.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('276_find_duplicate_records.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 276_find_duplicate_records.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 276_find_duplicate_records.sql](output/276_find_duplicate_records.png)

---

### 277. Normalisasi nilai teks

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep normalisasi nilai teks menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `277_normalize_text_values.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [277_normalize_text_values.sql](277_normalize_text_values.sql) mendemonstrasikan implementasi terstruktur dari konsep normalisasi nilai teks. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [277_normalize_text_values.sql](277_normalize_text_values.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('277_normalize_text_values.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 277_normalize_text_values.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 277_normalize_text_values.sql](output/277_normalize_text_values.png)

---

### 278. Pemeriksaan kualitas data

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep pemeriksaan kualitas data menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `278_data_quality_checks.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [278_data_quality_checks.sql](278_data_quality_checks.sql) mendemonstrasikan implementasi terstruktur dari konsep pemeriksaan kualitas data. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [278_data_quality_checks.sql](278_data_quality_checks.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('278_data_quality_checks.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 278_data_quality_checks.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 278_data_quality_checks.sql](output/278_data_quality_checks.png)

---

### 279. Backup dan restore database

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep backup dan restore database menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `279_database_backup_restore.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [279_database_backup_restore.sql](279_database_backup_restore.sql) mendemonstrasikan implementasi terstruktur dari konsep backup dan restore database. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [279_database_backup_restore.sql](279_database_backup_restore.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('279_database_backup_restore.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 279_database_backup_restore.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 279_database_backup_restore.sql](output/279_database_backup_restore.png)

---

### 280. Migrasi data antartabel atau database

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep migrasi data antartabel atau database menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `280_data_migration.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [280_data_migration.sql](280_data_migration.sql) mendemonstrasikan implementasi terstruktur dari konsep migrasi data antartabel atau database. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [280_data_migration.sql](280_data_migration.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('280_data_migration.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 280_data_migration.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 280_data_migration.sql](output/280_data_migration.png)

---

## Ringkasan Modul
Modul 17 memperluas fleksibilitas SQL dalam mengelola format data modern seperti JSON dan integrasi pertukaran file CSV.

Seluruh submodul di atas saling melengkapi untuk membentuk pemahaman terstruktur yang bertahap, mulai dari konsep fundamental hingga implementasi praktis yang siap pakai di lingkungan kerja nyata.
