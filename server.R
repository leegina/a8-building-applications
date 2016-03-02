#install.packages("devtools")
#devtools::install_github("rstudio/rsconnect")
library(rsconnect)
#rsconnect::deployApp('C:/Users/Gina/Documents/info498f/a8-building-applications')
setwd('C:/Users/Gina/Documents/info498f/a8-building-applications')
shinyServer(function(input, output, session) {
  library(plotly)
  library(dplyr)
  source('scripts/analysis.R')

  output$scatterplot  <- renderPlotly({
    #xVal <- iris$input$selectX
    #yVal <- iris$input$selectY
    #make_sp(iris, iris$xVal, iris$yVal) #input$selectY
    make_sp(iris, iris$Sepal.Width, iris$Sepal.Length) #input$selectY
  })
})
