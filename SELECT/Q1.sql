USE personaltrainer;

SELECT
		exercisecategory.ExerciseCategoryId, 
        exercisecategory.Name, 
        exercisecategory.ParentCategoryId, 
        exercise.ExerciseId, 
        exercise.Name, 
        exercise.ExerciseCategoryId
FROM exercisecategory
INNER JOIN exercise ON exercisecategory.ExerciseCategoryId=exercise.ExerciseCategoryId;