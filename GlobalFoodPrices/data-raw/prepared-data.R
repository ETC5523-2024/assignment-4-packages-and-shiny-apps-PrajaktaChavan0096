# Load necessary libraries
library(dplyr)
library(tidyr)
library(readr)
library(usethis)

# Load the datasets
food_expenditure <- read_csv("data-raw/food-expenditure-per-person-per-year.csv")
high_food_prices <- read_csv("data-raw/share-of-countries-recording-high-food-prices.csv")

# Cleaning food_expenditure dataset
cleaned_food_expenditure <- food_expenditure %>%
  drop_na() %>%
  mutate(
    Year = as.integer(Year),                                   # Convert Year to integer
    `Total food expenditure` = as.numeric(`Total food expenditure`)  # Convert Total food expenditure to numeric
  )

# Cleaning high_food_prices dataset
cleaned_high_food_prices <- high_food_prices %>%
  drop_na() %>%
  mutate(
    Year = as.integer(Year),
    High_Food_Price_Abnormal = as.numeric(`2.c.1 - Proportion of countries recording abnormally high or moderately high food prices, according to the Indicator of Food Price Anomalies (%) - AG_FPA_HMFP - Abnormal: High food prices`),
    High_Food_Price_Moderate = as.numeric(`2.c.1 - Proportion of countries recording abnormally high or moderately high food prices, according to the Indicator of Food Price Anomalies (%) - AG_FPA_HMFP - Moderate: Moderately high food prices`)
  )

use_data(cleaned_food_expenditure, overwrite = TRUE)
use_data(cleaned_high_food_prices, overwrite = TRUE)

