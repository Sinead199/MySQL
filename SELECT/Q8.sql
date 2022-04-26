USE personaltrainer;

SELECT
		FirstName,
        LastName,
        City
FROM Client
WHERE City="Metairie" OR City="Kenner" OR City="Gretna";