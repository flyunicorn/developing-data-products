pBMI<-function(Weight,Height) {
    if (Weight==0 | Height==0) return(NA)
    else  return(round(Weight/(Height/100)^2,1))
}

preg_gain<-function(pBMI)
{
    
    if (is.na(pBMI)) return ("")
    else {
        if(pBMI<18.5) return("You should gain between 12.5kg and 18kg")
        if(pBMI>=18.5 & pBMI<24.9) return("You should gain between 16kg and 24kg")
        if(pBMI>=25 & pBMI<29.9) return ("You should gain between 14kg and 23kg")
        if(pBMI>=30) return ("You should gain between 11kg and 19kg")
    }}

shinyServer(function(input, output) {
    
    output$pBMI <- renderText({
        paste("BMI = ", pBMI(input$Weight, input$Height))
    })
    output$PregGain <- renderText({ 
        preg_gain(pBMI(input$Weight,input$Height))
    })
})