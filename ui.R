library(shiny)

# Define UI for application that draws a histogram
shinyUI(pageWithSidebar(
        
        # Application title
        headerPanel("Miles Per Gallon"),
        
        # Sidebar with controls to select the variable to plot against mpg
        # and to specify whether outliers should be included
        sidebarPanel(
                selectInput("variable", "Variable:",
                            list("Cylinders" = "cyl", 
                                 "Transmission" = "am", 
                                 "Gears" = "gear")),
                
                sliderInput("slider1", label = "Minimum Horsepower", min = 52, max = 335, value = 100)
        ),
        
        # Show the caption and plot of the requested variable against mpg
        mainPanel(
                h3(textOutput("caption")),
                
                plotOutput("mpgPlot")
        )
))