#install.packages("shiny")
library(shiny)

shinyUI( pageWithSidebar(
    headerPanel("Interest Calulator"),
    sidebarPanel(
        textInput('principal', 'Principal', value = ""),
        textInput('rate', 'Interest Rate (R/100,ie .12 is 12%)', value = ""),
        textInput('years', 'years', value = ""),
        actionButton("goButton", "Go!")
    ), 
    mainPanel(
        h3('Results of Calculation'),
        h4('Prinical:'),
        verbatimTextOutput("principal"),
        h4('Interst Rate:'),
        verbatimTextOutput("rate"),
        h4('Years:'),
        verbatimTextOutput("years"),
        h4('Your new Amount is:'),
        verbatimTextOutput("outputValue"),
        h5('Please note that Go button is requied to be clicked only Once.Values after that can be direclty changed in the textbox and using the Reactivity feature of shiny calulations is done immediatly and resuts are displayed.'),
        "Source Code of the application is available ", a("here",href="https://github.com/milanshrestha77/shiny-application")
        )
        )
)
