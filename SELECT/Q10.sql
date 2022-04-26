USE personaltrainer;

SELECT
		FirstName,
        LastName,
        BirthDate
FROM Client
WHERE BirthDate 
BETWEEN '1980-01-01' AND '1989-12-31';