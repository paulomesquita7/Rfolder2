rm(list = ls())
setwd("C:/Users/Paulo/Desktop/RFolder")
v<-read.csv("VIOLENET.csv", header=T, sep=";")
d<-table(v$LOCAL_OCOR)
barplot(d, main="Local da Ocorr�ncia", xaxt='n', ann=FALSE)
original.parameters<-par()
par(xaxt="n")
lablist<-as.vector(c("Resid�ncia","Habita��o Coletiva","Escola","Local de Pr�tica Esportiva",
                     "Bar ou similar","Via P�blica","Com�rcio ou Servi�os","Industrias ou Constru��o",
                     "Outros","Ignorado"))
axis(1, at=seq(1, 10, by=1), labels = F)
text(cex=0.8, seq(1, 10, by=1), par("usr")[3] - 0.2, labels = lablist, srt = 45, pos = 1, xpd = TRUE)
par(original.parameters)