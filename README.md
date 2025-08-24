# Git Workflow Instructions

## Step 1: Modify Your Files
- Make sure to have **auto-save** selected in your editor.
- Check the status of your files by running the following command:

```bash
git status
```

## Step 2: Stage Your Changes
- Stage all changes into your **local** repository:

```bash
git add *
```

- Alternatively, stage specific files by replacing `filename` with the name of the file:

```bash
git add filename
```

## Step 3: Commit Your Changes
- Commit the staged changes into your **local** repository with a descriptive commit message:

```bash
git commit -m "commit message"
```

## Step 4: Push Your Changes
- Push your commits from your **local** repository to your repository on **GitHub**:

```bash
git push
```

Week 1 Querying Part 1

 0:00–4:13 — Getting started
Notes:
  Spreadsheets are fine for small, singleuser tasks, but they break down with 
growth, multi user access, and when we need for sure  correctness.
  Databases store data in tables with types and constraints to keep data 
consistent.
   SQL lets us filter, sort, join, and compute reproducibly.
  Core ideas: tables, primary keys, relationships, queries.

Why move from spreadsheets? (my answer)
 Spreadsheets get messy. Hard to enforce rules or relationships.
Collaboration causes version conflicts one always has to close a file for 
another to work in
Databases provide schemas, constraints, indexes, transactions for integrity.

 4:13–6:59 — Terms
What is a database?
  A structured collection of data in tables.

What is a DBMS
  Software that stores, enforces rules, and processes queries.

Other DBMS I’ve heard of
SQLite
 Microsoft SQL Server

6:59–8:44 — DBMS differences
 SQLite is embedded single file, MySQL/PostgreSQL are serverbased.
Server DBMS handle more users & much bigger workloads.
PostgreSQL = advanced features MySQL = widely used in web stacks SQLite = 
portable & zero work to config.

8:44 — What is SQL?

My answer (before seeing it):
SQL is a language for speaking directly to the databases.
Given answer: 
SQL is the standard language to define, query, and manipulate relational 
databases.

8:44–12:25 — Query & SQLite
What is a query? 
  A formal request for data or action from the database, expressed in SQL.

Common way SQLite is used: 
  Lightweight, file based database in apps, prototypes, teaching. No server 
just a db file.

Questions I still have:
  When should I switch from SQLite to a server DBMS?

 Style notes (from 19:37)
 SQL keywords in UPPERCASE (SELECT, FROM, WHERE, LIMIT) for readability.
 Consistent quoting (video uses "double quotes" for identifiers).
 One clause per line so diffs are clean and queries are easy to scan.

 Questions I had (16:32–19:37)
Why do some examples show "double quotes" and some show 'single quotes'?
When should I use SELECT * vs selecting specific columns?
Does row order really matter if I don’t use ORDER BY?

# Week 2 Querying Part 3
Practiced filtering (WHERE), sorting (ORDER BY), DISTINCT, aggregation (COUNT, AVG), and LIMIT.
Recorded outputs in pow.txt with `.output '| cat >> pow.txt'` to append between commits.

Week 3 Querying Part 4

Operators (46:01 – 53:10)
I practiced using different operators like =, !=, <, >, BETWEEN, IN, LIKE, and checking for NULL values. The main things I noticed are that IN is easier than writing a bunch of ORs, and you really have to use parentheses to get AND/OR to work the way you mean. LIKE was handy with % to find patterns in titles. To make sure translators weren’t blank, I had to check both IS NOT NULL and <> ''.

Order By (53:10 – 1:02:00)
ORDER BY is what sets the order of results. ASC puts things in order from smallest to largest (like earliest year or A to Z), while DESC does the opposite (newest first, or Z to A). You can also list more than one column to break ties, like year first then title. I also learned you can push books with translators to the top using ORDER BY (translator IS NULL) ASC.

Aggregates (1:02:06 – 1:17:21)
I used aggregate functions like COUNT, SUM, AVG, MIN, and MAX. GROUP BY let me split results by year or author, and HAVING let me filter groups after they were formed, which is different from WHERE that filters rows before grouping. One interesting thing is that MIN and MAX on text are alphabetical, not based on title length. I practiced finding counts per year, average pages, and top authors.

My thoughts
Doing this round of queries made SQL has helped. It helped me see the flow first filter with WHERE, then sort with ORDER BY, then group or summarize with aggregates. The WHERE vs HAVING difference finally catching that feeling of oh this is how this goes, and I won’t forget that MIN and MAX on strings just mean alphabetical order. Writing the .print notes into the SQL file was actually useful because it forced me to explain to myself what each query was doing. The hardest part was just staying organized in Codespaces, but once I had a rhythm of running .read p4-q.sql and checking pow4.txt, everything came together.