# Project: Bank Marketing Campaign Analysis
# Title: Data Preprocessing
# Objective: Load raw data and handle formatting issues

# Step 1: Data Loading and Cleaning

# Load necessary library
if (!require("dplyr")) install.packages("dplyr")
library(dplyr)

# Load the dataset with semicolon separator
df <- read.csv("bank-full.csv", sep = ";", stringsAsFactors = TRUE)

# Check for missing values
cat("Missing values per column:\n")
print(colSums(is.na(df)))

# Data Summary
summary(df)

# Save cleaned data for next steps
saveRDS(df, "cleaned_bank_data.rds")
