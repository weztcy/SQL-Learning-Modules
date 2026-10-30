# Kurikulum Lengkap SQL dan Database untuk Praktik

## 1. Database publik dan open-source untuk latihan SQL

Berikut sumber database yang direkomendasikan untuk digunakan sepanjang kurikulum.

[The SQL blueprint: Mastering entity relationship diagrams (ERD) - Lesson 1](https://images.openai.com/static-rsc-4/MGt_ShdXKGeGps1Ti2rl3T27x3IJ2QuqQoxawMrs-ggttfQKuHZ2EBXDWvQLPs_I4_HSnObN6pAxJGChZPDPVRgHdF8IqfVhuH-_h-VlFCdcTVP8hONCve1jO1cgBR7LMvlp-fV4HwFqX_oRXSAlX9vl6_u3B29KPpPvkN9dz3s?purpose=inline)

## 1. Chinook Database

Rekomendasi utama

Lisensi MIT · MySQL, PostgreSQL, SQLite, SQL Server, Oracle, DB2

Database toko musik digital dengan tabel pelanggan, artis, album, lagu, faktur, dan transaksi. Cocok untuk latihan `SELECT`, `JOIN`, agregasi, subquery, view, dan analisis penjualan. Tersedia skrip SQL untuk berbagai DBMS serta file database SQLite siap pakai.&#x20;

[image](https://www.google.com/s2/favicons?domain=https://github.com\&sz=32)

GitHub

+2

[Unduh Chinook melalui GitHub Releases](https://github.com/lerocha/chinook-database/releases?utm_source=chatgpt.com)



[MySQL 5.5 Reference Manual - 16.6.8.4. Documenting the sakila Database • doc.Docs.sk](https://images.openai.com/static-rsc-4/jp52fCunKqVgZGwOHP1FPaPwjKlZGnI3TfZE8mHEyuGV_s68DPEYdi29I6OdC3NThgXZLTGmp-p9GboBacD8MwVKMcq_a3RIwWF-AqoO-wFnVMuu58zA6u0DQtpNNdesJ0-eoy6DOSOBLWRXO_6kJMco46ALVCSwU-EhA2Hr78A?purpose=inline)

## 2. Sakila Sample Database

Lisensi New BSD untuk skrip skema dan data · MySQL

Database penyewaan film yang mencakup pelanggan, film, inventaris, penyewaan, pembayaran, view, stored procedure, fungsi, dan trigger. Sangat cocok untuk materi SQL menengah hingga lanjutan.&#x20;

[image](https://www.google.com/s2/favicons?domain=https://dev.mysql.com\&sz=32)

MySQL

+1

[Unduh Sakila dari MySQL](https://dev.mysql.com/doc/index-other.html?utm_source=chatgpt.com)



[Sample dataset for PostgreSQL®: Pagila | Aiven docs](https://images.openai.com/static-rsc-4/Tn8bDIvtG5qb2ABX2UJ8xP1gwBoZ382rKwH6T3SnyTlfFAe_UFvgEkiI6axwh4RBAovT2cuNnLjWd8KWQaY4cIFc_wcv7aeQGE5YIjH5bYAA9pzqY9zjx0BfrCgjOC3JMphWtsRxrqFwrx5oRD3QwQJ1kTStt2be3ALr2ma2csU?purpose=inline)

## 3. Pagila Database

Lisensi PostgreSQL · PostgreSQL

Alternatif Sakila yang disesuaikan untuk PostgreSQL. Tersedia skrip skema dan data, termasuk contoh fitur khas PostgreSQL. Cocok untuk latihan fungsi, trigger, transaksi, indeks, dan query lanjutan.&#x20;

[image](https://www.google.com/s2/favicons?domain=https://github.com\&sz=32)

GitHub

+1

[Unduh Pagila melalui GitHub](https://github.com/xzilla/pagila?utm_source=chatgpt.com)



[Epic AdventureWorks Part 2 - The Model](https://images.openai.com/static-rsc-4/ymobRM2RKyGbZLPZlxsx0cFmV4VJFK9XNY5kolPYwrhhOUTkYLkJKB9yjP9GeD4-FwbkzgcWwavoxkHZFxQdDtZbK8sKgHyaC28-t8dU-ExUhfnaeKy10ANhgBTRhPxHT9Yu7pBklBFFqNNbIkllvdg0mC6FvP1rvz3dSNT6IZo?purpose=inline)

## 4. AdventureWorks

Microsoft sample database · SQL Server

Database perusahaan simulasi yang mencakup penjualan, pelanggan, produk, pembelian, dan produksi. Tersedia varian OLTP, Data Warehouse, dan versi ringan. Ini merupakan database sampel yang dapat diunduh, tetapi jangan menyamakannya dengan proyek yang seluruh komponennya berlisensi open-source.&#x20;

[image](https://www.google.com/s2/favicons?domain=https://learn.microsoft.com\&sz=32)

Microsoft Learn

[Unduh AdventureWorks melalui Microsoft Learn](https://learn.microsoft.com/id-id/sql/samples/adventureworks-install-configure?view=sql-server-ver17\&utm_source=chatgpt.com)



[SQL Query Corner: Netflix Dataset Analysis Project | by Ini Apinke Afolabi | Medium](https://images.openai.com/static-rsc-4/E6upovyEV83dm4VmZGiYjrlS6fXScAiWGmjqLXqWexWjdGGZ_q0Vshb9gmghOfRcWZJmGtQS8-9kv9copaeOkKA1P_cOZLB3nTuGfl988rXEQeg-u9PGyybMODV-JPb1GTJ_RFsNydIIQAlgiaYyzrc5PDgeYfkApE6tJLQ4t6k?purpose=inline)

## 5. PostgreSQL Sample Databases

Repositori publik · PostgreSQL

Kumpulan database dan dataset tambahan, termasuk Pagila, data Netflix, dan data Titanic. Berguna untuk latihan analisis data, agregasi, pengolahan data, serta query dengan struktur berbeda. Periksa lisensi masing-masing dataset sebelum redistribusi.&#x20;

[image](https://www.google.com/s2/favicons?domain=https://github.com\&sz=32)

GitHub

[Unduh database dari GitHub](https://github.com/neondatabase/postgres-sample-dbs?utm_source=chatgpt.com)



### Database mana yang sebaiknya digunakan?

| Tahap pembelajaran                        | Database yang disarankan    |
| ----------------------------------------- | --------------------------- |
| Pemula, query dasar sampai `JOIN`         | Chinook                     |
| SQL menengah dan lanjutan                 | Chinook dan Sakila/Pagila   |
| Stored procedure, trigger, dan fitur DBMS | Sakila atau Pagila          |
| SQL Server dan analisis perusahaan        | AdventureWorks              |
| Analisis data dengan dataset tambahan     | PostgreSQL Sample Databases |

Rekomendasi saya: mulai dengan Chinook karena tersedia dalam berbagai format DBMS dan memiliki lisensi MIT. Gunakan file SQLite untuk memulai dengan cepat, kemudian gunakan skrip yang sesuai ketika beralih ke MySQL atau PostgreSQL.&#x20;

[image](https://www.google.com/s2/favicons?domain=https://github.com\&sz=32)

GitHub

+2



Perlu diperhatikan bahwa SQL memiliki beberapa dialek. Sintaks inti relatif umum, tetapi tipe data, fungsi tanggal, auto-increment, stored procedure, dan beberapa fitur lanjutan berbeda antara MySQL, PostgreSQL, SQLite, dan SQL Server. Karena itu, kurikulum berikut memisahkan konsep SQL umum dari materi khusus DBMS.

# 2. Kurikulum lengkap SQL

Standar penamaan file menggunakan tiga digit agar seluruh materi tersusun secara konsisten. Materi umum menggunakan SQL relasional, sedangkan fitur khusus akan ditandai sesuai DBMS, misalnya MySQL, PostgreSQL, SQLite, atau SQL Server.

## MODUL 1. Pengenalan SQL dan Struktur Query

Level 1 · Fundamental

1. `001_sql_comments.sql` : Komentar SQL
2. `002_sql_statement_basics.sql` : Struktur statement SQL
3. `003_select_literal_values.sql` : Menampilkan nilai literal dengan `SELECT`
4. `004_select_current_date.sql` : Mengambil tanggal saat ini
5. `005_select_current_timestamp.sql` : Mengambil timestamp saat ini
6. `006_select_columns.sql` : Memilih kolom tabel
7. `007_select_all_columns.sql` : Memilih seluruh kolom dengan `SELECT *`
8. `008_column_aliases.sql` : Alias kolom dengan `AS`
9. `009_table_aliases.sql` : Alias tabel
10. `010_distinct_values.sql` : Mengambil nilai unik dengan `DISTINCT`
11. `011_qualified_column_names.sql` : Nama kolom berkualifikasi
12. `012_schema_qualified_names.sql` : Referensi schema dan tabel
13. `013_sql_null_basics.sql` : Nilai `NULL`
14. `014_sql_case_insensitivity.sql` : Case sensitivity pada identifier dan nilai teks
15. `015_sql_client_execution.sql` : Menjalankan skrip SQL melalui client database

## MODUL 2. SELECT, Filtering, dan Sorting

16. `016_where_clause.sql` : Klausa `WHERE`
17. `017_comparison_operators.sql` : Operator perbandingan
18. `018_logical_operators.sql` : Operator `AND`, `OR`, dan `NOT`
19. `019_between_operator.sql` : Operator `BETWEEN`
20. `020_in_operator.sql` : Operator `IN`
21. `021_not_in_operator.sql` : Operator `NOT IN`
22. `022_like_operator.sql` : Operator `LIKE`
23. `023_wildcard_patterns.sql` : Wildcard `%` dan `_`
24. `024_escape_like_patterns.sql` : Escape karakter pada pola `LIKE`
25. `025_is_null_operator.sql` : Pemeriksaan `IS NULL`
26. `026_is_not_null.sql` : Pemeriksaan `IS NOT NULL`
27. `027_order_by_ascending.sql` : Pengurutan `ASC`
28. `028_order_by_descending.sql` : Pengurutan `DESC`
29. `029_order_by_multiple_columns.sql` : Pengurutan berdasarkan beberapa kolom
30. `030_order_by_expressions.sql` : Pengurutan berdasarkan ekspresi
31. `031_limit_rows.sql` : Pembatasan jumlah baris dengan `LIMIT`
32. `032_offset_pagination.sql` : Pagination dengan `OFFSET`
33. `033_fetch_first_rows.sql` : Pembatasan baris dengan `FETCH FIRST`
34. `034_top_rows_sqlserver.sql` : Pembatasan baris menggunakan `TOP` pada SQL Server
35. `035_filtering_and_sorting_combined.sql` : Kombinasi filtering dan sorting

## MODUL 3. Ekspresi dan Fungsi SQL

36. `036_case_expression.sql` : Ekspresi `CASE`
37. `037_case_multiple_conditions.sql` : `CASE` dengan banyak kondisi
38. `038_coalesce_function.sql` : Fungsi `COALESCE`
39. `039_nullif_function.sql` : Fungsi `NULLIF`
40. `040_cast_conversion.sql` : Konversi tipe data dengan `CAST`
41. `041_convert_function.sql` : Konversi tipe data dengan `CONVERT`
42. `042_string_concatenation.sql` : Penggabungan string
43. `043_concat_function.sql` : Fungsi `CONCAT`
44. `044_upper_lower_functions.sql` : Fungsi `UPPER` dan `LOWER`
45. `045_trim_functions.sql` : Fungsi `TRIM`
46. `046_length_functions.sql` : Fungsi panjang string
47. `047_substring_function.sql` : Fungsi `SUBSTRING`
48. `048_replace_function.sql` : Fungsi `REPLACE`
49. `049_position_search_functions.sql` : Pencarian posisi substring
50. `050_round_function.sql` : Fungsi `ROUND`
51. `051_abs_function.sql` : Fungsi `ABS`
52. `052_ceil_floor_functions.sql` : Fungsi pembulatan ke atas dan ke bawah
53. `053_modulo_function.sql` : Operasi modulo
54. `054_date_extraction.sql` : Ekstraksi bagian tanggal
55. `055_date_arithmetic.sql` : Operasi aritmetika tanggal

## MODUL 4. Agregasi dan Pengelompokan Data

56. `056_count_function.sql` : Fungsi `COUNT`
57. `057_count_distinct.sql` : `COUNT(DISTINCT ...)`
58. `058_sum_function.sql` : Fungsi `SUM`
59. `059_avg_function.sql` : Fungsi `AVG`
60. `060_min_max_functions.sql` : Fungsi `MIN` dan `MAX`
61. `061_group_by_basic.sql` : Klausa `GROUP BY`
62. `062_group_by_multiple_columns.sql` : Pengelompokan beberapa kolom
63. `063_having_clause.sql` : Klausa `HAVING`
64. `064_where_vs_having.sql` : Perbedaan `WHERE` dan `HAVING`
65. `065_conditional_aggregation.sql` : Agregasi bersyarat
66. `066_aggregate_null_handling.sql` : Penanganan `NULL` dalam agregasi
67. `067_group_by_expressions.sql` : Pengelompokan berdasarkan ekspresi
68. `068_rollup_aggregation.sql` : Agregasi `ROLLUP`
69. `069_cube_aggregation.sql` : Agregasi `CUBE`
70. `070_grouping_sets.sql` : `GROUPING SETS`

## MODUL 5. JOIN dan Relasi Antartabel

71. `071_inner_join.sql` : `INNER JOIN`
72. `072_left_join.sql` : `LEFT JOIN`
73. `073_right_join.sql` : `RIGHT JOIN`
74. `074_full_outer_join.sql` : `FULL OUTER JOIN`
75. `075_cross_join.sql` : `CROSS JOIN`
76. `076_self_join.sql` : Self join
77. `077_natural_join.sql` : `NATURAL JOIN`
78. `078_non_equi_join.sql` : Non-equi join
79. `079_join_multiple_tables.sql` : Join beberapa tabel
80. `080_join_three_tables.sql` : Join tiga tabel
81. `081_composite_key_join.sql` : Join dengan composite key
82. `082_join_conditions_on.sql` : Kondisi join dengan `ON`
83. `083_join_using_clause.sql` : Klausa `USING`
84. `084_join_filter_placement.sql` : Penempatan filter dalam join
85. `085_anti_join.sql` : Pola anti join
86. `086_semi_join.sql` : Pola semi join
87. `087_join_with_aggregation.sql` : Join dengan agregasi
88. `088_join_duplicate_rows.sql` : Identifikasi duplikasi akibat join
89. `089_bridge_table_join.sql` : Join melalui bridge table
90. `090_join_with_derived_table.sql` : Join dengan derived table

## MODUL 6. Subquery, CTE, dan Set Operations

91. `091_scalar_subquery.sql` : Scalar subquery
92. `092_single_row_subquery.sql` : Subquery satu baris
93. `093_multirow_subquery.sql` : Subquery banyak baris
94. `094_correlated_subquery.sql` : Correlated subquery
95. `095_exists_operator.sql` : Operator `EXISTS`
96. `096_not_exists_operator.sql` : Operator `NOT EXISTS`
97. `097_any_some_operator.sql` : Operator `ANY` dan `SOME`
98. `098_all_operator.sql` : Operator `ALL`
99. `099_subquery_in_from.sql` : Subquery pada `FROM`
100. `100_subquery_in_select.sql` : Subquery pada `SELECT`
101. `101_cte_basic.sql` : Common Table Expression
102. `102_multiple_ctes.sql` : Multiple CTE
103. `103_recursive_cte.sql` : Recursive CTE
104. `104_union_operator.sql` : Operator `UNION`
105. `105_union_all.sql` : Operator `UNION ALL`
106. `106_intersect_operator.sql` : Operator `INTERSECT`
107. `107_except_operator.sql` : Operator `EXCEPT`
108. `108_cte_vs_subquery.sql` : Perbandingan CTE dan subquery
109. `109_lateral_join.sql` : `LATERAL JOIN` pada DBMS yang mendukung
110. `110_recursive_hierarchy.sql` : Query hierarki rekursif

## MODUL 7. Manipulasi Data atau DML

111. `111_insert_single_row.sql` : `INSERT` satu baris
112. `112_insert_multiple_rows.sql` : `INSERT` banyak baris
113. `113_insert_selected_columns.sql` : Insert kolom tertentu
114. `114_insert_default_values.sql` : Insert nilai default
115. `115_insert_select.sql` : `INSERT INTO ... SELECT`
116. `116_update_basic.sql` : `UPDATE`
117. `117_update_where.sql` : Update dengan kondisi
118. `118_update_multiple_columns.sql` : Update beberapa kolom
119. `119_update_with_case.sql` : Update menggunakan `CASE`
120. `120_delete_basic.sql` : `DELETE`
121. `121_delete_where.sql` : Delete dengan kondisi
122. `122_delete_duplicates.sql` : Menghapus duplikasi
123. `123_truncate_table.sql` : `TRUNCATE TABLE`
124. `124_upsert_postgresql.sql` : Upsert dengan `ON CONFLICT`
125. `125_upsert_mysql.sql` : Upsert dengan `ON DUPLICATE KEY UPDATE`
126. `126_merge_statement.sql` : `MERGE` pada DBMS yang mendukung
127. `127_returning_clause.sql` : `RETURNING` pada DBMS yang mendukung
128. `128_output_clause_sqlserver.sql` : Klausa `OUTPUT` SQL Server
129. `129_update_from_join.sql` : Update berdasarkan join
130. `130_bulk_insert.sql` : Bulk insert

## MODUL 8. DDL dan Struktur Database

131. `131_create_database.sql` : `CREATE DATABASE`
132. `132_use_database.sql` : Memilih database pada MySQL
133. `133_create_schema.sql` : `CREATE SCHEMA`
134. `134_create_table.sql` : `CREATE TABLE`
135. `135_sql_data_types.sql` : Tipe data SQL
136. `136_integer_numeric_types.sql` : Tipe data integer dan numerik
137. `137_decimal_precision.sql` : Presisi `DECIMAL`
138. `138_character_data_types.sql` : Tipe data karakter
139. `139_date_time_data_types.sql` : Tipe data tanggal dan waktu
140. `140_binary_data_types.sql` : Tipe data biner
141. `141_alter_add_column.sql` : Menambahkan kolom dengan `ALTER TABLE`
142. `142_alter_modify_column.sql` : Mengubah definisi kolom
143. `143_alter_drop_column.sql` : Menghapus kolom
144. `144_rename_table.sql` : Mengganti nama tabel
145. `145_drop_table.sql` : `DROP TABLE`
146. `146_temporary_table.sql` : Temporary table
147. `147_create_table_as_select.sql` : Membuat tabel dari query
148. `148_auto_increment_mysql.sql` : `AUTO_INCREMENT` pada MySQL
149. `149_identity_column.sql` : Identity columns
150. `150_sequence_object.sql` : Sequence objects

## MODUL 9. Constraints dan Relasi Database

151. `151_primary_key.sql` : Primary key
152. `152_foreign_key.sql` : Foreign key
153. `153_unique_constraint.sql` : Unique constraint
154. `154_not_null_constraint.sql` : Not null constraint
155. `155_check_constraint.sql` : Check constraint
156. `156_default_constraint.sql` : Default constraint
157. `157_composite_primary_key.sql` : Composite primary key
158. `158_composite_foreign_key.sql` : Composite foreign key
159. `159_on_delete_cascade.sql` : `ON DELETE CASCADE`
160. `160_on_update_cascade.sql` : `ON UPDATE CASCADE`
161. `161_restrict_no_action.sql` : `RESTRICT` dan `NO ACTION`
162. `162_set_null_foreign_key.sql` : `ON DELETE SET NULL`
163. `163_one_to_one_relationship.sql` : Relasi one-to-one
164. `164_one_to_many_relationship.sql` : Relasi one-to-many
165. `165_many_to_many_relationship.sql` : Relasi many-to-many

## MODUL 10. Views dan Indexes

166. `166_create_view.sql` : Membuat view
167. `167_query_view.sql` : Query pada view
168. `168_replace_view.sql` : Mengubah definisi view
169. `169_updatable_view.sql` : Updatable view
170. `170_drop_view.sql` : Menghapus view
171. `171_create_index.sql` : Membuat index
172. `172_unique_index.sql` : Unique index
173. `173_composite_index.sql` : Composite index
174. `174_partial_index.sql` : Partial index
175. `175_expression_index.sql` : Expression index
176. `176_covering_index.sql` : Covering index
177. `177_drop_index.sql` : Menghapus index
178. `178_materialized_view.sql` : Materialized view
179. `179_refresh_materialized_view.sql` : Refresh materialized view
180. `180_view_vs_materialized_view.sql` : Perbandingan view dan materialized view

## MODUL 11. Transactions dan Concurrency

181. `181_begin_transaction.sql` : Memulai transaksi
182. `182_commit_transaction.sql` : `COMMIT`
183. `183_rollback_transaction.sql` : `ROLLBACK`
184. `184_savepoint_transaction.sql` : `SAVEPOINT`
185. `185_rollback_to_savepoint.sql` : Rollback ke savepoint
186. `186_acid_properties.sql` : Konsep ACID melalui eksperimen transaksi
187. `187_transaction_isolation.sql` : Isolation levels
188. `188_dirty_read.sql` : Eksperimen dirty read
189. `189_nonrepeatable_read.sql` : Eksperimen non-repeatable read
190. `190_phantom_read.sql` : Eksperimen phantom read
191. `191_row_level_locking.sql` : Row-level locking
192. `192_table_level_locking.sql` : Table-level locking
193. `193_deadlock_scenario.sql` : Simulasi deadlock
194. `194_autocommit_control.sql` : Pengaturan autocommit
195. `195_concurrent_updates.sql` : Update konkuren

## MODUL 12. Window Functions dan Analisis Data

196. `196_over_clause.sql` : Klausa `OVER`
197. `197_partition_by.sql` : `PARTITION BY`
198. `198_window_order_by.sql` : Pengurutan pada window
199. `199_row_number.sql` : Fungsi `ROW_NUMBER`
200. `200_rank_function.sql` : Fungsi `RANK`
201. `201_dense_rank.sql` : Fungsi `DENSE_RANK`
202. `202_ntile_function.sql` : Fungsi `NTILE`
203. `203_lag_function.sql` : Fungsi `LAG`
204. `204_lead_function.sql` : Fungsi `LEAD`
205. `205_first_value.sql` : Fungsi `FIRST_VALUE`
206. `206_last_value.sql` : Fungsi `LAST_VALUE`
207. `207_running_total.sql` : Running total
208. `208_moving_average.sql` : Moving average
209. `209_percent_rank.sql` : Fungsi `PERCENT_RANK`
210. `210_cume_dist.sql` : Fungsi `CUME_DIST`
211. `211_window_frame_rows.sql` : Window frame `ROWS`
212. `212_window_frame_range.sql` : Window frame `RANGE`
213. `213_top_n_per_group.sql` : Top N per grup
214. `214_deduplicate_with_row_number.sql` : Deduplication dengan window function
215. `215_period_over_period_analysis.sql` : Analisis perubahan ant periode

## MODUL 13. Stored Procedures dan Functions

216. `216_create_stored_procedure.sql` : Membuat stored procedure
217. `217_procedure_parameters.sql` : Parameter prosedur
218. `218_in_out_parameters.sql` : Parameter `IN`, `OUT`, dan `INOUT` pada DBMS yang mendukung
219. `219_create_sql_function.sql` : Membuat SQL function
220. `220_scalar_function.sql` : Scalar function
221. `221_table_valued_function.sql` : Table-valued function
222. `222_stored_variables.sql` : Variabel lokal pada routine
223. `223_conditional_procedure.sql` : Percabangan dalam stored procedure
224. `224_loop_in_procedure.sql` : Perulangan dalam stored procedure
225. `225_cursor_basic.sql` : Cursor
226. `226_exception_handling_routine.sql` : Penanganan exception pada routine
227. `227_dynamic_sql.sql` : Dynamic SQL
228. `228_return_codes.sql` : Return codes
229. `229_function_security_context.sql` : Konteks keamanan function
230. `230_stored_routine_testing.sql` : Pengujian stored routine

## MODUL 14. Triggers dan Otomatisasi Database

231. `231_before_insert_trigger.sql` : Trigger sebelum insert
232. `232_after_insert_trigger.sql` : Trigger setelah insert
233. `233_before_update_trigger.sql` : Trigger sebelum update
234. `234_after_update_trigger.sql` : Trigger setelah update
235. `235_after_delete_trigger.sql` : Trigger setelah delete
236. `236_row_level_trigger.sql` : Row-level trigger
237. `237_audit_log_trigger.sql` : Trigger untuk audit log
238. `238_data_validation_trigger.sql` : Validasi melalui trigger
239. `239_trigger_cascade_effects.sql` : Dampak berantai trigger
240. `240_disable_drop_trigger.sql` : Menonaktifkan dan menghapus trigger

## MODUL 15. Database Security dan Access Control

241. `241_create_database_user.sql` : Membuat user database
242. `242_grant_select_privilege.sql` : Memberikan hak `SELECT`
243. `243_grant_dml_privileges.sql` : Hak `INSERT`, `UPDATE`, dan `DELETE`
244. `244_revoke_privileges.sql` : Mencabut hak akses
245. `245_create_database_role.sql` : Membuat role
246. `246_role_privilege_assignment.sql` : Penetapan hak akses melalui role
247. `247_least_privilege_design.sql` : Prinsip least privilege
248. `248_column_level_access.sql` : Pembatasan akses kolom
249. `249_row_level_security.sql` : Row-level security
250. `250_database_audit_logging.sql` : Audit aktivitas database

## MODUL 16. Query Optimization dan Performance

251. `251_explain_query_plan.sql` : `EXPLAIN`
252. `252_explain_analyze.sql` : `EXPLAIN ANALYZE` pada DBMS yang mendukung
253. `253_sequential_vs_index_scan.sql` : Sequential scan dan index scan
254. `254_index_selectivity.sql` : Selectivity index
255. `255_sargable_queries.sql` : Penulisan query yang mendukung pemanfaatan index
256. `256_composite_index_order.sql` : Urutan kolom composite index
257. `257_avoid_select_star.sql` : Menghindari `SELECT *` jika tidak diperlukan
258. `258_query_pagination_optimization.sql` : Optimasi pagination
259. `259_join_performance.sql` : Analisis performa join
260. `260_subquery_optimization.sql` : Optimasi subquery
261. `261_correlated_query_performance.sql` : Analisis correlated query
262. `262_database_statistics.sql` : Statistik database
263. `263_analyze_table.sql` : Memperbarui statistik tabel
264. `264_query_rewriting.sql` : Query rewriting
265. `265_execution_plan_comparison.sql` : Perbandingan execution plan

## MODUL 17. Import, Export, JSON, dan Data Cleaning

266. `266_import_csv.sql` : Import data CSV
267. `267_export_csv.sql` : Export query ke CSV
268. `268_mysql_load_data.sql` : Import menggunakan `LOAD DATA` pada MySQL
269. `269_postgresql_copy.sql` : Import dan export menggunakan `COPY` pada PostgreSQL
270. `270_sqlserver_bulk_insert.sql` : Bulk import pada SQL Server
271. `271_json_storage.sql` : Penyimpanan JSON
272. `272_json_extract.sql` : Ekstraksi nilai JSON
273. `273_json_aggregation.sql` : Agregasi menjadi JSON
274. `274_date_timezone_conversion.sql` : Konversi tanggal dan zona waktu
275. `275_clean_null_values.sql` : Pembersihan nilai `NULL`
276. `276_find_duplicate_records.sql` : Identifikasi data duplikat
277. `277_normalize_text_values.sql` : Normalisasi nilai teks
278. `278_data_quality_checks.sql` : Pemeriksaan kualitas data
279. `279_database_backup_restore.sql` : Backup dan restore database
280. `280_data_migration.sql` : Migrasi data antartabel atau database

## MODUL 18. Proyek Praktik SQL

281. `281_student_database_project.sql` : Database mahasiswa dan nilai
282. `282_library_database_project.sql` : Database perpustakaan
283. `283_inventory_database_project.sql` : Database inventaris barang
284. `284_cashier_database_project.sql` : Database sistem kasir
285. `285_ecommerce_database_project.sql` : Database toko daring
286. `286_human_resources_database_project.sql` : Database sumber daya manusia
287. `287_sales_analysis_project.sql` : Analisis penjualan
288. `288_music_store_analysis_project.sql` : Analisis toko musik menggunakan Chinook
289. `289_film_rental_analysis_project.sql` : Analisis penyewaan film menggunakan Sakila atau Pagila
290. `290_customer_segmentation_project.sql` : Segmentasi pelanggan
291. `291_sales_dashboard_queries_project.sql` : Kumpulan query untuk dashboard penjualan
292. `292_data_warehouse_star_schema_project.sql` : Desain data warehouse star schema
293. `293_etl_staging_project.sql` : Proses staging dan transformasi data
294. `294_database_audit_project.sql` : Sistem audit perubahan data
295. `295_role_based_access_project.sql` : Implementasi akses berbasis role
296. `296_transaction_order_processing_project.sql` : Transaksi pemrosesan pesanan
297. `297_stored_procedure_business_logic_project.sql` : Business logic dengan stored procedure
298. `298_query_optimization_project.sql` : Optimasi query database
299. `299_cross_database_migration_project.sql` : Migrasi antardialek database
300. `300_comprehensive_database_project.sql` : Proyek database terpadu