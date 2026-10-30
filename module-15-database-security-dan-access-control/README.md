# Modul 15: Database Security dan Access Control

## Ringkasan Ruang Lingkup Materi
Modul ini membahas keamanan database dan kontrol akses: pembuatan user, pemberian dan pencabutan hak akses (GRANT, REVOKE), Role-Based Access Control (RBAC), prinsip least privilege, keamanan tingkat kolom, Row-Level Security (RLS), dan audit keamanan.

## Tujuan Pembelajaran
Mampu mengonfigurasi arsitektur keamanan database berlapis, melindungi data sensitif pelanggan, dan memenuhi standar kepatuhan regulasi privasi data.

---
## Daftar Submodul Pembelajaran

| No | Nama Submodul | File Source Code | Status Eksekusi |
|:---|:---|:---|:---:|
| 241 | Membuat user database | [241_create_database_user.sql](241_create_database_user.sql) | Siap Dijalankan |
| 242 | Memberikan hak `SELECT` | [242_grant_select_privilege.sql](242_grant_select_privilege.sql) | Siap Dijalankan |
| 243 | Hak `INSERT`, `UPDATE`, dan `DELETE` | [243_grant_dml_privileges.sql](243_grant_dml_privileges.sql) | Siap Dijalankan |
| 244 | Mencabut hak akses | [244_revoke_privileges.sql](244_revoke_privileges.sql) | Siap Dijalankan |
| 245 | Membuat role | [245_create_database_role.sql](245_create_database_role.sql) | Siap Dijalankan |
| 246 | Penetapan hak akses melalui role | [246_role_privilege_assignment.sql](246_role_privilege_assignment.sql) | Siap Dijalankan |
| 247 | Prinsip least privilege | [247_least_privilege_design.sql](247_least_privilege_design.sql) | Siap Dijalankan |
| 248 | Pembatasan akses kolom | [248_column_level_access.sql](248_column_level_access.sql) | Siap Dijalankan |
| 249 | Row-level security | [249_row_level_security.sql](249_row_level_security.sql) | Siap Dijalankan |
| 250 | Audit aktivitas database | [250_database_audit_logging.sql](250_database_audit_logging.sql) | Siap Dijalankan |

---

## Penjelasan Detail Setiap Submodul

### 241. Membuat user database

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep membuat user database menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `241_create_database_user.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [241_create_database_user.sql](241_create_database_user.sql) mendemonstrasikan implementasi terstruktur dari konsep membuat user database. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [241_create_database_user.sql](241_create_database_user.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('241_create_database_user.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 241_create_database_user.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 241_create_database_user.sql](output/241_create_database_user.png)

---

### 242. Memberikan hak `SELECT`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep memberikan hak `select` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `242_grant_select_privilege.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [242_grant_select_privilege.sql](242_grant_select_privilege.sql) mendemonstrasikan implementasi terstruktur dari konsep memberikan hak `select`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [242_grant_select_privilege.sql](242_grant_select_privilege.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('242_grant_select_privilege.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 242_grant_select_privilege.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 242_grant_select_privilege.sql](output/242_grant_select_privilege.png)

---

### 243. Hak `INSERT`, `UPDATE`, dan `DELETE`

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep hak `insert`, `update`, dan `delete` menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `243_grant_dml_privileges.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [243_grant_dml_privileges.sql](243_grant_dml_privileges.sql) mendemonstrasikan implementasi terstruktur dari konsep hak `insert`, `update`, dan `delete`. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [243_grant_dml_privileges.sql](243_grant_dml_privileges.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('243_grant_dml_privileges.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 243_grant_dml_privileges.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 243_grant_dml_privileges.sql](output/243_grant_dml_privileges.png)

---

### 244. Mencabut hak akses

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep mencabut hak akses menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `244_revoke_privileges.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [244_revoke_privileges.sql](244_revoke_privileges.sql) mendemonstrasikan implementasi terstruktur dari konsep mencabut hak akses. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [244_revoke_privileges.sql](244_revoke_privileges.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('244_revoke_privileges.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 244_revoke_privileges.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 244_revoke_privileges.sql](output/244_revoke_privileges.png)

---

### 245. Membuat role

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep membuat role menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `245_create_database_role.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [245_create_database_role.sql](245_create_database_role.sql) mendemonstrasikan implementasi terstruktur dari konsep membuat role. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [245_create_database_role.sql](245_create_database_role.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('245_create_database_role.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 245_create_database_role.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 245_create_database_role.sql](output/245_create_database_role.png)

---

### 246. Penetapan hak akses melalui role

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep penetapan hak akses melalui role menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `246_role_privilege_assignment.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [246_role_privilege_assignment.sql](246_role_privilege_assignment.sql) mendemonstrasikan implementasi terstruktur dari konsep penetapan hak akses melalui role. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [246_role_privilege_assignment.sql](246_role_privilege_assignment.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('246_role_privilege_assignment.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 246_role_privilege_assignment.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 246_role_privilege_assignment.sql](output/246_role_privilege_assignment.png)

---

### 247. Prinsip least privilege

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep prinsip least privilege menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `247_least_privilege_design.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [247_least_privilege_design.sql](247_least_privilege_design.sql) mendemonstrasikan implementasi terstruktur dari konsep prinsip least privilege. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [247_least_privilege_design.sql](247_least_privilege_design.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('247_least_privilege_design.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 247_least_privilege_design.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 247_least_privilege_design.sql](output/247_least_privilege_design.png)

---

### 248. Pembatasan akses kolom

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep pembatasan akses kolom menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `248_column_level_access.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [248_column_level_access.sql](248_column_level_access.sql) mendemonstrasikan implementasi terstruktur dari konsep pembatasan akses kolom. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [248_column_level_access.sql](248_column_level_access.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('248_column_level_access.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 248_column_level_access.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 248_column_level_access.sql](output/248_column_level_access.png)

---

### 249. Row-level security

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep row-level security menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `249_row_level_security.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [249_row_level_security.sql](249_row_level_security.sql) mendemonstrasikan implementasi terstruktur dari konsep row-level security. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [249_row_level_security.sql](249_row_level_security.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('249_row_level_security.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 249_row_level_security.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 249_row_level_security.sql](output/249_row_level_security.png)

---

### 250. Audit aktivitas database

**Tujuan Pembelajaran:**  
Memahami dan mempraktikkan konsep audit aktivitas database menggunakan database Chinook.

**Konsep Utama:**  
Konsep dasar yang mendasari `250_database_audit_logging.sql` adalah penerapan standar SQL relasional pada entitas database Chinook untuk memecahkan kebutuhan kueri dan manipulasi data secara tepat, aman, dan efisien.

**Penjelasan Source Code:**  
Program pada file [250_database_audit_logging.sql](250_database_audit_logging.sql) mendemonstrasikan implementasi terstruktur dari konsep audit aktivitas database. Source code dilengkapi komentar edukatif berbahasa Indonesia yang membedah setiap instruksi query, penggunaan klausa, serta tujuan pemrosesannya.

**Source Code:** [250_database_audit_logging.sql](250_database_audit_logging.sql)  

**Cara Menjalankan:**
Jalankan melalui terminal atau command prompt menggunakan Python runner:
```bash
python -c "import sqlite3; conn=sqlite3.connect('../Chinook_Sqlite.sqlite'); print(conn.cursor().executescript(open('250_database_audit_logging.sql', encoding='utf-8').read()))"
```
Atau menggunakan sqlite3 CLI:
```bash
sqlite3 ../Chinook_Sqlite.sqlite < 250_database_audit_logging.sql
```

**Hasil yang Diharapkan:**  
Database engine mengeksekusi instruksi SQL dengan sukses dan menampilkan result-set atau status konfirmasi data yang sesuai.

**Screenshot Hasil Eksekusi:**

![Hasil eksekusi 250_database_audit_logging.sql](output/250_database_audit_logging.png)

---

## Ringkasan Modul
Modul 15 memberikan wawasan tata kelola keamanan basis data yang memenuhi standar enterprise dan perlindungan privasi data.

Seluruh submodul di atas saling melengkapi untuk membentuk pemahaman terstruktur yang bertahap, mulai dari konsep fundamental hingga implementasi praktis yang siap pakai di lingkungan kerja nyata.
