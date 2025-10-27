#importing libraries
library(dplyr)      
library(tidyr)

#importing CVS
daily_activity <- read.csv("C:/Users/valer/OneDrive/Desktop/DA Projects/Bellabeat -Google Capstone Project/Project Files/daily_activity_table.csv")

#inspecting data
View(daily_activity)
head(daily_activity)
summary(daily_activity)

#finding the aberage, minimun, and maximun steps by user
avg_steps <- daily_activity %>%
  group_by(user_id) %>%
  summarize(avg_steps = mean(total_steps, na.rm = TRUE))

min_steps <- daily_activity %>%
  group_by(user_id) %>%
  summarize(min_steps = min(total_steps, na.rm = TRUE))

max_steps <- daily_activity %>%
  group_by(user_id) %>%
  summarize(max_steps = max(total_steps, na.rm = TRUE))

#aggregating the average number of steps, calories, sedentary minutes, total distance
user_summary <- daily_activity %>%
  group_by(user_id) %>% ##grouping aggregations by user id
  #using summarize function to aggregate
  summarize(avg_steps = mean(total_steps, na.rm = TRUE),
            avg_calories = mean(calories, na.rm = TRUE),
            avg_sedentary_minutes = mean(sedentary_minutes, na.rm = TRUE),
            avg_total_distance = mean(total_distance, na.rm = TRUE))

#correlation between average steps and average calories
library(ggplot2) #importing library for visualizations

#avg total steps vs acg calories
ggplot(user_summary, aes(x = avg_steps, y = avg_calories)) +
  geom_point(color = "blue", size = 3) + #making scatter plot with set color and size
  geom_smooth(method = "lm", se = FALSE, color = "red") + #adding trend line 
  labs(title = "Average Steps vs Average Calories", #adding title and labels on both axes
       x = "Average Steps",
       y = "Average Calories")

#correlations between avg steps and avvg total distance
ggplot(user_summary,aes(x = avg_steps, y = avg_total_distance)) +
  geom_point(color = "blue", size = 3) + 
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "Average Steps vs Average Total Distance",
       x = "Average Steps",
       y = "Average Total Distance")

#correlation between sedentayr minutes and calories
ggplot(user_summary, aes(x = avg_sedentary_minutes, y = avg_calories)) + 
  geom_point(color = "blue", size = 3) + #scater plot with set color and size
  geom_smooth(method = "lm", se = FALSE, color = "red") + 
  labs(title = "Average Sedentary Minutes vs Average Calories", #adding title and labels
       x = "Average Sedentary Minutes",
       y = "Average Calories")
