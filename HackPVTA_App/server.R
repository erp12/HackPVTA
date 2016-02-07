library(shiny)
library(dplyr)
library(RgoogleMaps)

# current.time.datetime <- as.POSIXct(sort(PVTA.God.Mode.38.Data$Time)[1], tz="EST")
# current.time <- as.numeric(current.time.datetime)
current.time <- PVTA.God.Mode.Data$Time[1]

shinyServer( function(input, output) {
  
  Update.Label<- function() {
    outer$lbl.time<- renderText({current.time})
  }
  
  observeEvent(input$btn.back.day, {
    current.time <- current.time - 8.64e+7;
    output$lbl.time <- renderText({current.time})
  })
  observeEvent(input$btn.back.hour, {
    current.time <- current.time - 3.6e+6;
    output$lbl.time <- renderText({current.time})
  })
  observeEvent(input$btn.back.minute, {
    current.time <- current.time - 60000;
  })
  observeEvent(input$btn.forward.minute, {
    current.time <- current.time + 60000;
    output$lbl.time <- renderText({current.time})
    output$map <- renderPlot({
      current.busses <- filter(PVTA.God.Mode.38.Data, Time > current.time - 60000 & Time < current.time + 60000)
      PlotOnStaticMap(PVTA.God.Mode.Map, current.busses$Latitude, current.busses$Longitude, col='red', type="l")
    })
  })
  observeEvent(input$btn.forward.hour, {
    current.time <- current.time + 3.6e+6;
    output$lbl.time <- renderText({current.time})
    output$map <- renderPlot({
      current.busses <- filter(PVTA.God.Mode.38.Data, Time > current.time - 60000 & Time < current.time + 60000)
      PlotOnStaticMap(PVTA.God.Mode.Map, current.busses$Latitude, current.busses$Longitude, col='red', type="l")
    })
  })
  observeEvent(input$btn.forward.day, {
    current.time <- current.time + 8.64e+7;
    output$lbl.time <- renderText({current.time})
    output$map <- renderPlot({
      current.busses <- filter(PVTA.God.Mode.38.Data, Time > current.time - 60000 & Time < current.time + 60000)
      PlotOnStaticMap(PVTA.God.Mode.Map, current.busses$Latitude, current.busses$Longitude, col='red', type="l")
    })
  })
  
  output$map <- renderPlot({
    current.busses <- filter(PVTA.God.Mode.38.Data, Time > current.time - 60000 & Time < current.time + 60000)
    PlotOnStaticMap(PVTA.God.Mode.Map, current.busses$Latitude, current.busses$Longitude, col='red', type="l")
  })
  
  
})