USE personaltrainer;

SELECT
        Name
FROM ExerciseCategory
WHERE ParentCategoryId IS NOT NULL;