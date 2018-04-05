# ui.R
library(shiny)

ui <- fluidPage(
  fluidRow(
    column(12, align="center", tags$h2("My first app in Shiny"))),
  fluidRow(
    column(4, align="center",
           textInput(inputId = "title",
                     label = "Write a title",
                     value = "Histogram of Random Normal Values"),
           actionButton(inputId = "go",
                        label = "Update")),
    column(4,align="center",
           actionButton(inputId = "norm", label = "Normal"),
           actionButton(inputId = "unif", label = "Uniform")),
    column(4, align="center",
           sliderInput(inputId = 'num',
                       label = 'Choose a number',
                       value = 25, min = 1, max = 100))),
  fluidRow(
    column(12, align="center", plotOutput("hist"))),
  fluidRow(
    column(12, align="center",
           tags$h4("Follow my blog"),
           tags$em("This is a Shiny app."),
           tags$a(href = "https://github.com/scanasca10", "www.github.com"))),
  fluidRow(
    column(12)),
  fluidRow(
    column(12, align="center", tags$p("The Shiny app gives us the histogram of a number of samples that we enter through a bar icon.
                                      Then, we can decide if we want to plot a normal distribution by clicking in the 'Normal'button or
                                      if we want to plot an uniform distribution by clicking in the 'Uniform' button."))),
  fluidRow(
    column(12, align="center", tags$p("Then, we can decide which kind of title we want to introduce in the figure by setting the title in the box
and then clicking the button 'Update'."))))