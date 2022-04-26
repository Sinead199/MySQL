USE personaltrainer;

SELECT
        ClientId,
        EmailAddress,
        PasswordHash
FROM Login
WHERE EmailAddress
LIKE '%.gov';