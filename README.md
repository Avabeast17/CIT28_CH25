Git Workflow Instructions

Step 1: Modify Your Files
Make sure to have auto-save selected in your editor.
Check the status of your files by running: git status

Step 2: Stage Your Changes
Stage all changes into your local repository with git add *
Or stage a specific file with git add filename

Step 3: Commit Your Changes
Commit the staged changes with a descriptive commit message:
git commit -m "commit message"

Step 4: Push Your Changes
Push your commits from your local repository to GitHub:
git push

Week 1 Querying Part 1

Getting started (0:00–4:13)
Spreadsheets are fine for small single user tasks, but they break down when things grow, multiple people need access, or correctness matters.
Databases solve this with tables, types, and constraints to keep data consistent.
SQL lets us filter, sort, join, and compute reproducibly.
Core ideas: tables, primary keys, relationships, queries.

Why move from spreadsheets?
Spreadsheets get messy and hard to enforce rules. Collaboration is awkward because files can’t be edited at the same time without conflicts.
Databases provide schemas, constraints, indexes, and transactions for integrity.

Terms (4:13–6:59)
Database = structured collection of data in tables.
DBMS = software that stores, enforces rules, and processes queries.
Examples: SQLite, Microsoft SQL Server.

DBMS differences (6:59–8:44)
SQLite is an embedded single file.
MySQL/PostgreSQL are server-based and handle more users and bigger workloads.
PostgreSQL has advanced features. MySQL is popular in web stacks. SQLite is portable and requires zero setup.

What is SQL? (8:44)
Before: I thought SQL was just a way to talk to databases.
Given: SQL is the standard language to define, query, and manipulate relational databases.

Query & SQLite (8:44–12:25)
Query = a formal request for data or action in SQL.
SQLite = lightweight, file-based database used in apps, prototypes, and teaching.

Questions I still have:
When should I switch from SQLite to a server DBMS?

Style notes (19:37)
SQL keywords in uppercase (SELECT, FROM, WHERE) for readability.
Double quotes used for identifiers.
One clause per line for cleaner diffs.

Other questions (16:32–19:37)
Why double quotes vs single quotes?
When to use SELECT * vs listing columns?
Does row order matter without ORDER BY?

Week 2 Querying Part 3

Practiced filtering with WHERE, sorting with ORDER BY, DISTINCT, aggregation (COUNT, AVG), and LIMIT.
Captured results in pow.txt using .output '| cat >> pow.txt' between commits.
This round helped me see how combining filters and sorting makes queries much more powerful.

Week 3 Querying Part 4

Operators (46:01–53:10)
I practiced operators like =, !=, <, >, BETWEEN, IN, LIKE, and checking for NULL values.
IN is easier than writing multiple ORs. Parentheses matter when mixing AND/OR. LIKE with % is great for finding patterns. To filter translators, I had to use IS NOT NULL and <> ''.

Order By (53:10–1:02:00)
ORDER BY sorts results. ASC means smallest to largest or A to Z, DESC means largest to smallest or newest first.
You can list multiple columns to break ties, like year first then title.
I also learned how to push translated books to the top with ORDER BY (translator IS NULL) ASC.

Aggregates (1:02:06–1:17:21)
Aggregate functions include COUNT, SUM, AVG, MIN, and MAX.
GROUP BY groups results, HAVING filters groups after aggregation, WHERE filters rows before grouping.
MIN and MAX on strings sort alphabetically, not by length.
I practiced counting books per year, averaging pages, finding top authors, and counting distinct translators.

My thoughts
This section made the SQL workflow clearer: filter with WHERE, order with ORDER BY, then summarize with aggregates.
The difference between WHERE and HAVING finally clicked.
I won’t forget that MIN and MAX on text use alphabetical order.
Writing .print notes into my SQL file forced me to explain each query, which helped me learn.
The hardest part was staying organized in Codespaces, but once I got into a rhythm of running .read p4-q.sql and checking pow4.txt, it all made sense.