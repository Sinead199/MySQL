USE personaltrainer;

SELECT
        WorkoutId
FROM Workout
WHERE Name="This is Parkour";

SELECT 
		GoalId
FROM WorkoutGoal
WHERE WorkoutId = '12';

SELECT
		Name
FROM Goal
WHERE GoalId = '3' OR GoalId = '8' OR GoalId = '15';