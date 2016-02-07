library(shiny)

shinyUI(fluidPage(
  
  titlePanel("HackPVTA - Google Maps"),
  
  sidebarLayout(
    sidebarPanel(
      verticalLayout(
        actionButton("btn.back.day", "Back 1 Day"),
        actionButton("btn.back.hour", "Back 1 Hour"),
        actionButton("btn.back.minute", "Back 1 Minute"),
        icon("bus"),
        h4("Current Time:"),
        h5(textOutput("lbl.time")),
        icon("bus"),
        actionButton("btn.forward.minute", "Forward 1 Minute"),
        actionButton("btn.forward.hour", "Forward 1 Hour"),
        actionButton("btn.forward.day", "Forward 1 Day")
      )
    ),
  
    mainPanel(
        plotOutput("map")
      )
  )
  
  )
)