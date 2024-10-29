#' Summarize High Food Prices by Year
#'
#' This function summarizes the high food prices proportion data by year.
#'
#' @param data A data frame containing high food prices data.
#' @return A data frame summarizing the average, minimum, and maximum high food price percentages per year.
#' @export
summarize_high_food_prices <- function(data) {
  data %>%
    group_by(Year) %>%
    summarise(
      avg_high_price = mean(High_Food_Price_Abnormal, na.rm = TRUE),
      min_high_price = min(High_Food_Price_Abnormal, na.rm = TRUE),
      max_high_price = max(High_Food_Price_Abnormal, na.rm = TRUE)
    )
}
