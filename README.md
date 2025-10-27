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

<img width="500" height="450" alt="image" src="https://github.com/RodriVale28/Bellabeat---Google-Capstone-Project/blob/main/Bellabeat%20-Google%20Capstone%20Project/Visualizations/Average%20Steps%20vs%20Average%20Calories.png?raw=true" />

*This scatter plot in R illustrates the relationship between users' average steps and calories, highlighting how the two variables relate proportionally.*


<img width="500" height="450" alt="image" src="https://github.com/RodriVale28/Bellabeat---Google-Capstone-Project/blob/main/Bellabeat%20-Google%20Capstone%20Project/Visualizations/Average%20Steps%20vs%20Average%20Total%20Distance.png?raw=true" />

*This scatter plot summarizes how the number of steps relates directly to the distance traveled.*


<p float="left">
  <img width="450" height="400" alt="Screenshot 2025-10-11 164430" src="https://github.com/RodriVale28/Bellabeat---Google-Capstone-Project/blob/main/Bellabeat%20-Google%20Capstone%20Project/Visualizations/Manual%20vs%20Manual%20Tracking%20by%20User.png?raw=true" />
  <img width="450" height="400" alt="Screenshot 2025-10-11 164430" src="https://github.com/RodriVale28/Bellabeat---Google-Capstone-Project/blob/main/Bellabeat%20-Google%20Capstone%20Project/Visualizations/Weight%20Change%20per%20User.png?raw=true" />
</p>

*These charts emphasize the value of consistently tracking activity, as only tracked data allows us to observe trends like weight changes and progress over time.*



## 📝 Conclusion

This analysis of the FitBit data highlights several key insights:

  * Among users who consistently tracked their activity, higher steps and calories burned were associated with weight loss, suggesting that monitoring and activity may support healthier outcomes.

  * Users who were more sedentary burned fewer calories, highlighting the link between inactivity and lower energy expenditure.
 
  * As expected, steps and distance are directly proportional, but the scatter plot also highlights variation in stride length among users.

Consider promoting how Bellabeat can help users turn daily activity into meaningful insights. Encouraging **consistent** tracking of steps, calories, and distance may support healthier habits and weight management. Personalized alerts and visualizations could motivate users to stay active every day.

## Things to Consider 
 * Some users may have lost or gained weight, but since not all tracked their activity, these results only reflect those who did.
 * Differences in stride length, metabolism, and lifestyle can affect steps, distance, and calories burned.
 * Extremely high or low values may represent errors or unusual behavior.
 * Not all users tracked every day, so averages may not reflect total activity.


**Data Source:** This project uses data made available by [FitBit Fitness Tracker Data on Kaggle](https://www.kaggle.com/datasets/arashnic/fitbit).



