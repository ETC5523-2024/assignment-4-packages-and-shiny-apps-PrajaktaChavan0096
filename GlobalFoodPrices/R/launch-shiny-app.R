#' Launch the Shiny App
#'
#' This function launches the Shiny app for exploring food price data.
#' @export
launch_shiny_app <- function() {
  shiny::runApp(system.file("shiny-app", package = "GlobalFoodPrices"))
}
