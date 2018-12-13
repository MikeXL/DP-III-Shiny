
#

library(shiny)
library(nnet)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$predPlot <- renderPlot({
    
    # fit neural net
    m <- nnet(Species ~ Sepal.Length + Sepal.Width, data=iris, size=input$num_neurons)
    pred <- predict(m, iris, type="class")
    
    
    # draw scatter plot for validation
    plot(iris$Sepal.Length, iris$Sepal.Width, col=as.integer(iris$Species)+10, pch=as.integer(factor(pred)), frame=F, axes=F, xlab="Sepal Length", ylab="Sepal Width")
    legend("topright", legend=c("setosa", "versicolor", "virginica"), col=c(11,12,13), pch=c(1,2,3), bty="n")
    
  })
  
  
})
