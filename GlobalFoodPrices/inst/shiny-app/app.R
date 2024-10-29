# Load necessary libraries
library(shiny)
library(dplyr)
library(ggplot2)
library(shinythemes)
library(GlobalFoodPrices) # Load your package to access internal datasets

# Load datasets from the package
data("cleaned_food_expenditure")
data("cleaned_high_food_prices")

# Define UI
ui <- fluidPage(
  theme = shinytheme("cerulean"),  # Applying "cerulean" theme for styling
  titlePanel("Global Food Prices Analysis"),

  sidebarLayout(
    sidebarPanel(
      # Interactive input for selecting a year
      selectInput("year", "Select Year:", choices = unique(cleaned_food_expenditure$Year)),
      helpText("Select a year to view the food expenditure data for different countries.")
    ),

    mainPanel(
      # Output: Dynamic plot based on selected year
      plotOutput("pricePlot"),
      # Output: Text for interpretation of the plot
      textOutput("interpretationText")
    )
  )
)

# Define server logic
server <- function(input, output, session) {
  # Render the dynamic plot based on selected year
  output$pricePlot <- renderPlot({
    filtered_data <- cleaned_food_expenditure %>% filter(Year == input$year)
    ggplot(filtered_data, aes(x = Entity, y = `Total food expenditure`)) +
      geom_bar(stat = "identity", fill = "steelblue") +
      theme_minimal() +
      labs(title = paste("Food Expenditure for", input$year),
           x = "Country", y = "Food Expenditure (per person)")
  })

  # Render the interpretation text based on the selected year
  output$interpretationText <- renderText({
    paste("The plot displays the food expenditure per person for the selected year:", input$year,
          "across various countries. Taller bars indicate higher expenditure, which may suggest greater spending on food in these countries.")
  })
}

# Run the Shiny application
shinyApp(ui = ui, server = server)
