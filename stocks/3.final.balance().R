#final.balance()
#초기값 포지션에 대한 최종 balance 값을 산출해준다
#예를 들어 첫날은 1이 close였는데 다음날 1.1, 1.5, 0.9로 변한다고 하면 아래와 같이 산출한 값이
#나오게 되고 이해를 위해 다양한 옵션을 지정하였다.
#우선 close값을 a에 저장하고 이를 이후 값으로 변환되는 비율을 ratios()로 산출하고 이를
#final.balance에 투입하면 큰 값이 나온다. 원하는 값을 구하기 위해 초기 잔고값을 지정하면
#이에 따른 변화된 값이 나오게 된다.

a <- c(1,1.1,1.5,0.9)
ratios(a)

final.balance(ratios(a))

final.balance(ratios(a), 1)

final.balance(ratios(a), 10)

#위와 같은 방법으로  TRIP을 실행하면 아래와 같다. 만약 초기에 $1,000를 투자한다면
#initial에 1,000을 투입하면 되는데 기준값을 이해하기 쉽게 아래에는 1을 초기값으로 선정했다

final.balance(daily.ratios,initial=1)
