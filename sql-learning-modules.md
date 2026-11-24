# Portfolio Project Data — SQL Learning Modules

- **Category:** `code-learning` (`Code Learning`)
- **Accent Color:** `orange`
- **Target Assets Folder:** `public/images/projects/sql_learning_modules/`
- **Required Local Images:** `banner.webp` ONLY

## TypeScript Data (`ProjectCaseStudy`)

```typescript
{
  "id": "sql-learning-modules",
  "code": "PRO-51 // CL-07",
  "title": "SQL Learning Modules",
  "category": "code-learning",
  "categoryLabel": "Code Learning",
  "year": "2025",
  "status": "Completed",
  "accentColor": "orange",
  "repoUrl": "https://github.com/weztcy/SQL-Learning-Modules",
  "license": "MIT License",
  "banner": "/images/projects/sql_learning_modules/banner.webp",
  "summary": "Progressive 18-module SQL curriculum with 300 executable SQLite scripts, Chinook relational datasets, and 20 applied database capstones.",
  "codeLearningDescription": "A progressive 18-module relational SQL curriculum featuring 300 executable scripts on the Chinook SQLite database. Learners advance from SELECT syntax, joins, CTEs, and ACID transactions to window functions, triggers, EXPLAIN tuning, JSON cleaning, and 20 applied capstones.",
  "architectureSummary": "18 sequential SQL modules -> 300 commented scripts executed against Chinook SQLite -> verified PNG output captures and 20 capstone projects.",
  "techStack": [
    "SQL",
    "SQLite",
    "Python",
    "Chinook Database",
    "Markdown"
  ],
  "telemetryMatrix": {
    "projectType": "Code Learning Curriculum",
    "targetPlatform": "SQLite and Python CLI",
    "primaryDomain": "Relational SQL Engineering",
    "architecturePipeline": "18 Modules and 300 SQL Scripts",
    "testingAndAudit": "Verified",
    "projectStatus": "Completed",
    "projectYear": "2025"
  },
  "codeLearningProjectInfo": {
    "learningCategory": "Database & SQL Engineering Curriculum",
    "difficultyLevel": "Beginner to Advanced",
    "programmingLanguages": "SQL & Python"
  },
  "codeLearningObjectives": [
    {
      "title": "Relational Querying & Data Transformation",
      "description": "Write structured SELECT queries with multi-condition WHERE filtering, ORDER BY sorting, pagination, CASE expressions, NULL handling, scalar functions, and GROUP BY/HAVING aggregations.",
      "competencyCode": "COMP_01"
    },
    {
      "title": "Multi-Table Joins, Subqueries & Recursive CTEs",
      "description": "Navigate normalized relational schemas using INNER, LEFT, self, anti, semi, and bridge-table joins alongside correlated subqueries, recursive CTE hierarchies, and set operations.",
      "competencyCode": "COMP_02"
    },
    {
      "title": "Schema Modeling, Constraints & Transactional Safety",
      "description": "Engineer DDL schemas with PRIMARY/FOREIGN KEY, CHECK, and cascading referential rules, optimize reads via views and B-tree indexes, and protect consistency using ACID transactions and SAVEPOINTs.",
      "competencyCode": "COMP_03"
    },
    {
      "title": "Analytical Window Functions, Automation & Tuning",
      "description": "Compute running totals, moving averages, and Top-N rankings with OVER/PARTITION BY, automate validation via triggers, diagnose query plans with EXPLAIN QUERY PLAN, and process JSON pipelines.",
      "competencyCode": "COMP_04"
    }
  ],
  "codeLearningPrerequisites": [
    {
      "category": "Foundational Knowledge",
      "items": [
        "Basic familiarity with tabular data concepts (rows, columns, spreadsheets)",
        "Introductory comfort navigating folders and running terminal commands"
      ],
      "description": "No prior database administration or programming experience is required; Module 01 begins from SQL comments, literals, and basic column projection."
    },
    {
      "category": "Tooling Setup",
      "items": [
        "SQLite command-line shell or Python standard library sqlite3 module",
        "Local clone of the repository including Chinook_Sqlite.sqlite",
        "Optional SQLite GUI client or VS Code SQLite extension"
      ],
      "description": "All 300 scripts execute locally against the bundled Chinook_Sqlite.sqlite database without requiring external database servers or third-party dependencies."
    }
  ],
  "codeLearningCurriculumStructure": {
    "summary": "Structured across three progressive tiers spanning 18 modules and 300 standalone SQL scripts on Chinook SQLite. Learners move from basic SELECT projection, filtering, joins, and CTEs into DML/DDL schema design, ACID transactions, window analytics, triggers, EXPLAIN optimization, JSON pipelines, and 20 capstone projects.",
    "totalEstimatedHours": "75 Hours",
    "phases": [
      {
        "phaseNumber": "01",
        "phaseTitle": "SQL Foundations, Expressions & Aggregation",
        "difficulty": "Beginner",
        "moduleRange": "Modules 01 - 04",
        "topics": [
          "Query Anatomy & Projection",
          "WHERE Filtering & ORDER BY Pagination",
          "CASE, COALESCE, String & Date Functions",
          "GROUP BY, HAVING & Multidimensional Aggregation"
        ]
      },
      {
        "phaseNumber": "02",
        "phaseTitle": "Relational Joins, Schema Design & Transactions",
        "difficulty": "Intermediate",
        "moduleRange": "Modules 05 - 11",
        "topics": [
          "Multi-Table Joins & Anti/Semi-Joins",
          "Subqueries, Recursive CTEs & Set Operators",
          "DML Operations, DDL Schemas & Referential Constraints",
          "Views, B-Tree Indexes, ACID & Concurrency"
        ]
      },
      {
        "phaseNumber": "03",
        "phaseTitle": "Window Analytics, Automation, Tuning & Capstones",
        "difficulty": "Advanced",
        "moduleRange": "Modules 12 - 18",
        "topics": [
          "Window Functions & Period-over-Period Analytics",
          "Procedural Patterns, Triggers & Access Control",
          "EXPLAIN QUERY PLAN & SARGable Optimization",
          "CSV/JSON Pipelines, Data Cleaning & 20 SQL Capstones"
        ]
      }
    ]
  },
  "codeLearningModules": [
    {
      "id": "mod-01",
      "moduleNumber": "01",
      "title": "Introduction to SQL & Query Structure",
      "description": "Introduces SQL syntax conventions, comments, literals, system dates, column projection, aliases, DISTINCT, schema qualification, NULL basics, and case sensitivity.",
      "submoduleCount": 15,
      "difficulty": "Beginner",
      "keyTopics": ["SQL Comments", "SELECT Projection", "Column & Table Aliases", "DISTINCT", "NULL Basics"],
      "sourceFilesCount": 15,
      "estimatedHours": "3 Hours"
    },
    {
      "id": "mod-02",
      "moduleNumber": "02",
      "title": "SELECT, Filtering, and Sorting",
      "description": "Covers precision row filtering with WHERE, comparison and logical operators, BETWEEN, IN/NOT IN, LIKE wildcards, IS NULL, multi-column ORDER BY, and LIMIT/OFFSET pagination.",
      "submoduleCount": 20,
      "difficulty": "Beginner",
      "keyTopics": ["WHERE Filtering", "LIKE Wildcards", "Three-Valued NULL Logic", "ORDER BY", "LIMIT & OFFSET"],
      "sourceFilesCount": 20,
      "estimatedHours": "4 Hours"
    },
    {
      "id": "mod-03",
      "moduleNumber": "03",
      "title": "SQL Expressions & Built-in Functions",
      "description": "Demonstrates row-level data transformations using CASE expressions, COALESCE, NULLIF, CAST/CONVERT, string manipulation, numeric math functions, and date arithmetic.",
      "submoduleCount": 20,
      "difficulty": "Beginner",
      "keyTopics": ["CASE Expressions", "COALESCE & NULLIF", "CAST Conversion", "String Functions", "Date Arithmetic"],
      "sourceFilesCount": 20,
      "estimatedHours": "4 Hours"
    },
    {
      "id": "mod-04",
      "moduleNumber": "04",
      "title": "Data Aggregation & Grouping",
      "description": "Focuses on summarizing relational datasets with COUNT, SUM, AVG, MIN, MAX, GROUP BY, HAVING vs. WHERE filtering, conditional aggregation, and ROLLUP/CUBE/GROUPING SETS.",
      "submoduleCount": 15,
      "difficulty": "Beginner",
      "keyTopics": ["Aggregate Functions", "GROUP BY", "HAVING Clause", "Conditional Aggregation", "GROUPING SETS"],
      "sourceFilesCount": 15,
      "estimatedHours": "3 Hours"
    },
    {
      "id": "mod-05",
      "moduleNumber": "05",
      "title": "Joins & Table Relationships",
      "description": "Explores relational table combinations across INNER, LEFT/RIGHT/FULL OUTER, CROSS, self, natural, non-equi, anti/semi, derived-table, and many-to-many bridge joins.",
      "submoduleCount": 20,
      "difficulty": "Intermediate",
      "keyTopics": ["INNER & OUTER Joins", "Self Join", "Anti-Join & Semi-Join", "Bridge Table Joins", "Derived Tables"],
      "sourceFilesCount": 20,
      "estimatedHours": "5 Hours"
    },
    {
      "id": "mod-06",
      "moduleNumber": "06",
      "title": "Subqueries, CTEs, and Set Operations",
      "description": "Teaches scalar, multi-row, and correlated subqueries, EXISTS/NOT EXISTS, single and chained CTEs, recursive hierarchical CTEs, lateral joins, and UNION/INTERSECT/EXCEPT.",
      "submoduleCount": 20,
      "difficulty": "Intermediate",
      "keyTopics": ["Correlated Subqueries", "EXISTS Operator", "CTEs & Recursive CTEs", "UNION & INTERSECT", "EXCEPT"],
      "sourceFilesCount": 20,
      "estimatedHours": "5 Hours"
    },
    {
      "id": "mod-07",
      "moduleNumber": "07",
      "title": "Data Manipulation Language (DML)",
      "description": "Covers data modification workflows including single/multi-row INSERT, INSERT SELECT, conditional UPDATE with CASE, DELETE deduplication, UPSERT/MERGE patterns, and RETURNING.",
      "submoduleCount": 20,
      "difficulty": "Intermediate",
      "keyTopics": ["INSERT & Bulk Insert", "Conditional UPDATE", "Duplicate Deletion", "UPSERT & MERGE", "RETURNING Clause"],
      "sourceFilesCount": 20,
      "estimatedHours": "4 Hours"
    },
    {
      "id": "mod-08",
      "moduleNumber": "08",
      "title": "DDL & Database Structure",
      "description": "Addresses schema engineering using CREATE TABLE, exact numeric/text/temporal/BLOB types, ALTER TABLE evolution, temporary tables, CTAS, and auto-increment identifiers.",
      "submoduleCount": 20,
      "difficulty": "Intermediate",
      "keyTopics": ["CREATE & ALTER TABLE", "SQL Data Types", "Temporary Tables", "CTAS", "Auto-Increment Keys"],
      "sourceFilesCount": 20,
      "estimatedHours": "4 Hours"
    },
    {
      "id": "mod-09",
      "moduleNumber": "09",
      "title": "Constraints & Database Relationships",
      "description": "Enforces data integrity with PRIMARY KEY, FOREIGN KEY, UNIQUE, NOT NULL, CHECK, DEFAULT, composite keys, and CASCADE/RESTRICT/SET NULL actions across 1:1, 1:N, and N:M models.",
      "submoduleCount": 15,
      "difficulty": "Intermediate",
      "keyTopics": ["Primary & Foreign Keys", "CHECK & UNIQUE", "Composite Keys", "ON DELETE CASCADE", "1:1, 1:N & N:M Modeling"],
      "sourceFilesCount": 15,
      "estimatedHours": "4 Hours"
    },
    {
      "id": "mod-10",
      "moduleNumber": "10",
      "title": "Views & Indexes",
      "description": "Implements query abstraction through standard and updatable views alongside B-tree indexing strategies including unique, composite, partial, expression, and covering indexes.",
      "submoduleCount": 15,
      "difficulty": "Intermediate",
      "keyTopics": ["Standard & Updatable Views", "B-Tree Indexes", "Composite & Partial Indexes", "Covering Indexes", "Materialized Views"],
      "sourceFilesCount": 15,
      "estimatedHours": "4 Hours"
    },
    {
      "id": "mod-11",
      "moduleNumber": "11",
      "title": "Transactions & Concurrency",
      "description": "Explains transaction boundaries (BEGIN, COMMIT, ROLLBACK, SAVEPOINT), ACID guarantees, isolation levels, read anomalies, row/table locking, and deadlock prevention.",
      "submoduleCount": 15,
      "difficulty": "Intermediate",
      "keyTopics": ["ACID Properties", "SAVEPOINT Rollbacks", "Isolation Levels", "Concurrency Anomalies", "Locking & Deadlocks"],
      "sourceFilesCount": 15,
      "estimatedHours": "4 Hours"
    },
    {
      "id": "mod-12",
      "moduleNumber": "12",
      "title": "Window Functions & Data Analysis",
      "description": "Explores analytical windowing via OVER, PARTITION BY, ROW_NUMBER, RANK, DENSE_RANK, NTILE, LAG/LEAD, FIRST/LAST_VALUE, running totals, moving averages, and Top-N per group.",
      "submoduleCount": 20,
      "difficulty": "Advanced",
      "keyTopics": ["OVER & PARTITION BY", "Ranking Functions", "LAG & LEAD", "Running Totals & Moving Averages", "ROWS vs. RANGE Frames"],
      "sourceFilesCount": 20,
      "estimatedHours": "6 Hours"
    },
    {
      "id": "mod-13",
      "moduleNumber": "13",
      "title": "Stored Procedures & Functions",
      "description": "Covers modular procedural database programming patterns across SQLite and RDBMS dialects: stored procedures, IN/OUT parameters, scalar/table functions, control flow, and dynamic SQL.",
      "submoduleCount": 15,
      "difficulty": "Advanced",
      "keyTopics": ["Stored Procedures", "Scalar & Table Functions", "Conditional Control Flow", "Exception Handling", "Dynamic SQL"],
      "sourceFilesCount": 15,
      "estimatedHours": "4 Hours"
    },
    {
      "id": "mod-14",
      "moduleNumber": "14",
      "title": "Triggers & Database Automation",
      "description": "Automates event-driven database rules with BEFORE/AFTER INSERT, UPDATE, and DELETE row-level triggers, RAISE(ABORT) validation, audit logging, and cascade handling.",
      "submoduleCount": 10,
      "difficulty": "Advanced",
      "keyTopics": ["BEFORE/AFTER Triggers", "Input Validation Triggers", "Audit Log Automation", "Trigger Cascades", "Trigger Lifecycle"],
      "sourceFilesCount": 10,
      "estimatedHours": "3 Hours"
    },
    {
      "id": "mod-15",
      "moduleNumber": "15",
      "title": "Database Security & Access Control",
      "description": "Examines user management, GRANT/REVOKE privileges, Role-Based Access Control (RBAC), least-privilege architecture, column/row-level access, SQLite PRAGMA modes, and security auditing.",
      "submoduleCount": 10,
      "difficulty": "Advanced",
      "keyTopics": ["Users & Privileges", "RBAC Architecture", "Least Privilege", "Column & Row Security", "Security Audit Logs"],
      "sourceFilesCount": 10,
      "estimatedHours": "3 Hours"
    },
    {
      "id": "mod-16",
      "moduleNumber": "16",
      "title": "Query Optimization & Performance",
      "description": "Diagnoses slow queries using EXPLAIN QUERY PLAN, contrasts sequential vs. index scans, optimizes composite index ordering, enforces SARGable predicates, and applies keyset pagination.",
      "submoduleCount": 15,
      "difficulty": "Advanced",
      "keyTopics": ["EXPLAIN QUERY PLAN", "Index Selectivity", "SARGable Predicates", "Keyset Pagination", "Query Rewriting"],
      "sourceFilesCount": 15,
      "estimatedHours": "4 Hours"
    },
    {
      "id": "mod-17",
      "moduleNumber": "17",
      "title": "Import, Export, JSON, and Data Cleaning",
      "description": "Builds data integration and hygiene workflows covering CSV staging, json_valid/json_extract document queries, timezone normalization, NULL/duplicate cleansing, and migration checks.",
      "submoduleCount": 15,
      "difficulty": "Advanced",
      "keyTopics": ["CSV Import/Export", "JSON Storage & Extraction", "Data Deduplication", "Text Normalization", "Data Quality Audits"],
      "sourceFilesCount": 15,
      "estimatedHours": "4 Hours"
    },
    {
      "id": "mod-18",
      "moduleNumber": "18",
      "title": "Practical SQL Projects",
      "description": "Integrates full-stack SQL skills across 20 applied projects including academic, library, inventory, POS, e-commerce, HR, Chinook sales, RFM segmentation, star schema, and ETL capstones.",
      "submoduleCount": 20,
      "difficulty": "Advanced",
      "keyTopics": ["Transactional Schemas", "RFM Segmentation", "OLAP Star Schema", "ETL Staging", "Comprehensive Capstone"],
      "sourceFilesCount": 20,
      "estimatedHours": "7 Hours"
    }
  ],
  "codeLearningPracticalProjects": [
    {
      "title": "Academic Student & GPA Database System",
      "description": "Models normalized student and exam grade tables with foreign key constraints and computes weighted GPA summaries per student using multi-table INNER JOIN and ROUND aggregation.",
      "highlights": [
        "TEMP table schema with TEXT primary keys and foreign key references",
        "Weighted credit-hour GPA computation via SUM(SKS * BobotNilai) / SUM(SKS)"
      ],
      "coreScope": "DDL schema creation, sample seeding, and weighted academic KPI aggregation (281_student_database_project.sql)",
      "trackTag": "Schema Capstone",
      "tier": "Core",
      "difficulty": "Intermediate",
      "estimatedTime": "45 Mins",
      "architecturalConstraints": [
        "Uses TEMP tables to preserve the underlying Chinook_Sqlite.sqlite catalog",
        "Enforces relational linkage between Mahasiswa and NilaiUjian"
      ]
    },
    {
      "title": "Chinook Digital Music Store & RFM Customer Segmentation",
      "description": "Combines multi-table catalog joins and RFM (Recency, Frequency, Monetary) scoring to identify top-earning artists and classify customers into Champions, Loyal, and Potential tiers.",
      "highlights": [
        "4-table join pipeline linking Artist, Album, Track, and InvoiceLine",
        "Customer tiering via COUNT(InvoiceId), SUM(Total), MAX(InvoiceDate), and CASE"
      ],
      "coreScope": "Revenue attribution and customer lifecycle segmentation on real Chinook sales data (288 & 290)",
      "trackTag": "Analytics Lab",
      "tier": "Core",
      "difficulty": "Intermediate",
      "estimatedTime": "60 Mins",
      "architecturalConstraints": [
        "Executes read-only analytical aggregations across 412 invoices and 2,240 line items",
        "Requires exact grouping keys to prevent duplicate revenue counting"
      ]
    },
    {
      "title": "OLAP Star Schema & ETL Staging Pipeline",
      "description": "Constructs dimensional DimCustomer and DimTrack tables feeding a central FactSales table alongside an Extract-Transform staging pipeline classifying high-value vs. standard invoices.",
      "highlights": [
        "Fact-and-dimension modeling with surrogate keys and analytical revenue rollups",
        "Automated staging table transformation filtering positive-value invoices into sales tiers"
      ],
      "coreScope": "Data warehouse dimensional design and SQL-based ETL staging (292 & 293)",
      "trackTag": "Data Engineering",
      "tier": "Advanced",
      "difficulty": "Advanced",
      "estimatedTime": "75 Mins",
      "architecturalConstraints": [
        "Separates dimensional attributes from numeric measures in FactSales",
        "Filters invalid zero/negative transactions during staging extraction"
      ]
    },
    {
      "title": "Database Audit, RBAC & Transaction Order Processing",
      "description": "Implements role-based access simulation, change-audit logging structures, and atomic order-processing transactions ensuring consistent multi-step state updates.",
      "highlights": [
        "Least-privilege role mapping and audit trail capture workflows",
        "Transactional order fulfillment preventing partial updates on failure"
      ],
      "coreScope": "Operational database governance, security modeling, and ACID execution (294, 295 & 296)",
      "trackTag": "Systems Reliability",
      "tier": "Advanced",
      "difficulty": "Advanced",
      "estimatedTime": "75 Mins",
      "architecturalConstraints": [
        "Maintains atomic commit/rollback boundaries during order processing",
        "Adapts server-side RBAC patterns cleanly within SQLite session constraints"
      ]
    },
    {
      "title": "Comprehensive Genre Market-Share Capstone",
      "description": "Unifies Common Table Expressions, 3-table catalog joins, DENSE_RANK window ranking, and scalar subquery denominators to calculate genre sales volume, revenue, and market share percentage.",
      "highlights": [
        "Modular RingkasanGenreToko CTE aggregating Track, Genre, and InvoiceLine",
        "Windowed DENSE_RANK ordering paired with percentage market-share calculation"
      ],
      "coreScope": "End-to-end analytical SQL integration across the full Chinook store dataset (300_comprehensive_database_project.sql)",
      "trackTag": "Final Capstone",
      "tier": "Advanced",
      "difficulty": "Advanced",
      "estimatedTime": "60 Mins",
      "architecturalConstraints": [
        "Combines CTEs, multi-table INNER JOINs, GROUP BY, and window functions in one query",
        "Preserves decimal precision using floating-point percentage division and ROUND"
      ]
    }
  ],
  "codeLearningOutcomes": [
    {
      "pillar": "Relational Querying & Analytical Fluency",
      "skills": [
        {
          "title": "Complex Multi-Table & Window Analytics",
          "description": "Confidently combine normalized tables, recursive CTEs, and window functions (ROW_NUMBER, LAG/LEAD, running totals) to answer multi-dimensional business questions."
        },
        {
          "title": "Data Cleaning & Semi-Structured JSON Handling",
          "description": "Validate, extract, and aggregate JSON documents alongside CSV staging tables while deduplicating records and normalizing inconsistent text and NULL values."
        }
      ]
    },
    {
      "pillar": "Database Engineering & Performance Tuning",
      "skills": [
        {
          "title": "Integrity-First Schema & Trigger Design",
          "description": "Model 1:1, 1:N, and N:M schemas enforced by primary/foreign keys, CHECK constraints, ACID transactions, and BEFORE/AFTER validation and audit triggers."
        },
        {
          "title": "Execution Plan Diagnosis & Query Optimization",
          "description": "Inspect query optimizer behavior via EXPLAIN QUERY PLAN, eliminate full-table scans with composite/covering indexes, and rewrite non-SARGable predicates."
        }
      ]
    }
  ],
  "codeLearningCurriculumSpecs": {
    "curriculumTrack": "Relational SQL Engineering",
    "primaryLanguage": "SQL",
    "executionRuntime": "SQLite and Python",
    "testVerification": "Captured Execution Outputs"
  },
  "codeLearningSupplementaryResources": [
    {
      "title": "Bundled Relational Database & Module Guides",
      "description": "Core dataset and per-module Markdown documentation accompanying all 300 executable SQL scripts.",
      "resources": [
        {
          "name": "Chinook_Sqlite.sqlite (11-Table Digital Music Store DB)",
          "type": "Reference Dataset",
          "format": "SQLITE"
        },
        {
          "name": "Per-Module Study Guides (module-01 to module-18/README.md)",
          "type": "Reference Guide",
          "format": "MD"
        }
      ]
    },
    {
      "title": "Verified Execution Result Captures",
      "description": "Individual terminal/result-set output screenshots paired 1-to-1 with every SQL script across all 18 modules.",
      "resources": [
        {
          "name": "Module Output Captures (300 PNG files across output/ folders)",
          "type": "Execution Output",
          "format": "PNG"
        }
      ]
    }
  ]
}
```
