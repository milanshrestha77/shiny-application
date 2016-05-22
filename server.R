#install.packages("shiny")
library(shiny)

calculateInterest <- function(principal, rate, years) {
    principal*(1+rate*years)
}
shinyServer( 
    
    function(input, output) {
        output$principal <- renderPrint({as.numeric(input$principal)})
        output$rate <- renderPrint({as.numeric(input$rate)})
        output$years <- renderPrint({as.numeric(input$years)})
        
        output$outputValue <- renderText({
            if (input$goButton == 0) "Please click Go button once to start calulating Interest"
            else if (input$goButton >= 1) calculateInterest(as.numeric(input$principal), as.numeric(input$rate),as.numeric(input$years))
        })
    }
)