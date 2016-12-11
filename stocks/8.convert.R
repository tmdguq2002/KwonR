#convert
# 1일 1%의 수익을 계속 올린다면 1주, 1개월, 1년에는 수익률이 어떻게 될까?

convert.rate(rate=0.01, days.in=1, days.out=5)
convert.rate(rate=0.01, days.in=1, days.out=20)
convert.rate(rate=0.01, days.in=1, days.out=251)

# 1년에 100% 수익을 위해서는 1일 몇 퍼센터의 수익률을 유지해야 하는가?

convert.rate(rate=1, days.in=251, days.out=1)
convert.rate(rate=0.0027, days.in=1, days.out=251)
convert.rate(rate=0.00276, days.in=1, days.out=251)