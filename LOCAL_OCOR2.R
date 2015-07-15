rm(list = ls())
setwd("C:/Users/Paulo/Desktop/RFolder")
v<-read.csv("VIOLENET.csv", header=T, sep=";")
d<-table(v$LOCAL_OCOR)
barplot(d, main="Local da Ocorrência", xaxt='n', ann=FALSE)
original.parameters<-par()
par(xaxt="n")
lablist<-as.vector(c("Residência","Habitação Coletiva","Escola","Local de Prática Esportiva",
                     "Bar ou similar","Via Pública","Comércio ou Serviços","Industrias ou Construção",
                     "Outros","Ignorado"))
axis(1, at=seq(1, 10, by=1), labels = F)
text(cex=0.8, seq(1, 10, by=1), par("usr")[3] - 0.2, labels = lablist, srt = 45, pos = 1, xpd = TRUE)
par(original.parameters)