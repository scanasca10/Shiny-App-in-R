# server.R
library(shiny)
server <- function(input, output){
  
  rv <- reactiveValues(data = rnorm(100))
  
  data <- reactive({
    rnorm(input$num) # cache in memory
  })
  
  d <- observeEvent(input$go, {data()})
  
  observeEvent(input$norm, {rv$data <- rnorm(100) })
  
  observeEvent(input$unif, {rv$data <- runif(100) })
  
  output$hist <- renderPlot({
    hist(rv$data , main = isolate(input$title))
  })
  
  output$stats <- renderPrint({
    summary(data())
  })
}