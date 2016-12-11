#price.rate()를 이용하면 옵션이 없는 경우 연간 성장률을 산출하는데 기본으로 251의 값을 이용한다.
#지정을 하고 싶으면 10일이면 xday.rate를 10으로 지정하면 된다.

install.packages("stocks")
library(stocks)
library(quantmod)

getSymbols("TRIP")
a <- as.vector(TRIP[,4])
a
prices.rate(a)
prices.rate(a,20)

sse <- getSymbols("005930.KS", env=NULL)
s <- as.vector(sse[,4])
prices.rate(s)
prices.rate(s,20)