library(shiny)

#load mtcars data
data(mtcars)

#build linear model using mpg as dependent variable and wt and am as 
# independent variables
fit <- lm(mpg~wt+factor(am), data=mtcars)

#function to predict the mpg
mpg <- function(wt, am) {fit$coeff[1] + fit$coeff[2] * wt + fit$coeff[3] * am}

shinyServer(function(input, output) {
  
  output$text1 <- renderText({ 
    input$trnstype
   
  })
  
  output$text2 <- renderText({ 
     input$n
    
  })
  
  output$text3 <- renderText({ 
    
     mpg(input$n, ifelse(input$trnstype == "Automatic",0,1))
    
  })
  
})