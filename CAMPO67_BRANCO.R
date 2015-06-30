setwd("C:/Users/DrPaulo/Desktop/RFolder")
rm(list=ls())
StringAsFactor=FALSE
v<-read.csv("VIOLENET6.csv", header=T, sep=";")
v$ID_MUNICIP<-factor(v$ID_MUNICIP,
                     levels = c(350080,350130,350240,350890,351512,351990,352060,352560,352920,353215,353220,353920,354120,354140,354170,354220,354240,354550,354700,354770,354830,355290,355390,411370,521190),
                     labels = c("Alfredo Marcondes", "Alvares Machado", "Anhumas", "Caibu","Emilianópolis","Iepê","Indiana","João Ramalho","Martinópolis","Nantes","Narandiba","Pirapozinho","Presidente Bernardes","Presidente Prudente","Quata","Rancharia","Regente Feijó", "Sandovalina", "Santa Maria da Serra", "Santo Anastácio","Santo Expedito","Taciba","Tarabai","Londrina","Jataí"))

require(dplyr)
v<-select(v, NU_NOTIFIC,DT_NOTIFIC,ID_MUNICIP,ID_UNIDADE,NM_PACIENT,CS_SEXO,NU_IDADE_N,DT_OCOR,CIRC_LESAO)
v$DT_NOTIFIC<- as.Date(v$DT_NOTIFIC, format = "%d/%m/%Y")
v$DT_NOTIFIC                                                                                      
class(v$DT_NOTIFIC)                                                                                
v<-subset(v, v$DT_NOTIFIC >= "2015/01/01" & v$CIRC_LESAO =="")
v