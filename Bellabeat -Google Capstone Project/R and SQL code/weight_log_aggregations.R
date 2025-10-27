#importing libraries
library(dplyr)
library(tidyr)
library(ggplot2)

#importing file and inspecting file
weight_info_log <- read.csv(choose.files())
head(weight_info_log)
View(weight_info_log)
summarise(weight_info_log)

#finding the avrage weight in lbs and kgs, and the avg bmi
user_weight_summary <- weight_info_log %>% 
  group_by(user_id) %>% #grouping avgs by user id
  summarize(avg_weight_kg = mean(weight_kg, na.rm = TRUE),
            avg_weight_pounds = mean(weight_pounds, na.rm = TRUE),
            avg_bmi = mean(bmi, na.rm = TRUE))

#finding thr min and max weight in kg by user
user_min_max_kgs <- weight_info_log %>% 
  group_by(user_id) %>% #grouping by user
  summarize(min_weight_kgs = min(weight_kg, na.rm = TRUE),
            max_weight_kgs = max(weight_kg, na.rm = TRUE))

#amoung change of weight amount users
ggplot(user_min_max_kgs, aes(x = factor(user_id), 
                             y = max_weight_kgs - min_weight_kgs)) +#subtracting to see weight change
  geom_bar(stat = "identity") +
  labs(title = "Weight Change per User",
       x = "User ID",
       y = "Change in Weight (kg)") + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) #tilting labels in x axis for better look

#did users manually track data
ggplot(weight_info_log, aes(x = factor(user_id), fill = is_manual_report)) +
  geom_bar() + #bar chart to count how many times the users tracked manually
  labs(title = "Manual vs Automatic Tracking by User", #adding labels
       x = "User ID",
       y = "Number of Weight Entries",
       fill = "Manually Tracked") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) #adjusting axis labels for better view

#saving R data files
save(user_min_max_kgs, file = "user_min_max_kgs")
save(user_weight_summary, file = "user_weight_summary")