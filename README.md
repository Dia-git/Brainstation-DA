# Brainstation Data Analytics Certification Portfolio 
### [https://brainstation.io/course/london/data-analytics](https://brainstation.io/course/london/data-analytics)

### This repository highlights my work from the BrainStation Data Analyst Certification (DAC™), an intensive 8-week program (Sep-Nov 2024) focused on the complete data analytics workflow: from problem formulation and data cleaning to visualization and insight presentation.

Throughout the course, I gained hands-on experience working with real-world datasets across multiple domains, developing both technical and analytical skills required to extract meaningful insights and communicate them effectively to diverse audiences.


#### Skills & Tools Developed
 :small_blue_diamond: Advanced Excel: Exploratory data analysis, complex formulas, and advanced cleaning techniques
 
 :small_orange_diamond: SQL: Data extraction, schema design, query optimization, and relational database management
 
 :small_blue_diamond: Tableau: Designing interactive dashboards, applying visualization best practices, and data storytelling

---

# **Capstone Project: Sleep Health Analysis** :sleeping:
***The capstone project demonstrates the integration of all skills acquired during the program:***

<img width="606" height="340" alt="Sleep Data Analytics Full Presentation Cover" src="https://github.com/user-attachments/assets/0e558d0e-8335-45e1-b288-370974e69017" />

"Sleep Data Analysis: From Raw Data to Insights​: A Data-Driven Investigation into Sleep Health​"

[Summary Tableau Dashboard Snapshot Here](tableau.com)

As I have an educational background in biology and bioinformatics and my professional goal is to transition to a health data analyst role, I picked for the project a set of health data that at this time ignited my curiosity, related to the quality of our sleep.  

I then followed the Process Framework learned during the BrainStation’s Data Analytics classes: Questions -> Collection -> Explore -> Conclusions -> Communicate 

<img width="530" height="176" alt="Data Framework" src="https://github.com/user-attachments/assets/0961674d-01c5-45e1-ac34-97fceafa34a6" />

## Project Overview
 - Objective: Investigate sleep health patterns and their correlation with lifestyle and health factors.
 - Approach:
    - Leveraged SQL for efficient extraction and transformation of raw health sleepmetrics
    - Performed data cleaning and exploratory analysis in Excel to uncover trends and anomalies
    - Designed interactive Tableau dashboards to visualize sleep quality, duration, and associations with lifestyle variables
 - Outcome: Delivered a clear, data-driven narrative on how various factors, such as physical activity, stress, and work patterns, affect sleep quality. The analysis highlights opportunities for improving overall health outcomes through better sleep habits.

### :toolbox: Tools
- :sparkles: Excel - Data Cleaning
- :mag: MySQL - Data Analysis 
- :bar_chart: Tableau - Creating Reports & Dashboards

## Table of Contents
- [Key Takeaways](#key-takeaways)
- [Problem Definition](#problem-definition)
- [Data Collection](#data-collection)
- [Data Preparation and Cleaning](#data-preparation-and-cleaning)
- [Exploratory Data Analysis](#exploratory-data-analysis)
- [Initial Data Analysis in Excel](#initial-data-analysis-in-excel)
- [Exploratory Data Analysis ​with SQL](#exploratory-data-analysis-​with-sql)
- [Data Visualisations in Tableau](#data-visualisations-in-tableau)
- [Results](#results)
- [Conclusions and Limitations](#conclusions-and-limitations)
- [Feedback Summary](#feedback-summary)
- [References](#references)

## Key Takeaways


## Problem Definition 
Research Context - The Big Picture: Why Sleep Matters​ 

From _"The Global Problem of Insufficient Sleep and Its Serious Public Health Implications"_ [Healthcare, 2018](https://pmc.ncbi.nlm.nih.gov/articles/PMC6473877/)
- Sleep quality is essential for physical and mental health
- Insufficient sleep is a prevalent issue in modern society
- Medical professionals need to understand common sleep disruptors 

## Data Collection
### Data Source: 
- The primary dataset used for this analysis is the "Sleep_health_and_lifestyle_dataset.csv" file, containing detailed information about a number of individuals.
    - Sleep Health and Lifestyle Dataset from Kaggle - [Download here](https://www.kaggle.com/datasets/uom190346a/sleep-health-and-lifestyle-dataset/data)
- Format: CSV file 
- Size: 375 rows (individual records) × 13 columns (metrics)​
- Type: _Synthetic data created for **illustrative** purposes_ :exclamation:
- ***Disclaimer:***
   - _While I initially intended to work with real-world data and plan to repeat this process using authentic datasets in the future, I discovered late in the project that the dataset used, includes a note indicating that it is synthetic data created by the uploader for illustrative purposes. Nonetheless, given that this dataset has been previously utilized in other analyses and has received positive feedback for its structure and usability, I chose to proceed with it for demonstration purposes. Please note that, although the analytical process and methodology remain valid and replicable, any insights, trends, or correlations derived from this dataset **should not** be interpreted as factual or representative of real-world phenomena._


<img width="615" height="336" alt="Data Card Kaggle View" src="https://github.com/user-attachments/assets/95b21540-0e1a-4196-8ca2-968d51ec1b09" />


### Key Features:
1. Sleep Metrics :waning_crescent_moon::zzz:
- Sleep duration (hours per day)​​ 
- Sleep quality (subjective rating, scale: 1-10)​ 
- Sleep disorders (Insomnia, Sleep Apnea) 

2. Health Indicators  :sparkling_heart:
- Blood pressure (systolic/diastolic)​ 
- Heart rate (bpm)​​
- BMI category (Underweight, Normal, Overweight)​ 

3. Lifestyle Factors :walking:
- Physical activity levels (minutes/day)
- Stress levels (subjective rating, scale: 1-10)​ 
- Daily steps

4. Identifiers 👥
   - Person ID​
   - Gender ​(Male/Female)​
   - Age (years)​
   - Occupation​ 

## Data Preparation and Cleaning
In the initial data preparation phase, the following cleaning steps were performed in Excel:

 - BMI Category Standardization
     - Corrected inconsistencies between "Normal" and "Normal Weight"
     - Used 'Split Text to Columns' action (+ Delete)


  <img width="628" height="298" alt="Excel - Data cleaning BMI Categories" src="https://github.com/user-attachments/assets/a60aa3dd-5168-4d0b-b8f6-a33225c66734" />

 - Blood Pressure Processing 
     - Split BP text string into two numerical columns:  
               - Systolic Blood Pressure & Diastolic Blood Pressure
     - Used LEFT() and RIGHT() functions for separation
     - Changed the newly created columns to a numerical format rather than text string for further analysis


```Excel

-- General Formulas:

=LEFT(text, [length])
=RIGHT(text, [length])


-- Extract Systolic Blood Pressure from Blood Pressure column 
-- Apply formula to extract first 3 numbers from the left end of the original string

=LEFT([@Blood_Pressure], 3)


-- Extract Diastolic Blood Pressure from Blood Pressure column 
-- Apply formula to extract last 2 numbers from the right end of the original string 

=RIGHT([@Blood_Pressure], 2)

```
  
  <img width="416" height="226" alt="Excel Split text" src="https://github.com/user-attachments/assets/2213e90c-82c5-4a7e-9934-914e5d333979" />


- Saved Cleaned and Prepared  _"Sleep_health_and_lifestyle_dataset.csv"_ file as:
           ***"Sleep_dataset_SQL.csv"***  - [See file here](https://github.com/Dia-git/Brainstation-DA/blob/main/Sleep_dataset_SQL.csv)

  
## Exploratory Data Analysis 
The EDA involved exploring the sleep health & lifestyle data to answer some key research questions, such as: 

### :question: **Primary/Main Question:**
_What health and lifestyle metrics may influence sleep quality/duration or vice versa?_

### :arrow_right: **Project Goal**
_Test the hypothesis that sleep quality and duration positively correlate with a healthy lifestyle._

### :grey_question: **Secondary Questions:**
1. Gender Differences ♀️♂️
 - _Is there a difference between genders in terms of sleep quality?_
 - _Is there a difference between genders in terms of sleep duration?_

2. Physical Activity Impact 💪
 - _Do people with higher physical activity levels experience better sleep quality?_
 - _Is there a relationship between daily steps and sleep duration?_

3. Occupation & Stress Effects 🤯
 - _Do people with higher stress levels sleep more or less?_
 - _Is there a correlation between occupation, stress levels and sleep quality?_

4. Health Indicators 🩺
 - _How do blood pressure levels correlate with sleep patterns?_
 - _Is there a relationship between BMI category and sleep disorders?_
    

## Initial Data Analysis in Excel

1. Age Group Classification

```Excel

-- Apply formula to group individuals in age groups:
-- Total age range: 27-59 years​

=IF([@Age]<37, "Group 1: 27-36", IF([@Age]<47, "Group 2: 37-46", "Group 3: 47-59"))
```

- Created three age groups: ​ 

   - Group 1: Late 20's to mid-30's (27-36)​ 
   - Group 2: Late 30's to mid-40's (37-46)​ 
   - Group 3: Late 40's to late-50's (47-59)​


2. PivotTable Analysis

  - The pivot table shows that the data is a bit unbalanced in terms of count of distinct ages within each group, with the middle one (37 to 46) having more individuals (158) compared to  the other 2 (106 and 110).
  - The sleep duration is not very different for all groups on average, with a slight increase with the age increase. The same increase can be noticed for average quality of sleep but to a slightly higher degree.
  - Physical Activity levels are rather different with the older group (47- 59) being slightly more active on average.  

<img width="634" height="114" alt="Pivot Table - excel" src="https://github.com/user-attachments/assets/5a293abd-0756-4c0c-964c-6cb02f6d7f15" />



3. Data Visualisations in Excel



Checking Data Validity 

- Looking at data by Age Group:
   
<img width="532" height="328" alt="Excel Bar Chart by Age Group" src="https://github.com/user-attachments/assets/00f983e5-e730-429d-be87-f0763788ca72" />

---

- Sleep disorders:​ 

 <img width="638" height="260" alt="Sleep Disorders Excel Chart#" src="https://github.com/user-attachments/assets/0acd0f71-f48d-43af-af31-78e220dcb55c" />
 
 Observation: The chart shows what we would expect in terms of the relationship between sleep disorders and sleep duration, and sleep quality as rated by the individuals.  

---

- Looking at ​occupations per age group and respective stress levels​:
  
<img width="642" height="282" alt="Stress Levels   Occupation - Excel Chart" src="https://github.com/user-attachments/assets/78fcc262-7107-40de-a293-3e54a72432c7" />

Observation: Looking at the distribution of occupations across the three age groups, we can see a clear difference, in the diversity of roles. The first (27-36) group has the most varied roles (9 different occupations) while the oldest one (37-59) only showcases 4 occupations. This imbalance might create some biased insights, specifically for roles that don’t have a comparative in the other age groups.  

---

- Looking at BMI per age group and their average sleep duration​:
  
<img width="596" height="312" alt="BMI Chart - Excel" src="https://github.com/user-attachments/assets/9d44555c-555d-4cd4-a92b-a274473296f7" />

Observation: Looking at all the age groups and the average sleep duration by BMI category, it’s a bit more difficult distinguish a clear trend. Only a slight increase in sleep duration can be noticed for the older age group. However, Individuals who are obese or overweight seem to not be getting as much sleep as the people in the ‘normal weight’ category.



## Exploratory Data Analysis ​with SQL


1. Database Setup & SQL Dataset Importing Steps

- SQL Database Setup Code:

```sql
CREATE SCHEMA sleep_database;
USE Sleep_dataset_SQL; 

CREATE TABLE sleepdata (
  PersonID int NOT NULL, 
  Gender text DEFAULT NULL, 
  Age int DEFAULT NULL, 
  Occupation text DEFAULT NULL, 
  Sleep_Duration double DEFAULT NULL, 
  Quality_of_Sleep int DEFAULT NULL, 
  Physical_Activity_Level int DEFAULT NULL, 
  Stress_Level int DEFAULT NULL, 
  BMI_Category text DEFAULT NULL, 
  Blood_Pressure text DEFAULT NULL, 
  Systolic_BP int DEFAULT NULL, 
  Diastolic_BP int DEFAULT NULL, 
  Heart_Rate int DEFAULT NULL, 
  Daily_Steps int DEFAULT NULL, 
  Sleep_Disorder text DEFAULT NULL, 
  PRIMARY KEY (PersonID) 
); 
```
<img width="204" height="244" alt="SQL Table creation" src="https://github.com/user-attachments/assets/aedcf3ce-6625-4742-9b24-c47cee9a0c1e" />

---

 - Configure Import Settings & loading data into the created table:
   
<img width="612" height="422" alt="Import Settings - MySql" src="https://github.com/user-attachments/assets/4e6a3a86-73e5-4d06-9749-1e8d30504f2d" />

---

 - Set as Default Schema:
   
<img width="578" height="360" alt="Set as Default schema in MySQl" src="https://github.com/user-attachments/assets/8d87214d-2674-42f6-b018-6f633150f887" />

---

 - Inspecting Data in SQL:

```sql
-- Gender Distribution:
SELECT COUNT(PersonID), Gender
FROM sleep_database.sleep_dataset_sql 
GROUP BY Gender;
```

<img width="168" height="72" alt="Group by gender Outcome" src="https://github.com/user-attachments/assets/f74e0b95-2820-473b-9693-c6163a4fe4ce" />

```sql

-- Age Distribution by Gender

SELECT AVG(Age), Gender
FROM sleep_database.sleep_dataset_sql 
GROUP BY Gender;


-- Stress Levels by Gender

SELECT AVG(Stress_Level), Gender
FROM sleep_database.sleep_dataset_sql 
GROUP BY Gender;


-- Multiple Health Metrics by Gender

SELECT
    COUNT(DISTINCT BMI_Category),
    AVG(Systolic_BP),
    AVG(Diastolic_BP),
    AVG(Daily_Steps),
    AVG(Physical_Activity_Level),
    Gender
FROM sleep_database.sleep_dataset_sql 
GROUP BY Gender; 
```


- EDA Observations:

1. There’s a difference in age averages between male and female which can create biases in the data analysis results: 37.0741 (Male) vs 47.4054 (Female)

<img width="156" height="71" alt="Average age by gender - SQL EDA Outcome" src="https://github.com/user-attachments/assets/be3a32ae-0f65-4fad-aacd-a1ff22de911e" />



2. The males in our sample are on average more stressed than the females: 6.0794 (Male) vs 4.6757 (Female)
3. For other measures the data is more balanced: 

  <img width="522" height="98" alt="Health Metrics EDA in MySQl" src="https://github.com/user-attachments/assets/12f34fc6-0ad4-41e3-b043-d4f2aa94acb1" />

      
```sql
-- Blood Pressure Analysis --

-- Q: How many people in the sample have high and very high blood presure? 
-- A: Calculate Total Number of High Blood Pressure Cases (Stage 1+)
-- Stage 1 HBP: 130-139 mmHg/80-89 mmHg
SELECT COUNT(*)
FROM sleep_database.sleep_dataset_sql 
WHERE ((Diastolic_BP > 80) OR (Systolic_BP > 130));

-- Q: How many people in the sample have very high blood presure?
-- A: Calculate Total Number of Very High Blood Pressure Cases (Stage 2)
-- Stage 2 HBP: 140/90 mmHg or higher
SELECT COUNT(*)
FROM sleep_database.sleep_dataset_sql 
WHERE ((Diastolic_BP > 90) OR (Systolic_BP > 140));

-- Looking at High Blood Pressure Cases by Gender
SELECT COUNT(*), Gender
FROM sleep_database.sleep_dataset_sql 
WHERE ((Diastolic_BP > 80) OR (Systolic_BP > 130))
GROUP BY Gender;

-- Looking at Very High Blood Pressure Cases by Gender
SELECT COUNT(*), Gender
FROM sleep_database.sleep_dataset_sql 
WHERE ((Diastolic_BP > 90) OR (Systolic_BP > 140)) 
GROUP BY Gender; 
```

- EDA Observations:
  
1. Blood Pressure Distribution ​Results: 
      - High BP (Stage 1+): 221 individuals total (Males: 108 cases​ vs Females: 113 cases​)
      - Very High BP (Stage 2): 69 individuals total ​(Males: 4 cases​ vs Females: 65 cases​)


​2. Notable Data Quality Concern: Significant gender disparity in Stage 2 hypertension cases (Blood Pressure Distribution)​

   - Disproportionate number of females with stage 2 hypertension​
   - Potential sampling bias: 94% of Stage 2 cases are female​
   - May require additional validation or data collection


## Data Visualisations in Tableau

Importing "Sleep_dataset_SQL.csv" file to Tableau

<img width="678" height="454" alt="Tableau - Importing File" src="https://github.com/user-attachments/assets/1e5211fe-14aa-40da-a3e8-9dce113057bf" />

---

Finding answers: Gender Differences ​ 
- Q1: Is there a difference between genders in terms of sleep quality?​​ 
- Q2: Is there a difference between genders in terms of sleep duration?​​

<img width="606" height="128" alt="Tableau - Genders   Sleep" src="https://github.com/user-attachments/assets/196f19a1-2253-4ec6-84c6-03286da0135e" />

<img width="584" height="424" alt="Tableau - Age Distribution" src="https://github.com/user-attachments/assets/7504f957-5635-45af-9c6e-7d6b6eea328d" />

- The graphs show that on average, the women in our sample sleep slightly more and rate their quality of sleep higher than men. ​ 

---

Investigating Age Distribution Data through visualizations ​with Tableau ​


<img width="708" height="406" alt="Avg  Sleep Duration by Gender" src="https://github.com/user-attachments/assets/6e730e1a-35be-4731-a1eb-ef4edf2ff355" />

<img width="354" height="406" alt="Tableau - Age Distribution  Per ID" src="https://github.com/user-attachments/assets/d29bdc41-8622-4e2c-aaf5-1ec32577e31c" />

- However, looking more closely at the age distribution, the average age of the women in our dataset is significantly higher, than the men, as all individuals with an age above 49 are females. A few individuals are 34. This will likely cause some bias in our insights. ​ 

---

Finding answers: Stress Impact​ 

- Q: Do people with higher stress levels sleep more or less?​
  
<img width="594" height="498" alt="Tableau - Stress" src="https://github.com/user-attachments/assets/693d10fd-3e18-4cb3-aaed-a8ddadec16ed" />

​- The scatterplot shows a strong negative correlation between the two continuous variables, indicating that as stress levels increase (x-axis), sleep duration decreases (y-axis).​ 

​ 
---

Finding answers: Occupation & Physical Activity Impact ​ 

- Q1: Is there a correlation between occupation and sleep duration?​
  
<img width="614" height="354" alt="Tableau - Avg Sleep Duration by Occup" src="https://github.com/user-attachments/assets/be141f75-3539-4954-9d70-9d01efdc309f" />

  
- Q2: Do people with higher physical activity levels experience better sleep quality?​
  
<img width="672" height="148" alt="Tableau - Avg Sleep Duration by Occup   Activity" src="https://github.com/user-attachments/assets/82174e7a-5a31-448e-b762-cb579ec2a235" />

- These Tableau visualizations clearly show that average Sleep time is impacted by the occupation of the individuals in our dataset with people working in sales and scientists sleeping the least amount of time. At the other end of the spectrum, engineers have a good night's sleep on average.  

- The second bar plot shows that there is also a positive correlation between physical activity level and sleep duration, with nurses, not surprisingly being the most active. Engineers however seem to be an exception to the trend a bit as, despite sleeping the longest on average, their physical activity levels are not the highest.
  
---

## Results
The analysis insights are summarized are as follows: 

Key Findings
1. Gender and Age Distribution  
   - Males: Average age 37.07 years
   - Females: Average age 47.41 years 

2. Stress Levels by Gender  
  - Males: Average stress level 6.08 
  - Females: Average stress level 4.68 

3. Blood Pressure Distribution  
- High BP (Stage 1+): 221 individuals total (Males: 108 cases, Females: 113 cases)
- Very High BP (Stage 2): 69 individuals total (Males: 4 cases, Females: 65 cases)
  

4. **Notable Data Quality Concerns:** 💥
   
     I. Age Distribution Bias:

   - Significant difference in average age between genders
   - May affect interpretation of age-related findings
   
     II. Disproportionate number of females with stage 2 hypertension

     - Significant gender disparity in Stage 2 hypertension cases
     - Potential sampling bias: 94% of Stage 2 cases are female
     - May require additional validation or data collection 



## Conclusions and Limitations

1. Drawing Conclusions: Rich dataset with potential insights for Sleep Metrics:
- The data analysis shows that sleep quality and duration is positively correlate with the physical activity levels of the individuals in our sample;​
- Sleep duration decreases as stress levels increase;​
- Choice of occupation and BMI category may affect the sleep metrics.​

📌 Based on the data, the hypothesis that sleep quality and duration are positively correlate with healthy lifestyle (low stress, normal BMI, high PAL) is proven correct. ​

📌 However, no clear pattern was seen between daily step count and sleep metrics. ​

📌 More balanced data is needed to find statistically significant insights. ​

Practical Implications:
   - These patterns suggest that interventions aimed at reducing stress or improving physical activity could help improve sleep quality.

2. Limitations​: Data Quality Alert​​
The analysis compared distributions of key variables by gender to evaluate bias

⚠️ Potential Biases discovered:​​
- Age gap between genders​​
- Uneven BP distribution​​
- Uneven Distinct Age Counts​​



3. 🔎 ​​Recommendations for Further Analysis:​​
Improve Data Quality & Quantity:
- Consider a larger population sample that is closer to a normal distribution in terms of age. ​​
- Validate blood pressure distributions against population norms​.

Next Steps given more time and improved data:
- Where possible, expand the analysis to include summary statistics (e.g., correlations, averages, or percentage differences).
- Build a regression model predicting sleep quality using health and lifestyle variables.
- Cluster individuals based on sleep behavior patterns.


---

## Feedback Summary

The following summary is based on final project feedback received from BrainStation Tutors:
- Final project praised for rigor, clear direction, and thorough problem-solving—even in the face of difficult data challenges.
- Data breakdowns were particularly thorough, with analysis and visualizations described as clear, well-structured, and supportive of the project's narrative.
- One of the strongest projects in the cohort.

---

## References

1. Chattu VK, Manzar MD, Kumary S, Burman D, Spence DW, Pandi-Perumal SR. The Global Problem of Insufficient Sleep and Its Serious Public Health Implications. Healthcare (Basel). 2018 Dec 20;7(1):1. doi: 10.3390/healthcare7010001
2. [Data Analytics Course Support](https://brainstation.io/course/online/data-analytics)
3. [Excel Exercises](https://excelexercises.com/)
4. [Writing on GitHub - Basic writing and formatting syntax](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)
5. [Microsoft keyboard shortcuts in Excel](https://support.microsoft.com/en-us/office/keyboard-shortcuts-in-excel-1798d9d5-842a-42b8-9c99-9b7213f0040f)
6. [Complete list of github markdown emoji markup](https://gist.github.com/rxaviers/7360908)
7. [How to Document Data Analysis Projects on GitHub the Right Way by Her Data Project](https://www.youtube.com/watch?v=0N9xekdKCwk)
---


🥇💻
|Heasding 1|Heading2|
|----------|--------|
|Content|Content2|
|Python|SQL|

`column_1`



========================
