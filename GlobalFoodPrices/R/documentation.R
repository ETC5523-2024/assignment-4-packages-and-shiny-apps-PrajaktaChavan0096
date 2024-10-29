#' Cleaned Food Expenditure Data
#'
#' This dataset contains the cleaned data on food expenditure per person per year.
#' @format A data frame with columns:
#' \describe{
#'   \item{Entity}{Country name}
#'   \item{Code}{Country code}
#'   \item{Year}{Year of record}
#'   \item{Total food expenditure}{Total food expenditure per person}
#' }
"cleaned_food_expenditure"

#' Cleaned High Food Prices Data
#'
#' This dataset contains the proportion of countries recording abnormally high food prices.
#' @format A data frame with columns:
#' \describe{
#'   \item{Entity}{Country name}
#'   \item{Code}{Country code}
#'   \item{Year}{Year of record}
#'   \item{High_Food_Price_Abnormal}{Proportion of countries with abnormally high food prices}
#'   \item{High_Food_Price_Moderate}{Proportion of countries with moderately high food prices}
#' }
"cleaned_high_food_prices"
