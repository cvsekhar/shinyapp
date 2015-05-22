library(shiny)

#UI for calculating mpg based on wt and hp
shinyUI(navbarPage("Predict MPG",
  tabPanel("Prediction",  
 
  
  sidebarLayout(
  sidebarPanel(
    radioButtons("trnstype", "Transmission type:",
                 list("Automatic" = "Automatic",
                      "Manual" = "Manual")),
    br(),
    
    sliderInput("n", 
                "Gross Vehicle Weight 1000/lb:", 
                value = 0,
                min = 1, 
                max = 6,
                step= 0.1)
  ),
  
  # Show a tabset that includes a plot, summary, and table view
  # of the generated distribution
  mainPanel(
       p("You have selected the following transmission type: "),
       verbatimTextOutput("text1"),     
       br(),
       p("You have selected the following weight 1000/lb: "),
       verbatimTextOutput("text2"),
       br(),
       p("Predict mpg for the above variables: "),
       verbatimTextOutput("text3")
    )
  )
),
tabPanel("Documentation",
         
         sidebarLayout(
           sidebarPanel("Hints"),
           mainPanel(
             
             
             h3("Objective"),
             
             p("We try to predict the mpg based on the weight and transmission type of the car using basic linear model"),
             
             h3("Dataset"),
             
             p("We use the default mtcars dataset available with R"),
          
             h3("Prediction"),
             
             p("The user needs to select the transmission type and provide a weight by dragging the slider. the predicted output mpg is calculated based on the model fit"),
             
             h3("ui.R"),
             
             p("The UI uses navbar style format. Prediction tab is used to caluclate the mpg. The documentation tab provides the documentation"),
             
             h3("server.R"),
             
             p("The server when run for the first time loads the mtcars dataset runs a linear model. The mpg function is used to calcualte the mpg form model coefficients when supplied with values from UI. "),
             
             
             h3("Installing the application from source"),
             
             code("runGitHub( \"shinyapp\", \"cvsekhar\")"),
             
             p("or"),
             
             code("git clone git@github.com:cvsekhar/shinyapp.git"),
             
             br(),
             
             code("cd shinyapp"),
             
             br(),
             
             code("runApp(\"shinyapp\")")
             
             
             
         
         
         
         
         
         
         )))



))