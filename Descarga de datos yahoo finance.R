#Lo primero es Installar las librerias en caso de que no las tengas, despues solo cargarlas!
  
  #Instalar librerias
#Install. packages(“tseries”)

#Cargar librerias
library(tseries)
library(lubridate)
library(tidyverse)
library(car)
library(astsa)
library(foreign)
library(timsac)
library(vars)
library(lmtest)
library(mFilter)
library(dynlm)
library(nlme)
library(lmtest)
library(broom)
library(kableExtra)
library(knitr)
library(MASS)
library(parallel)
library(car)
library(mlogit)
library(dplyr)
library(tidyr)
library(forecast)
library(fpp2)
library(stats)
library(quantmod)



#Tutorial Como importar datos de Yahoo Finance a RStudio

mdate="2001-01-03"
amazonprices=getSymbols('AMZ', from=mdate, auto.assign = F)

print(amazonprices)

#otro ejercicio
mdate1="2001-01-04"
amazon=getSymbols('AMZ', from=mdate1, auto.assign = F)[,4]
print(amazonprices1)

#Tasa de crecimiento
amazonroc=ROC(amazonprices1, type='discret')
print(amazonroc)

#Tasa de Rendimiento

amazonrend = periodReturn(amazonprices, period = 'monthly', type = 'log', subset ='2017')
print(amazonrend)


sc<-spark_connect(master="local",version="3.0.1" )
vu<-sdf_copy_to(sc,amazon)
data<-data.frame(amazon)

#Obtener datos de S P 500
getSymbols("^GSPC", src = "yahoo", from = "2010-01-01", to = "2020-05-30", periodicity= "daily")[,4]
print(GSPC)
chartSeries(GSPC,show.grid = TRUE, name = "S&P 500", theme = chartTheme("white"),TA=NULL)

chartSeries(GSPC, subset ="last 2 months", theme = chartTheme("black"))

