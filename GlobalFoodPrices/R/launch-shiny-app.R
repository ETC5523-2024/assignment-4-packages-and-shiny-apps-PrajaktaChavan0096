#' Launch the Shiny App
#'
#' This function launches the Shiny app for exploring global food price data.
#' @export
launch_shiny_app <- function() {
  shiny::runApp(system.file("shiny-app", package = "GlobalFoodPrices"))
}
