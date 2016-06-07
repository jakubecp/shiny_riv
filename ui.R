
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#
library(shiny)
library(rsconnect)
# Authorize Account
rsconnect::setAccountInfo(name='jakubecp',
                          token='5FE9CE5E446ED34BED76C8F102ED84DC',
                          secret='G92rCJTmJtMwjENE89CD6AmzmcZgTD8jaNvqDcPK')
#deploy the shiny app
rsconnect::deployApp()

shinyUI(fluidPage(

  # Application title
  titlePanel("Shiny RIV point calculator"),

  # Sidebar with a number of numeric inputs
  sidebarLayout(
    sidebarPanel(
      numericInput("cat1",
        "Number of journals at the first category:", 0,
        min = 1,
        max = 5000),
      
      
      numericInput("jour1",
                  "Ranking in the first category:", 0,
                  min = 1,
                  max = 5000)
      
      
    ),

    # Show a value 
   
    mainPanel(
      tags$h3 ("RIV points:",textOutput ("RIV_Points"))
      
    )
  )
))
