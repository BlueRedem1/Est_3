#Cargamos la librería forecast, usada para series de tiempo
library(forecast)
#Cargamos los datos
Data<-read.table("https://robjhyndman.com/tsdldata/data/fancy.dat", 
           header=F, skip=0)
#Los pasamos a series de tiempo
Serie<-ts(data=Data,start=c(1987,01),end=c(1993,12),frequency=12)

#1.- Grafique los datos. Describa lo que observe de su informacióon (varianza contante o no
#constante, tendencia, ciclos estacionales, periodicidad de los ciclos).
#Visualizamos
graph<-ts.plot(Serie);graph
