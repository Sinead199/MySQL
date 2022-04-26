USE personaltrainer;

SELECT
		FirstName,
        LastName,
        BirthDate
FROM Client
WHERE BirthDate 
LIKE '198%';