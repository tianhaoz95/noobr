library(shiny)

ui <- fluidPage(
    titlePanel("My App"),
    mainPanel(
        textOutput(outputId = "test"),
        fileInput("img_file", "Choose Image File",
        accept = c(
          "image/png, image/jpg",
          "imgae/png, image/jpg",
          ".png, .jpg")
        )
    )
)

server <- function(input, output) {
    output$test <- renderText({
        "test this"
    }),
    img_file <- input$img_file
}

shinyApp(ui = ui, server = server)
