# Title: Predictive Modeling
# Objective: Use Logistic Regression to predict term deposit subscriptions
# Step 3: Predictive Analytics (Logistic Regression)

# Load cleaned data
df <- readRDS("cleaned_bank_data.rds")

# Build the Logistic Regression Model
model <- glm(y ~ age + job + marital + balance + duration, 
             data = df, family = binomial)

# Print Model Summary
summary(model)

# Extracting Insights: Convert coefficients to Odds Ratios
exp(coef(model))
