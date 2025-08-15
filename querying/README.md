Week 1 Querying Part 1

0:00–4:13 — Getting started
 Notes:
  Spreadsheets are fine for small, single user tasks, but they break down 
when data grows, multiple people need access, or we need guaranteed 
correctness.
  Databases store data in tables with types and constraints to keep data 
consistent.
  We can query data with SQL to filter, sort, join, and compute results 
reproducibly.
  Core  will be ideas coming tables, primary keys, relationships, queries.

Why move from spreadsheets? 
Spreadsheets easily get messy (duplicate data, inconsistent formats, 
accidental edits).
Hard to enforce rules or relationships between sheets.
Collaboration leads to version conflicts; no single source of truth.
Performance and reliability issues for large data or frequent updates.
 Databases provide **schemas**, **constraints**, **indexes**, and 
transactions for integrity and speed.



4:13–6:59 terms
What is a database? 
  A structured collection of data organized into tables so it can be stored, 
retrieved, and managed efficiently.
What is a DBMS
  Software that stores the data, enforces rules  processes queries, handles 
concurrency security and recovery.

Other DBMS I’ve heard of
SQLite
MySQL / MariaDB
Microsoft SQL Server


6:59–8:44  DBMS differences
SQLite is embedded and MySQL/PostgreSQL are server-based (client connects 
over TCP).
Scale & Concurrency: Server DBMS handle more users and bigger workloads 
SQLite is great for single user or light concurrent access.
Features:PostgreSQL has rich types, advanced indexing, window functions; 
MySQL is widely used in web stacks; SQLite is zero-config and portable.
Use cases will be
  SQLite mobile apps, prototypes, local tools, teaching.  
  MySQL/PostgreSQL web apps, APIs, analytics workloads.  


8:44 — What is SQL?

SQL is a language to ask questions about data in tables—like selecting rows, 
joining tables, and updating records—so we can get exactly what we need.

And 
SQL (Structured Query Language) is the standard language to define, query, 
and manipulate data in a relational database.

8:44–12:25 
-What is a query?
  A formal request for data or action from the database, expressed in SQL.

  As a lightweight, file-based database embedded in apps (mobile/desktop), 
for education, quick prototypes, and local development. No server to run; 
just read/write a `.db` file.




