setwd("C:/Users/Paulo/Desktop/RFolder")
rm(list = ls())
v<-read.csv("VIOLENET7.csv", header=T, sep=";")
v$LOCAL_OCOR<-factor(v$LOCAL_OCOR,
                     levels = c(1,2,3,4,5,6,7,8,9,99),
                     labels = c("Residência", "Habitação Coletiva", "Escola", "Local de Prática Esportiva","Bar ou similar","Via Pública","Comércio ou Serviços","Industrias ou Construção","Outro","Ignorado"))
f<-as.data.frame(table(v$LOCAL_OCOR))
f
g<-f[order(f$Freq, decreasing = F),]
g
original.parameters<-par()
par(mar=c(7,4,3,1)+ 0.1)
g$Freq<-as.numeric(as.character(g$Freq))
b<-barplot(g$Freq, main="Local da Ocorrência", xaxt='n', ylim=c(0,2500), col = heat.colors(14))
b
lablist<-as.vector(g$Var1)
lablist
axis(1, at=b, labels = FALSE)
text(b, cex=0.8, par("usr")[3] - 0.25,  srt = 45, adj = c(1.11,1.11), labels = lablist, xpd = TRUE)
text(x = b, y = g$Freq, label = g$Freq, pos = 3, cex = 0.8)## coloca os valores correspondentes de g$Freq no topo de cada coluna
par(original.parameters)