# predictGPA <-function(satmath,satverb,hspct,gender)  1.6228315 + (0.0007011 * satmath) + (0.0000109 * satverb) 
#                                        + (1.0525877 * hspct) + (0.0898917 *gender)

predictGPA <-function(satmath,satverb,hspct,gender) 
	1.6228315 + (0.0007011 * satmath) + (0.0000109 * satverb) + (1.0525877 * hspct/100) +(0.0898917 *gender)
shinyServer(
function(input, output) {
output$Osatmath <- renderPrint({input$satmath})
output$Osatverb <- renderPrint({input$satverb})
output$Ohspct <- renderPrint({input$hspct})
output$Ogender <- renderPrint({input$gender})
output$prediction <- renderPrint({predictGPA(as.numeric(input$satmath),as.numeric(input$satverb),
	                                           as.numeric(input$hspct),as.numeric(input$gender))})

}
)
