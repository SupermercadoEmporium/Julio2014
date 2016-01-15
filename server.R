#Julio
#install.packages("shiny")
library(shiny)

shinyServer(function(input, output) {
  
  output$Julio<-renderPrint({
    y<-input$select
    paste(y,round(a_matrix_Julio[y,y], digits=4))
  })
  
  output$Julio2<-renderPrint({
    y<-input$select2
    paste(y,round(a_matrix_Julio[y,y], digits=4))
  })
  
  output$confidenceJulio<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Confidence",round(a_matrix_Julio[x,y]/a_matrix_Julio[x,x], digits=4))
  })
  
  output$liftJulio<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Lift",round(round(a_matrix_Julio[x,y]/a_matrix_Julio[x,x], digits=4)/round(a_matrix_Julio[y,y], digits=4), digits=4))
  })
  
  output$tablanamecat1Julio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                                 Julio.Categoriaf3==input$select,
                                 select=c(Julio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tablaprobcat1Julio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                                 Julio.Categoriaf3==input$select,
                                 select=c(Julio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[1], digits=4))
  })
  
  output$tablanamecat2Julio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                                 Julio.Categoriaf3==input$select,
                                 select=c(Julio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tablaprobcat2Julio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                                 Julio.Categoriaf3==input$select,
                                 select=c(Julio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[2], digits=4))
  })
  
  output$tablanamecat3Julio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                                 Julio.Categoriaf3==input$select,
                                 select=c(Julio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tablaprobcat3Julio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                                 Julio.Categoriaf3==input$select,
                                 select=c(Julio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[3], digits=4))
  })
  
  output$tablanamecat4Julio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                                 Julio.Categoriaf3==input$select,
                                 select=c(Julio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:4]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:4){
      nam[i]<-names(t[i])
    }
    paste( names(t[4]))
  })
  
  output$tablaprobcat4Julio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                                 Julio.Categoriaf3==input$select,
                                 select=c(Julio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:4]/length(sub)
    paste( round(t[4], digits=4))
  })
    
  output$tablanamecat5Julio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                                 Julio.Categoriaf3==input$select,
                                 select=c(Julio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[5]))
  })
  
  output$tablaprobcat5Julio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                                 Julio.Categoriaf3==input$select,
                                 select=c(Julio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste( round(t[5], digits=4))
  })
    
  output$tabla1namecat1Julio<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                                 Julio.Categoriaf3==x,
                                 select=c(Julio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tabla1probcat1Julio<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                                 Julio.Categoriaf3==x,
                                 select=c(Julio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste( round(t[1], digits=4))
  })
  
  output$tabla1namecat2Julio<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                                 Julio.Categoriaf3==x,
                                 select=c(Julio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tabla1probcat2Julio<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                                 Julio.Categoriaf3==x,
                                 select=c(Julio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[2], digits=4))
  })
  
  output$tabla1namecat3Julio<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                                 Julio.Categoriaf3==x,
                                 select=c(Julio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tabla1probcat3Julio<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                                 Julio.Categoriaf3==x, 
                                 select=c(Julio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[3], digits=4))
  })
  
  output$tabla1namecat4Julio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                                 Julio.Categoriaf3==input$select2,
                                 select=c(Julio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:4]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:4){
      nam[i]<-names(t[i])
    }
    paste( names(t[4]))
  })
  
  output$tabla1probcat4Julio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                                 Julio.Categoriaf3==input$select2,
                                 select=c(Julio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:4]/length(sub)
    paste( round(t[4], digits=4))
  })
  
  output$tabla1namecat5Julio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                                 Julio.Categoriaf3==input$select2,
                                 select=c(Julio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[5]))
  })
  
  output$tabla1probcat5Julio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                                 Julio.Categoriaf3==input$select2,
                                 select=c(Julio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste( round(t[5], digits=4))
  })
  
})

#Julio
catg_Julio<-data.frame(Julio$CATEGORIA1, Julio$Categoriaf3,
                       Julio$SLSEQ, Julio$TICKET)

catg_sin_rep_Julio<-unique(catg_Julio)
