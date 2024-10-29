#' Identify Countries with High Food Prices
#'
#' This function returns a list of countries with abnormally high food prices in a given year.
#'
#' @param data A data frame containing high food prices data.
#' @param year An integer representing the year for which to identify countries.
#' @param threshold A numeric threshold (default 50%) for abnormal prices.
#' @return A vector of countries with abnormally high food prices for the specified year.
#' @export
identify_high_price_countries <- function(data, year, threshold = 50) {
  data %>%
    filter(Year == year, High_Food_Price_Abnormal >= threshold) %>%
    pull(Entity)
}
