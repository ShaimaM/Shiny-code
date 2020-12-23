library(shiny)

shinyApp(ui, server)

  server = function(input, output) {
    output$data <- renderTable({
      mtcars[, c("mpg", input$variable), drop = FALSE]
    }, rownames = TRUE)
  }
  
   textInput(inputId, label, value = "", width = NULL, placeholder = NULL)
    if (interactive()) {

      ui <- fluidPage(
        headerPanel("Data Science Camp"),
        
        textInput("name", "TRAINER'S NAME","Enter your name " ),
        verbatimTextOutput("value"),
        
        selectInput("Topics", "TOPICS:",
                    c("DATA SCIENCE IMMERSIVE - INTRO" = "intro",
                      "PRE-BOOTCAMP DATA SCIENCE" = "pre",
                      "DATA SCIENCE IMMERSIVE - STATISTICAL PROGRAMMING WITH R" = "r",
                      "DATA SCIENCE IMMERSIVE - PYTHON" = "python"))
      )
    }
    
   mainPanel()


