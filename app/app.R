library(shiny)

ui <- fluidPage(
    titlePanel("My App"),
    mainPanel(
        textOutput(outputId = "test")
    )
)

server <- function(input, output) {
    output$test <- renderText({
        "test this"
    })
}

shinyApp(ui = ui, server = server)