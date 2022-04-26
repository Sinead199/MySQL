USE personaltrainer;

SELECT
        ClientId,
        EmailAddress,
        PasswordHash
FROM Login
WHERE EmailAddress
NOT LIKE '%.com';