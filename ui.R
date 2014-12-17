library(shiny)
shinyUI(pageWithSidebar(
    
    headerPanel("Unit Converter"),
    
    sidebarPanel(
        h3('Input'),
        selectInput("idType", "Choose type of converstion", 
                    choices = c('From Celsius to Fahrenheit'='cf','From Fahrenheit to Celsius'='fc')),
        sliderInput('idNumber', 'Choose numeric value', value=75, min=-100, max=200, step=1)
        ),
    
    mainPanel(
        h3('Documentation'),
        p('This tool enables you to convert any temperature (between -100 and 200) from Celsius to Fahrenheit 
            or from Fahrenheit to Celsius.
            In order to use this tool, choose the type of conversion and numeric value in the left sidebar.
            You can change those options at any time. 
            The results are displayed below in numeric and graphical formats. 
            '),
        h3('Results'),
        verbatimTextOutput('idConversion'), 
        
        plotOutput('comparePlot')
        )
    ))
