
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("An Plain vanilla Neural Network with Iris flowers data"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("num_neurons",
                   "Select Number of Neurons:",
                   min = 1,
                   max = 50,
                   value = 12)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("predPlot")
    )
  )
))
