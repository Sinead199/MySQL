USE personaltrainer;

SELECT
        FirstName,
        LastName
FROM Client
WHERE BirthDate IS NULL;