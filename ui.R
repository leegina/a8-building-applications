library(dplyr)
library(plotly)
shinyUI(fluidPage(
    # UI for the iris dataset/flower simulation
  titlePanel('Flower Data'),
  
  # Controls
  sidebarLayout(
    sidebarPanel(  
      #widgets: dropdown of iris column names to show on the plotly graph
      selectInput("selectX", label=h3("Select X axis"), 
                  choices = names(iris)
                 ),
      selectInput("selectY", label=h3("Select Y axis"),
                  choices = names(iris)
                  )
      ),
      
      #sliderInput("p_width", label=h3("Petal Width"), 
       #             min = as.numeric(iris %>% filter(Species=="setosa") %>% summarise(min(Petal.Width))), 
        #            max = as.numeric(iris %>% filter(Species=="versicolor") %>% summarise(max(Petal.Width))), 
         #           value=c(0,0), step=.1
          #        )
      
    
    # Render plot
    mainPanel(
      plotlyOutput("scatterplot")
    )
  ))
)
