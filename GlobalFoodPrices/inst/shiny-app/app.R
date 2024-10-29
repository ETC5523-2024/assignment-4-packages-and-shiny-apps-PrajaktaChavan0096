library(shiny)

ui <- fluidPage(
  titlePanel("Global Food Prices Analysis"),
  sidebarLayout(
    sidebarPanel(
      selectInput("year", "Select Year", choices = unique(cleaned_food_expenditure$Year))
    ),
    mainPanel(
      plotOutput("price_plot")
    )
  )
)

server <- function(input, output) {
  output$price_plot <- renderPlot({
    data <- cleaned_food_expenditure %>% filter(Year == input$year)
    ggplot(data, aes(x = Entity, y = `Total food expenditure`)) +
      geom_bar(stat = "identity") +
      theme_minimal() +
      labs(title = paste("Food Expenditure for", input$year))
  })
}

shinyApp(ui, server)
