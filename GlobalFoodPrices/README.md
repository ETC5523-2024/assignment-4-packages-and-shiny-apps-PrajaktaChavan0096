
# GlobalFoodPrices

## Overview

**GlobalFoodPrices** is an R package designed to analyze global food
expenditure and high food price trends. It provides users with tools to
explore food expenditure patterns across countries and assess the
prevalence of high food prices over time. The package includes functions
for calculating average food expenditure, identifying countries with
high food prices, and analyzing expenditure growth. An interactive Shiny
app allows users to visualize and engage with the data.

## Key Features

- **Global Food Expenditure Data**: Access comprehensive data on food
  expenditure per person across various countries and years.

- **High Food Price Analysis**: Examine the proportion of countries
  experiencing high food prices and how these trends change over time.

- **Interactive Visualization**: Utilize the built-in Shiny app to
  explore the data interactively, including options to filter by year
  and country.

- **Analytical Functions**: Built-in functions for calculating average
  food expenditure, identifying countries with high food prices, and
  measuring expenditure growth between years.

## Installation

You can install the development version of `GlobalFoodPrices` directly
from GitHub:

``` r
# Install GlobalFoodPrices from GitHub
remotes::install_github("ETC5523-2024/assignment-4-packages-and-shiny-apps-PrajaktaChavan0096")
```

## Usage

### 1. Launching the Shiny App

Run the Shiny app to interactively explore global food expenditure and
high food price data:

``` r
GlobalFoodPrices::launch_shiny_app()
```

### 2. Analyzing Food Expenditure Trends

You can use GlobalFoodPrices functions to calculate average food
expenditure and explore trends in high food prices across different
countries.

``` r
# Example: Calculating Average Food Expenditure for a Specific Year
library(GlobalFoodPrices)
avg_expenditure <- calculate_yearly_avg_expenditure(cleaned_food_expenditure, year = 2020)
print(avg_expenditure)

# Example: Identifying Countries with High Food Prices in a Given Year
high_price_countries <- identify_high_price_countries(cleaned_high_food_prices, year = 2020, threshold = 50)
print(high_price_countries)
```

## Data Sources

Global Food Expenditure Data: Data on annual food expenditure per person
across countries. High Food Price Data: Data indicating the proportion
of countries experiencing high food prices over time.

## License

This project is licensed under the MIT License. See the LICENSE file for
more details.

## Contributions

Contributions are welcome! Feel free to fork the repository, submit pull
requests, or report issues to help improve the package.

## Documentation

For full documentation and tutorials, visit the pkgdown site here:
GlobalFoodPrices Documentation

### Key Sections Updated

1.  **Overview**: A brief description of the package’s purpose and main
    features.
2.  **Key Features**: Summarizes the main features available in
    `GlobalFoodPrices`.
3.  **Installation**: Instructions to install from GitHub.
4.  **Usage Examples**: Demonstrates the main functions and how to use
    them, including launching the Shiny app and analyzing data.
5.  **Data Sources**: Lists the sources of data used in the package.
6.  **License** and **Contributions**: Details about the license and how
    users can contribute.
7.  **Documentation**: Links to the package’s documentation site.

After editing `README.Rmd`, use `devtools::build_readme()` to render
`README.md` based on `README.Rmd`, so both files stay in sync:

``` r
devtools::build_readme()
```
