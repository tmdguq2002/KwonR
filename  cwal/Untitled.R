#크롤링

install.packages('rvest')
library(rvest)

url <- "http://www.bobaedream.co.kr/cyber/CyberCar.php?gubun=K&page=1"
usedCar <- read_html(url) #해당 url 페이지의 html tag를 가져와서 parsing함.
usedCar

#parsing한 usedCar 에서 css가 'carinfo' 인 것을 찾아라.
carInfos <- html_nodes(usedCar, css='.carinfo') 
head(carInfos)

#가장 첫번째 cafInfos로부터 정보 추출해보면,
carInfos[1] %>% html_nodes('.title') %>% html_text()

#이처럼 제목이 잘 출력된 것을 알 수 있습니다. 
#그런데 50개 모든 제목을 추출하고 싶으면 carInfos[1] 에서 index만([1]) 제거해 주면 됩니다. 
#자동으로 50개의 원소에 함수를 적용해 주는 것이죠(마치 apply 처럼)

titles <- carInfos %>% html_nodes('.title') %>% html_text()
head(titles)


carDetainInfo <- carInfos %>% html_nodes('.sub_01') %>% html_text()
head(carDetainInfo)

install.packages('stringr')
library(stringr)

carInfos[1] %>% html_nodes('.sub_01') %>% html_text()

#1) ‘ㅣ’ 이라는 문자를 기준으로 나누고 싶을때는? : str_split(문자, ‘분리하고 싶은 문자’)
#(주의할 것은 키보드에 있는 | 표시와는 다른 문자에요! 복붙 해주세요.)

str_split(carInfos[1] %>% html_nodes('.sub_01') %>% html_text(), 'ㅣ')

#2) 쉼표, 문자를 제거하고 싶다면? : str_replace(문자, ‘제거하고 싶은 패턴’,‘대체하고 싶은 패턴’)

str_replace('20,000km', '0', '')

str_replace_all('20,000km', '0', '')

str_replace_all('20,000Km', '[a-zA-Z]', '') #영어 소문자, 대문자 모두

str_replace_all('100,운용리스','[,가-하]','') #한글도 마찬가지로 가~하까지 모두

str_replace_all('20,000Km', '[,Km]', '')








