#daily,yearly
#년, 일 단위 등으로 간단히 산출할 수 있다.

daily.yearly(0.02,1)
yearly.daily(2,1)
yearly.daily(0.1,1)

daily.gains <- c(0.02,0.021,0.03,-0.05,0.02)
gains.rate(daily.gains)
gains.rate(daily.gains,1)
gains.rate(daily.gains,251)
