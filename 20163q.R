
setwd("/Users/kwonsh/RTEST")
getwd()

data <- read.csv("Book1.csv", header = F)
row.names(data) = data[,1]
data = data[,-1]

data




