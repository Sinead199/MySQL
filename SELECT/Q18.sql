USE personaltrainer;

SELECT
        *
FROM Client
INNER JOIN Login ON Client.ClientId=Login.ClientId
WHERE FirstName="Estrella" AND LastName="Bazely";
