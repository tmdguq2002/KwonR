#Aroon
#Aroon의 경우 aroonUp과 aroonDn  그리고 oscillator를 반환해준다. 하나의 신호가 70이상이면 해당
#추세가 있다고 볼 수 있으며 하나가 70 이상이고 나머지가 30이하면 강한 신호이다.

library(quantmod)
library(TTR)
 
getSymbols("DWTI")

aroon <- aroon(DWTI[,2:3],25)
par(mar=c(5,4,4,5))
plot(tail(DWTI[,4],100), type="l", main="DWTI vs. aroon Analysis", ylab="close")
par(new=T)
plot(tail(aroon$aroonUp),type="l", yaxt="n", ylab=NA, main=NA, col="deepskyblue", lwd=3)
Axis(side=4)
Axis(side=4)
mtext(side=4, line=3, 'aroon')
abline(h=50)

summary(aroon)
