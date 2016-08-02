
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

  output$RIV_Points <- renderPrint({

    # calculate riv points
    n1 <- (input$jour1-1)/(input$cat1-1)
    f1 <- (1-n1)/(1+(n1/0.057))
    r1 <- 10+295*f1
    percent <- input$jour1 / input$cat1 * 100
    if (percent > 100) {quartill <- 0
    } # I have to figure out how to calculate quartill for categories with less then 4 journals...
    if (percent <= 100) {quartill <- 4
    } 
    if (percent <= 75) {quartill <- 3
    }
    if (percent <= 50) {quartill <- 2
    }
    if (percent <= 25) {quartill <- 1
    }
    names <- c("riv", "percent", "quartill")
    values <- c(r1,percent, quartill)
    tab <- data.frame(names,values)
    
    val <- is.numeric(r1)
    journal1 <- is.integer(input$jour1)
    cat1 <- is.integer(input$cat1)
    check1 <- input$jour1 - input$cat1
    
    if (input$jour1 < 1.000) {print ("Journal rank cannot be smaller then one!")
      
    } else if (journal1 == FALSE) {print ("Please, provide meaningful values")
      
    } else if (cat1 == FALSE) {print ("Please, provide meaningful values")
      
    } else if (check1 > 0) {print ("Rank of the journal is bigger then number of journals in its category!")
      
    } else {print(tab)
      
    }  
    
    
    
    

     


  })

})
