library(shiny)
library(UsingR)

shinyServer(
    function(input,output) {
        output$idConversion <- renderPrint({
            if (input$idType=='cf') {
                round(input$idNumber*9/5 + 32, 1)
            } else if (input$idType=='fc') {
                round((input$idNumber-32)*5/9, 1) 
            }            
        })
        output$comparePlot <- renderPlot({
            Celsius <- seq(-100, 200, 1)
            Fahrenheit <- Celsius*9/5 + 32
            plot(Celsius, Fahrenheit, type='l')
            if (input$idType=='cf') {
                points(input$idNumber, (input$idNumber*9/5 + 32), col="red", pch=16)
            } else if (input$idType=='fc') {
                points(((input$idNumber-32)*5/9), input$idNumber, col="red", pch=16)
            }
        })
        
    }
)
