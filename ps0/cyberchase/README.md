.print 'Query 1'
SELECT * FROM episodes;
.print 'Counting results'
SELECT COUNT(*) FROM episodes;

.print 'Query 2'
SELECT title FROM episodes WHERE title LIKE '%or%';
.print 'Counting results'
SELECT COUNT(*) FROM episodes WHERE title LIKE '%or%';
