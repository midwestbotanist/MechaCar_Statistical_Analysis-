# PART 1: Linear Regression to Predict MPG

# Use library function to load dplyr package (found in tidyverse)
# jsonlite library allows JSON data structures to be converted to an R data frame
library(tidyverse)
library(jsonlite)

# Import and read MechCar_mpg.csv as a dataframe and check data
mechaCar_mpg_df <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)
head(mechaCar_mpg_df)

# Use lm() function to perform linear regression, passing in all six variables
# Source: http://www.sthda.com/english/articles/40-regression-analysis/168-multiple-linear-regression-in-r/
# Since all variables used from mechaCar_mpg_df dataset, "mpg ~ ." is cleaner than writing them all out
mpg_lm = lm(mpg ~ ., data=mechaCar_mpg_df)
# Find p-value and r-squared value using the summary() function
summary(mpg_lm)

# PART 2: Summary Statistics on Suspension Coils

# PART 3: T-Test on Suspension Coils

# PART 4: Design a Study Comparing the MechCar to the Competition
