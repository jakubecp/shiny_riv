
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

shinyUI(fluidPage(

  # Application title
  titlePanel("Shiny RIV point calculator"),

  # Sidebar with a number of numeric inputs
  fluidRow(
    sidebarPanel(tags$h4("Provide values from InCites - Journal Citation Reports"), tags$a(href="https://jcr-incites-thomsonreuters-com.infozdroje.czu.cz/JCRJournalHomeAction.action?SID=A1-rqLofhhSS3hxxWoNjiiggonsJcu8g19rr-18x2dZWgQi1ONLdEPrQKQ8eH2vwx3Dx3D5upqzgx2BTI1d7uB0rIqKnGAx3Dx3D-9vvmzcndpRgQCGPd1c2qPQx3Dx3D-wx2BJQh9GKVmtdJw3700KssQx3Dx3D&refineString=null&SrcApp=IC2LS&timeSpan=null&Init=Yes&wsid=Y2jqz6wpKoxOgL7yixj", "Web of Science", target="blank"), tags$br(),tags$br(),
      numericInput("cat1",
        "Number of journals at the first category:", 1,
        min = 1,
        max = 5000),
      
      
      numericInput("jour1",
                  "Ranking in the first category:", 1,
                  min = 1,
                  max = 5000),
      
      tags$h5 ("RIV point calculation for journals in multiple categories will be integrated soon...")
      
      # #two categories
      # numericInput("cat2",
      #   "Number of journals at the second category:", 1,
      #   min = 1,
      #   max = 5000),
      # numericInput("jour2",
      #   "Ranking in the second category:", 1,
      #   min = 1,
      #   max = 5000),
      # 
      # #three categories
      # numericInput("cat3",
      #   "Number of journals at the third category:", 1,
      #   min = 1,
      #   max = 5000),
      # 
      # 
      # numericInput("jour3",
      #   "Ranking in the third category:", 1,
      #   min = 1,
      #   max = 5000),
      # 
      # #four categories
      # numericInput("cat4",
      #   "Number of journals at the fourth category:", 1,
      #   min = 1,
      #   max = 5000),
      # 
      # 
      # numericInput("jour4",
      #   "Ranking in the fourth category:", 1,
      #   min = 1,
      #   max = 5000)
      # 
      
      
      
    ),
    

    # Show a value 
   
    column(8,
      tags$h2 ("Your RIV points:",textOutput ("RIV_Points"))
      
    )
  )
))
