#ADX(Average Directional Movement Indicator)는 여러 개의 값이 산출되는데 ADX를 이용하면 평균값을
#보여주기 때문에 이해하기 쉽다. 산출되는 정보로는 DIp, DIn, DX, ADX가 있는데 
#각각 Positive Direction Index, Negative Direction Index, Direction Index, Average Direction Index(추세강도)를 제공한다.
#가격의 큰 변화와 ADX값의 변화가 반대 방향처럼 보이는데 빈번하게 충분한 기간을 두고 미리 
#알려주는 점에서 장점이 있다.

library(quantmod)
library(TTR)

getSymbols("DWTI")

adx <- ADX(DWTI[,2:4])
par(mar=c(5,4,4,5))
plot(tail(DWTI[,4],150), type="l", main="DWTI vs. ADX Analysis", ylab="close")
abline(h=c(130,195), lty=4)
par(new=T)
plot(tail(adx[,"DX"],150),type="l", lty=1, col="blue", yaxt="n", ylab=NA, main=NA)
Axis(side=4)
mtext(side=4, line=3, 'ADX')

summary(adx)
