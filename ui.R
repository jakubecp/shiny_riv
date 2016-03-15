
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Shiny RIV point calculator"),

  # Sidebar with a number of numeric inputs
  sidebarLayout(
    sidebarPanel(
      numericInput("cat1",
        "Number of journals in the first category:", 0,
        min = 1,
        max = 5000),
      
      
      numericInput("jour1",
                  "Ranking in the first category:", 0,
                  min = 1,
                  max = 5000)
      
      
    ),

    # Show a value 
    mainPanel(
      textOutput ("RIV_Points")
    )
  )
))
