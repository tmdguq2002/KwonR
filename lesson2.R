#defaults write org.R-project.R force.LANG en_US.UTF-8#
#UTF-8 변경#


install.packages("quantmod")
library(quantmod)

getSymbols("DWTI")

head(DWTI)

class(DWTI)
colnames(DWTI) <- c('open','high','low','close','volume','adjusted')
dwti <- as.data.frame(DWTI)

dwti$data <- row.names(dwti)
colnames(dwti)

sqldf("select * from dwti where data>='2016-06-01' limit 10")
sqldf("select avg(close) from dwti")




