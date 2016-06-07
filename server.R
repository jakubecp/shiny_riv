
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

  output$RIV_Points <- renderText({

    # calculate riv points
    n1 <- (input$jour1-1)/(input$cat1-1)
    f1 <- (1-n1)/(1+(n1/0.057))
    r1 <- 10+295*f1
    
    
    # if (r1 =! 1:305) {
    #   print ("Privide meaningful values")
    # }
    #   else {
        print (r1)
      # }


  })

})
