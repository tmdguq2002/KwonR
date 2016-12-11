#create vector#

z <- 2000
z

print(z)

z <- 2020
z

#c()#

y <- c("ECG", "Eric")
y

(x<-c(2014+4,2014-4,2014*4,2014/4))

x1 <- c(14,18,22)
x2 <- c(26,30,34)
(x3<-c(x1,x2))

#progression#
z <-14:20
z

y<-20:14
y

x<-20
14:x

#Sequence#
seq(from=14, to=30, by=4)

seq(from=14, to=30, length.out = 5)

seq(from=30, to=14, by=-4)

seq(from=30, to=14, length.out = 5)

#rep#
rep(7,times=3)

rep(7:8, times=3)

rep(7:8, each=3)

s<-7:8
rep(s,3)

rep(s, times=3)

rep(s,each=3)

#select vector#
(z<-c(rep(2:3, times=2), rep(8:9, each=2)))

z[1]

z[5]

z[3:6]

z[c(2,4,8)]

z[-5]

z[-c(3:6)]

z>3

z[z>3]

z%%3 == 0

z[z%%3 == 0]

z[z>=3 & z<9]

z[z<3 | z>=9]

#index#

(z<-letters[1:20])

names(z) <-1:20
z

z["1"]

z[c("1","20")]

mode(z)

#data type and object#
(z<-7)
mode(z)

y<-"abc"
mode(y)

paste("Big", "Date")

z<-c("Advanced", "Applied")
y<-c("Date Analytics", "Big Data Analytics", "BDA")
paste(z,y)

paste(z,"Data Mining")

paste(y,2014)

paste(y,2014:2015)

paste("2020", "12", "31")

paste("2020", "12", "31", sep="-")

paste("2020", "12", "31", sep="")

#substr#
substr("AppliedBDA", 8 ,10)

z<-"AppliedBDA"
substr(z,nchar(z)-2, nchar(z))

y<-c("Advanced", "Date", "Analytics")
substr(y,1,3)

#logical#
(t<-TRUE)

(t<-T)

(f<-FALSE)
(f<-F)

#logical operator#
thisYear<-2014
thisYear==2020
thisYear!=2020
thisYear<2020
thisYear<=2020
thisYear>2020
thisYear>=2020

#matrix#
z<-c(11,21,31,12,22,32)
(mat<-matrix(z,3,2))
dim(mat)

diag(mat)

t(mat)
mat
mat%*%t(mat)

colnames(mat) <- c("F_col", "S_col")
rownames(mat) <- c("F_row", "S_row", "T_row")
mat

mat[1,]
mat[,2]

mat[c(1,2),c(2)]
mat[c(1,2),c(2)] <- 2
mat

mat +2000

#list#
lst_z <- list("Wcup",2018,c(T,T,F),max)
lst_z

e1 <- c("Wcup", "WBC")
e2 <- matrix(c(2014,2018,2022,2006,2009,2013),3,2)
e3 <- 10:1
lst_y <- list(e1=e1,e2=e2,e3=e3)
lst_y
lst_y$e1

lst_x <- c(lst_z, lst_y)
lst_x

unlist(lst_x)

#data.frame#

rnk <- c(1,2,3,4)
team <- c("GER","ARG","NED","BRA")
wcup=data.frame(rnk,team)
wcup

wcup[1,2]
wcup[,"team"]

wcup$team

wcup[wcup$rnk==4,]

data(airquality)
head(airquality)

newRow <- data.frame(Ozone=40, Solar.R=120, Wind=8, Temp=77, Month=10, Day=1)
newRow

new_aq_R <- rbind(airquality,newRow)
tail(new_aq_R)

dim(new_aq_R)

newCol <- 1:nrow(new_aq_R)
new_aq_R <- cbind(new_aq_R,newCol)
head(new_aq_R,2)

tail(new_aq_R,2)

subset(airquality,select=c(Ozone,Solar.R,Wind,Temp), subset=(Wind>12.0&Temp>80.0))

z <- "2.78"
z

class(z)

as.numeric(z)

as.numeric("z")

y <- 2.78
y

class(y)

as.character(y)

as.numeric(T)
as.numeric(F)

(z <- "2020-01-01")
class(z)

(z1 <- as.Date(z))

class(z1)

y <- "01/31/2020"
(y1 <- as.Date(y,format="%m/%d/%Y"))

format(Sys.Date(),format="%m/%d/%Y")
format(Sys.Date(),format="%a")
format(Sys.Date(),format="%b")
format(Sys.Date(),format="%B")
format(Sys.Date(),format="%d")
format(Sys.Date(),format="%m")
format(Sys.Date(),format="%y")
format(Sys.Date(),format="%Y")

(z <- 0/0)

is.nan(z)
is.na(z)

(y <- log(0))

is.finite(y)
is.nan(y)
is.na(y)

x <- NA
is.na(x)
is.nan(x)

(w <- c(1:3,NA))

is.na(w)

z <- c(1,3,5,7,9,11,20)
z*z

(y <- z+z^2)

rank <- c(1,2,3,4)
team <- c("GER","ARG","NED","BRA")
wcup = data.frame(rank,team)

write.csv(wcup, "wcup.csv")
w_cup <- read.csv("wcup.csv")
str(w_cup)

save(rank,team,file="wcup.rdata")
load("wcup.rdata")

rm(team, tm)

getwd()

install.packages("sqldf")
install.packages("reshape")
library(sqldf)
library(reshape)

data(french_fries, package = "reshape")
head(french_fries)

table(french_fries$treatment)

sqldf("select * from french_fries limit 6")
sqldf("select count(*) from french_fries where treatment=1")

names(french_fries) [2] <- "oil.type"
head(french_fries)

