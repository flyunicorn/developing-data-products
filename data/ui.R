library(shiny)

shinyUI(
    fluidPage(
        #Page Title
        titlePanel("Pregnancy Weight Gain Calculator"),
        
        #Sidebar with a slider input for height and weight
        sidebarLayout(
            sidebarPanel(
                helpText(em("Select your pre-pregnancy weight and height 
                        using the sidebars below")),
                sliderInput("Weight","Your weight in kg:",min=30,max=200,value=60),
                sliderInput("Height","Your height in cm:",min=90,max=200,value=160)
            ),
            mainPanel(
                h3("Your pregnancy weight gain",align="center"),
                br(),
                textOutput("pBMI"),
                br(),
                verbatimTextOutput("PregGain"),
                br(),
                p("*The figures above indicate the average weight gain expected 
                        during your pregnancy based on your current BMI", style="font-family='times';
                        font-si16pt;color:blue;size:15px") 
                
            ))
        
    ))