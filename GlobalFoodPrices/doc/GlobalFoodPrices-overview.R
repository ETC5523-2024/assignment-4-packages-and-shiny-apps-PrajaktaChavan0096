## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(GlobalFoodPrices)
library(dplyr) # Load dplyr to enable the %>% operator


## -----------------------------------------------------------------------------
avg_expenditure <- calculate_yearly_avg_expenditure(cleaned_food_expenditure, year = 2020)
print(avg_expenditure)


## -----------------------------------------------------------------------------
# Uncomment to launch the Shiny app (interactive use only)
# launch_shiny_app()


