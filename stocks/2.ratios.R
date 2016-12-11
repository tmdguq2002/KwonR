#ratios 
#전체적으로 해당 종모기 어떤 변화를 발생시키게 되고 위험률이 얼마나 높은지 파악이 가능

daily.ratios <- ratios(s)
head(daily.ratios)
plot(tail(daily.ratios,100), type = "l", main="samsung subsquent Rate")