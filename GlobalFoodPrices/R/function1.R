#' Calculate Yearly Average Food Expenditure
#'
#' This function calculates the average food expenditure for a specified year across all entities.
#'
#' @param data A data frame containing the food expenditure data.
#' @param year An integer representing the year for which to calculate the average.
#' @return A numeric value representing the average food expenditure for the specified year.
#' @export
calculate_yearly_avg_expenditure <- function(data, year) {
  data %>%
    filter(Year == year) %>%
    summarise(avg_expenditure = mean(`Total food expenditure`, na.rm = TRUE)) %>%
    pull(avg_expenditure)
}
