---.mode box

---.output '| cat >> pow.txt'

---.print 'first query'

---SELECT * FROM "longlist";

---.output stdout
---.output '| cat >> pow.txt'
---.print 'select command — q1'
---SELECT * FROM "longlist";

---.print ''
----.print 'select command — q2'

---SELECT rowid, * FROM "longlist" LIMIT 5;

---.print ''
---.print 'select command — q3'
---SELECT * FROM "longlist" LIMIT 10;

---.output stdout

---.mode box
---.output '| cat >> pow.txt'
---.print 'select command — q1'
---SELECT * FROM "longlist";

---.print ''
---.print 'select command — q2'
---SELECT title, author FROM "longlist";

---.print ''
---.print 'select command — q3'
---SELECT title, year FROM "longlist" LIMIT 10;

---.output stdout

---.output '| cat >> pow.txt'
---.print 'limit command — q1'
---SELECT title, year FROM "longlist" LIMIT 5;

---print ''
---.print 'limit command — q2'
---SELECT title, author FROM "longlist" LIMIT 10;

---.output stdout

-- Week 2 • Querying Part 3
---.mode box
---.output '| cat >> pow.txt'

---.print 'part 3 — q1: show 5 books'
---SELECT title, author, year FROM "longlist" LIMIT 5;

---.print ''
---.print 'part 3 — q2: 2023 titles only'
---SELECT title, year FROM "longlist" WHERE year = 2023 LIMIT 10;

---.print ''
---.print 'part 3 — q3: top 10 by rating (desc)'
---SELECT title, rating FROM "longlist" ORDER BY rating DESC LIMIT 10;

---.print ''
---.print 'part 3 — q4: authors with books after 2018'
---SELECT DISTINCT author FROM "longlist" WHERE year > 2018 ORDER BY author LIMIT 10;

---.print ''
---.print 'part 3 — q5: count rows per year'
---SELECT year, COUNT(*) AS cnt
---FROM "longlist"
---GROUP BY year
---ORDER BY year;

---.print ''
---.print 'part 3 — q6: average rating per year (2 decimals)'
---SELECT year, ROUND(AVG(rating), 2) AS avg_rating
---FROM "longlist"
---GROUP BY year
---ORDER BY avg_rating DESC
---LIMIT 10;

---.output stdout


---.output '| cat >> pow.txt'

---.print ''
---.print 'part 3 — q7: highest-rated per publisher (sample)'
---SELECT publisher, title, rating
---FROM "longlist"
---WHERE rating IS NOT NULL
---ORDER BY publisher, rating DESC
---LIMIT 15;

---.print ''
---.print 'part 3 — q8: longest books (pages) since 2018'
---SELECT title, pages, year
---FROM "longlist"
---WHERE pages IS NOT NULL AND year >= 2018
---ORDER BY pages DESC
---LIMIT 10;

---.output stdout

-- Week 3 • Querying Part 4
.mode box
.headers on
.output '| cat >> pow4.txt'

-- ===== OPERATORS (6 total) =====

-- OPERATORS #1: equality (=)
.print 'Operators #1: Books from 2023'
SELECT title, author, year
FROM longlist
WHERE year = 2023
LIMIT 10;

-- OPERATORS #2: not equal (!=)
.print 'Operators #2: 2023 books not in hardcover'
SELECT title, format, year
FROM longlist
WHERE year = 2023
  AND format != 'hardcover'
LIMIT 10;

-- OPERATORS #3: less-than (<)
.print 'Operators #3: Books under 200 pages'
SELECT title, author, pages
FROM longlist
WHERE pages < 200
ORDER BY pages ASC
LIMIT 10;

-- OPERATORS #4: BETWEEN (range)
.print 'Operators #4: Books between 2019 and 2021 (inclusive)'
SELECT title, year
FROM longlist
WHERE year BETWEEN 2019 AND 2021
ORDER BY year, title
LIMIT 15;

-- OPERATORS #5: LIKE (pattern match)
.print 'Operators #5: Titles containing the word Love'
SELECT title
FROM longlist
WHERE title LIKE '%Love%';

-- OPERATORS #6: IS NOT NULL (and not empty)
.print 'Operators #6: Books that have a translator listed'
SELECT title, translator
FROM longlist
WHERE translator IS NOT NULL
  AND translator <> '';

.output stdout