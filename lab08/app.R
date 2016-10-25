#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
library(ggplot2)
library(shiny)
ad_data <- read.csv("Advertising.csv")

# Define UI for application that draws a histogram
ui <- shinyUI(fluidPage(
   
   # Application title
   titlePanel("Advertising Data"),

   sidebarLayout(
      sidebarPanel(
        selectInput("adType", "Select Ad Type:", c("TV", "Radio","Newspaper"))

      ),
      
      # Show a plot of the generated distribution
      mainPanel(
         plotOutput("salePlot")
      )
   )
))

# Define server logic required to draw a histogram
server <- shinyServer(function(input, output) {
   data <- reactive({ad_data[ ,c(input$adType,"Sales")]
     })
   
   output$salePlot <- renderPlot({
      plot(data())
   })
})

# Run the application 
shinyApp(ui = ui, server = server)