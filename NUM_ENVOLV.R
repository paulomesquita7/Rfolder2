setwd("C:/Users/Paulo/Desktop/RFolder")
rm(list=ls())
v<-read.csv("VIOLENET.csv", header=T, sep=";")
v$DT_NOTIFIC <- as.Date(as.factor(v$DT_NOTIFIC), format = "%d/%m/%Y")
s <- as.numeric(c(v$REL_PAI + v$REL_MAE + v$REL_PAD + v$REL_CONJ + v$REL_EXCON + 
               v$REL_FILHO + v$REL_DESCO + v$REL_NAMO + v$REL_EXNAM + v$REL_FILHO +
               v$REL_DESCO + v$REL_IRMAO + v$REL_CONHEC + v$REL_CUIDA +v$REL_PATRAO + 
               v$REL_INST + v$REL_POL + v$REL_PROPRI + v$ REL_OUTROS))
v <- cbind(v, s)
head(v, n=10)
str(v$DT_NOTIFIC)
require(dplyr)
v<-filter(v, v$NUM_ENVOLV == "1", s > 37, DT_NOTIFIC >= "2014-01-01")
v<-v[ ,c(1,4,6,7,10:12,116,193)]
head(v, n=10)
