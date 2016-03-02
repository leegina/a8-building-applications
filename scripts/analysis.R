
# function to make the scatterplot showing the relationship between the 
#   x & y values

library(plotly)
library(dplyr)

make_sp <- function(df, x, y) {
  xlabel <- list(
    title = deparse(substitute(x))
  )
  ylabel <- list(
    title = deparse(substitute(y))
  )
  sp <- plot_ly(df, 
                x = x,
                y = y, 
                #text = paste(eval(paste(text = "x")), ":", x, eval(paste(text = "y")), ":", y),
                mode = "markers",
                color = Species, colors = "Set1") %>% 
    layout(xaxis=xlabel, yaxis=ylabel)
  
  return (sp)
}

