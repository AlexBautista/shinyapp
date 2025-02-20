# app.R
library(shiny)

ui <- fluidPage(
  titlePanel("Hello Shiny App"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("slider", "Select a number", min = 1, max = 100, value = 50)
    ),
    mainPanel(
      textOutput("result")
    )
  )
)

server <- function(input, output) {
  output$result <- renderText({
    paste("You selected", input$slider)
  })
}

shinyApp(ui = ui, server = server)
