# Step 2: Exploratory Data Analysis (EDA)
library(ggplot2)

# Load cleaned data
df <- readRDS("cleaned_bank_data.rds")

# 1. Visualization: Job vs Subscription
ggplot(df, aes(x = job, fill = y)) +
  geom_bar(position = "fill") +
  coord_flip() +
  theme_minimal() +
  labs(title = "Subscription Rate by Job Category",
       x = "Job Title", y = "Proportion")

# 2. Statistical Test: Chi-Square Test for Job and Subscription
job_test <- chisq.test(table(df$job, df$y))
print(job_test)

# 3. Visualization: Duration vs Subscription
ggplot(df, aes(x = y, y = duration, fill = y)) +
  geom_boxplot() +
  theme_classic() +
  labs(title = "Impact of Call Duration on Success",
       x = "Subscription (Yes/No)", y = "Duration (seconds)")