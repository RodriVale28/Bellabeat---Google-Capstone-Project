# Case Study 2 - Google Capstone Project
This project analyzes an FitBit data to show the correlations between activity, calories burned and weight changes. Findings of this projects are used to inform BellaBeat about potential marketing startegies.

## SQL Work
**🛠  Skills Used:**
  * COUNT(), GROUP BY, HAVING, WHERE
  * Removed duplicates, column name standardization, checked for NULL values

**Summary of Steps**
  * Checked for duplicates
  * Checked for NULL values and dropped tables
  * Checked for invalid values (ex: bmi < 0)
  * Standardized names
  * Created two tables with appropriate data types

## R Work (PostgreSQL)
**🛠  Skils Used:**
 * Inspeted data with VIEW(), HEAD(), and SUMMARY()
 * Summarized and aggregated data(MEAN(), MIN(), MAX())
 * Created visualizations (scatter plots, bar charts) to explore relationship between variables

**Summary Of Steps**
 * Used aggregation functions to calculate the average of variables such as calories, total steps, weight (kg), and BMI.
 * Calculated minumum and maxumun total steps and weight(Kgs).
 * Used scatter plots to explore the relationship between variables such as total steps, calories, and sedentary minutes.
 * Bar graphs were used to compare averages and counts across users, such as weight changes and manual versus automatic tracking

## 📊 Visuals

<img width="426" height="171" alt="image" src="https://github.com/RodriVale28/Bellabeat---Google-Capstone-Project/blob/main/Bellabeat%20-Google%20Capstone%20Project/Visualizations/Average%20Steps%20vs%20Average%20Calories.png?raw=true" />

*This SQL query calculates the number of claims and average total claim amount for each age group, highlighting trends across different customer age ranges.*


<img width="563" height="188" alt="image" src="https://github.com/user-attachments/assets/c42115c9-e468-47f4-8186-6d753b2ae6ec" />

*This PivotTable summarizes fraud claims by incident type. It shows both the number of fraudulent claims and the total claim amount for each type.*



<img width="630" height="501" alt="Screenshot 2025-10-11 164430" src="https://github.com/user-attachments/assets/2c8d6fe9-2525-416d-b1fb-fb88f84f52ea" />

*This pie chart shows the distribution of fraudulent claims by state. New York and South Carolina account for the highest proportion of fraud cases, together making up nearly 53% of total frauds.*



## 📝 Conclusion

This analysis of auto insurance claims data reveals several key insights:

  * Age Group Analysis: Customers aged 36–50 have the highest number of claims, indicating a potential focus area for risk assessment and policy adjustments.

  * Fraudulent Claims: Single Vehicle Collision claims account for the highest number and total value of fraudulent claims, highlighting the need for targeted fraud prevention measures in this category.
 
  * State Incident Claims and Fraud: About one-third of all fraud claims occur in North Carolina, indicating that newer policyholders in this state may require monitoring to reduce fraudulent claims.

These findings provide actionable insights for insurance providers to refine their risk management strategies and enhance fraud detection systems.

## Things to Consider 
 * Trends observed at the state level might not reflect the full picture, since not every state was represented.
 * Some records contained missing, inconsistent, or incorrect values. For example, three columns with excessive missing data were removed, which may influence aggregated results.
 * Findings reflect only the period included in the dataset; patterns could differ in other periods.


**Note:** The Pivot Tables and charts above are based on SQL queries executed in PostgreSQL

**Data Source:** This project uses data made available by [Auto Insurance Claims Data on Kaggle](https://www.kaggle.com/datasets/buntyshah/auto-insurance-claims-data).



