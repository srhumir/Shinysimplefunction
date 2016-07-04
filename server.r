mpg <- function(cyl, wt, gear){
        data(mtcars)
        fit <- lm(mpg ~ cyl+wt+gear, data = mtcars)
        newdata <- data.frame(cyl=as.numeric(cyl),wt=as.numeric(wt), gear=as.numeric(gear))
        predict(fit,newdata)
}
shinyServer(
        function(input,output){
                output$cyloutput <- renderPrint(paste(input$cylinput, "Cylinders"))
                output$wtoutput <- renderPrint(paste(input$wtinput, "Thousand pounds"))
                output$gearoutput <- renderPrint(paste(input$gearinput, "Gears"))
                output$mpgoutput <- renderPrint(paste(
                        floor(mpg(input$cylinput, input$wtinput, input$gearinput)), 
                        "Miles per US galon"))
        }
)