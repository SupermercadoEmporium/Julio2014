library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Emporium 2014"),
  
  fluidRow(
    
    column(3,
           selectInput("select", label = h3("Primera Categoria (Antecedente)", style ="color:#297418;"), 
                       choices =  c(vec_aux1[(3:30)],vec_aux1[(32:41)])), tableOutput("Julio")),
    column(3,
           selectInput("select2", label = h3("Segunda Categoria (Consecuente)", style = "color:#dd21d5;"), 
                       choices =c(vec_aux1[(3:30)],vec_aux1[(32:41)])), tableOutput("Julio2"))
    
    
  ), 
  titlePanel("Julio"),
  sidebarLayout(
    sidebarPanel( "Resumen Julio",
                  style = "color:#2183dd;",
                  tableOutput("confidenceJulio"),
                  tableOutput("liftJulio")
    ),
    mainPanel()
  ),
  sidebarLayout(
    sidebarPanel( "Productos más vendidos",
                  textOutput("tablanamecat1Julio"),
                  style = "color:#297418;",
                  textOutput("tablaprobcat1Julio"),
                  textOutput("tablanamecat2Julio"),
                  textOutput("tablaprobcat2Julio"),
                  textOutput("tablanamecat3Julio"),
                  textOutput("tablaprobcat3Julio"),
                  textOutput("tablanamecat4Julio"),
                  textOutput("tablaprobcat4Julio"),
                  textOutput("tablanamecat5Julio"),
                  textOutput("tablaprobcat5Julio")),
    sidebarPanel("Productos más vendidos",
                 textOutput("tabla1namecat1Julio"),
                 style = "color:#dd21d5;",
                 textOutput("tabla1probcat1Julio"),
                 textOutput("tabla1namecat2Julio"),
                 textOutput("tabla1probcat2Julio"),
                 textOutput("tabla1namecat3Julio"),
                 textOutput("tabla1probcat3Julio"),
                 textOutput("tabla1namecat4Julio"),
                 textOutput("tabla1probcat4Julio"),
                 textOutput("tabla1namecat5Julio"),
                 textOutput("tabla1probcat5Julio"))
  )  
))
