CREATE SCHEMA sleep_database;
USE Sleep_dataset_SQL;

CREATE TABLE sleepdata (
PersonID int NOT NULL,
Gender text DEFAULT NULL,
Age int DEFAULT NULL,
Occupation text DEFAULT NULL,
Sleep_Duration	int DEFAULT NULL,
Quality_of_Sleep int DEFAULT NULL,
Physical_Activity_Level	int DEFAULT NULL,
Stress_Level int DEFAULT NULL,
BMI_Category	text DEFAULT NULL,
Blood_Pressure	text DEFAULT NULL,
Systolic_BP int DEFAULT NULL,
Diastolic_BP int DEFAULT NULL,
Heart_Rate int DEFAULT NULL,
Daily_Steps int DEFAULT NULL,
Sleep_Disorder text DEFAULT NULL,
PRIMARY KEY (PersonID)
);

SELECT *
FROM sleep_database.sleep_dataset_sql
GROUP BY gender;

SELECT COUNT(PersonID), Gender FROM sleep_database.sleep_dataset_sql
group by Gender;
SELECT AVG(Age), Gender FROM sleep_database.sleep_dataset_sql
group by Gender;

SELECT AVG(Stress_Level), Gender FROM sleep_database.sleep_dataset_sql
group by Gender;

SELECT COUNT(DISTINCT BMI_Category), AVG(Systolic_BP), AVG(Diastolic_BP), AVG(Daily_Steps), AVG(Physical_Activity_Level), Gender FROM sleep_database.sleep_dataset_sql
group by Gender;

# How many people in the sample have high and very high blood presure?
# blood pressure is considered high (stage 1) if it reads 130 to 139 mmHg/80 to 89 mmHg; Stage 2 high blood pressure is 140/90 or higher.
SELECT COUNT(*) FROM sleep_database.sleep_dataset_sql
WHERE (( Diastolic_BP > 80) OR (Systolic_BP > 130))

# How many people in the sample have very high blood presure?
SELECT COUNT(*) FROM sleep_database.sleep_dataset_sql
WHERE (( Diastolic_BP > 90) OR (Systolic_BP > 140))

# A: 69

#High blood pressure grouped by gender:
SELECT COUNT(*), Gender FROM sleep_database.sleep_dataset_sql
WHERE (( Diastolic_BP > 80) OR (Systolic_BP > 130))
group by Gender;

#A: 108	Male, 113 Female

# Very High blood pressure grouped by gender:
SELECT COUNT(*), Gender FROM sleep_database.sleep_dataset_sql
WHERE (( Diastolic_BP > 90) OR (Systolic_BP > 140))
group by Gender;

#A: 4	Male, 65	Female

# Data seems biased as the sample of females have more values in the stage 2 ranges of high blood presure than the count for males! 
