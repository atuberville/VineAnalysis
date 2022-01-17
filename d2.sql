CREATE TABLE totalvotes
AS SELECT
  *
FROM vine_table
WHERE total_votes >20


CREATE TABLE filteredvine
AS SELECT
    *
FROM totalvotes
WHERE CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5


CREATE TABLE filteredvineno2
AS SELECT 
	*
FROM filteredvine
WHERE vine = 'N'


CREATE TABLE filteredvineyes2
AS SELECT 
	*
FROM filteredvine
WHERE vine = 'Y'



SELECT COUNT (total_votes)
FROM filteredvine
#13539




SELECT COUNT (total_votes)
FROM filteredvineno2
WHERE star_rating = 5
#7678
SELECT COUNT (total_votes)
FROM filteredvineno2
#13480



SELECT COUNT (total_votes)
FROM filteredvineyes2
WHERE star_rating = 5
#34
SELECT COUNT (total_votes)
FROM filteredvineyes2
#59



SELECT COUNT (total_votes)
FROM filteredvineno2
WHERE star_rating = 4
#2490
SELECT COUNT (total_votes)
FROM filteredvineyes2
WHERE star_rating = 4
#15