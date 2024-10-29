#' Calculate Expenditure Growth Rate
#'
#' This function calculates the growth rate of food expenditure between two specified years.
#'
#' @param data A data frame containing the food expenditure data.
#' @param year_start The starting year for growth rate calculation.
#' @param year_end The ending year for growth rate calculation.
#' @return A data frame with each entity's growth rate in food expenditure.
#' @export
calculate_expenditure_growth <- function(data, year_start, year_end) {
  data %>%
    filter(Year %in% c(year_start, year_end)) %>%
    select(Entity, Year, `Total food expenditure`) %>%
    spread(Year, `Total food expenditure`) %>%
    rename(start_expenditure = `year_start`, end_expenditure = `year_end`) %>%
    mutate(growth_rate = ((end_expenditure - start_expenditure) / start_expenditure) * 100) %>%
    select(Entity, growth_rate)
}
