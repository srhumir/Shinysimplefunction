shinyUI(
        pageWithSidebar(
                headerPanel("Estimating MPG"),
                sidebarPanel(
                        selectInput("cylinput", "Number of cylinders",
                                           c(3,4,6,8)),
                        numericInput("wtinput", "Weight (1000 lbs)", value = 1.5,
                                     min = 1, max=6, step = .1),
                        radioButtons("gearinput", "Number of gears", 
                                     choices = c(4,5,6)),
                        submitButton("Compute MPG")
                ),
                mainPanel(
                        h2('My estimate of mpg for a car with'),
                        verbatimTextOutput("cyloutput"),
                        verbatimTextOutput("wtoutput"),
                        verbatimTextOutput("gearoutput"),
                        h3("is"),
                        verbatimTextOutput("mpgoutput")
                        )
                )
)