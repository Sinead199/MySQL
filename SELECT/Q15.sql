USE personaltrainer;

SELECT
        Name,
        Notes
FROM Workout
WHERE LevelId='3' 
AND Notes LIKE '%you%';