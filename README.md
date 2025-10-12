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

As I have an educational background in biology and bioinformatics and my professional goal is to transition to a health data analyst role, I picked for the project a set of health data that at this time ignited my curiosity, related to the quality of our sleep.  

I then followed the Process Framework learned during the BrainStation’s Data Analytics classes: Questions -> Collection -> Explore -> Conclusions -> Communicate 

## Project Overview
 - Objective: Investigate sleep health patterns and their correlation with lifestyle and health factors.
 - Approach:
    - Leveraged SQL for efficient extraction and transformation of raw health sleepmetrics
    - Performed data cleaning and exploratory analysis in Excel to uncover trends and anomalies
    - Designed interactive Tableau dashboards to visualize sleep quality, duration, and associations with lifestyle variables
 - Outcome: Delivered a clear, data-driven narrative on how various factors, such as physical activity, stress, and work patterns, affect sleep quality. The analysis highlights opportunities for improving overall health outcomes through better sleep habits.

### :toolbox: Tools
- :sparkles: Excel - Data Cleaning
- :mag: MySql - Data Analysis
- :bar_chart: Tableau - Creating Reports & Dashboards

## Table of Contents
- [Problem Definition](#problem-definition)
- [Data Collection](#data-collection)
- [Data Preparation and Cleaning](#data-preparation-and-cleaning)
- [Exploratory Data Analysis](#exploratory-data-analysis)
- [Initial Data Analysis](#initial-data-analysis)
- [Results](#results)
- [Considerations​ and Limitations](#considerations​-and-limitations)
- [References](#references)

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

### Key Features:
1. Sleep Metrics :waning_crescent_moon::zzz:
- Sleep duration 
- Sleep quality 
- Sleep disorders (Insomnia, Sleep Apnea) 

2. Health Indicators  :sparkling_heart:
- Blood pressure 
- Heart rate 
- BMI category 

3. Lifestyle Factors :walking:
- Physical activity levels 
- Stress levels 
- Daily steps 

## Data Preparation and Cleaning
In the initial data preparation phase, the following cleaning steps were performed:
 - BMI Category Standardization
     - Corrected inconsistencies between "Normal" and "Normal Weight"
     - Used 'Split Text to Columns' action 
- Blood Pressure Processing
     - Split BP text string into two numerical columns:  
             - Systolic Blood Pressure
             - Diastolic Blood Pressure
     - Used LEFT() and RIGHT() functions for separation 

- Saved Cleaned _"Sleep_health_and_lifestyle_dataset.csv"_ file as ***"Sleep_dataset_SQL.csv"***


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

3. Stress Effects 🤯
 - _Do people with higher stress levels sleep more or less?_
 - _Is there a correlation between stress levels and sleep quality?_

4. Health Indicators 🩺
 - _How do blood pressure levels correlate with sleep patterns?_
 - _Is there a relationship between BMI category and sleep disorders?_
    

## Initial Data Analysis 

1. Database Setup & SQL Dataset Importing
   - SQL Analysis Code:

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


## Results
The analysis insights are summarized are follows: 

Key Findings 
1. Gender and Age Distribution  
   - Males: Average age 37.07 years
   - Females: Average age 47.41 years 

2. Stress Levels by Gender  
  - Males: Average stress level 6.08 
  - Females: Average stress level 4.68 

3. ***Age Distribution Bias ***
 - Significant difference in average age between genders​
 - May affect interpretation of age-related findings​

4. Blood Pressure Distribution  
- High BP (Stage 1+): 221 individuals total  
- Males: 108 cases 
- Females: 113 cases 

Very High BP (Stage 2): 69 individuals total  

Males: 4 cases 

Females: 65 cases 

Notable Data Quality Concern: Significant gender disparity in Stage 2 hypertension cases 

5. Data Quality Concerns 

Age Distribution Bias  

Significant difference in average age between genders 

May affect interpretation of age-related findings 

Blood Pressure Distribution  

Disproportionate number of females with stage 2 hypertension 

Potential sampling bias: 94% of Stage 2 cases are female 

May require additional validation or data collection 

<img width="354" height="203" alt="Avg  Sleep Duration by Gender" src="https://github.com/user-attachments/assets/6e730e1a-35be-4731-a1eb-ef4edf2ff355" />


## Considerations​ and Limitations

Drawing Conclusions: 
Rich dataset with potential insights for Sleep Metrics:​

The data analysis shows that sleep quality and duration is positively
correlate with the physical activity levels of the individuals in our
sample;​

Sleep duration decreases as stress levels increase;​

Choice of occupation and BMI category may affect the sleep
metrics.​

Based on the data, the hypothesis that sleep quality and duration are
positively correlate with healthy lifestyle (low stress, normal BMI,
high PAL) is proven correct. ​

However, no clear pattern was seen between daily step count and
sleep metrics. ​

More balanced data is needed to find statistically significant insights. ​

​
Data Quality Alert​​

⚠️ Potential Biases:​​

Age gap between genders​​

Uneven BP distribution​​

Uneven Distinct Age Counts​​

​​

Recommendations for Further
Analysis:​​

Consider a larger population sample
that is closer to a normal
distribution in terms of age ​​

Validate blood pressure
distributions against population
norms​

---

## References

1. Chattu VK, Manzar MD, Kumary S, Burman D, Spence DW, Pandi-Perumal SR. The Global Problem of Insufficient Sleep and Its Serious Public Health Implications. Healthcare (Basel). 2018 Dec 20;7(1):1. doi: 10.3390/healthcare7010001
2. Keyboard shortcuts in Excel: https://support.microsoft.com/en-us/office/keyboard-shortcuts-in-excel-1798d9d5-842a-42b8-9c99-9b7213f0040f

---

🥇💻
|Heasding 1|Heading2|
|----------|--------|
|Content|Content2|
|Python|SQL|

`column_1`



========================
