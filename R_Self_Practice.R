2+3
a = 2
b = 4
c = a+b
c
c <- a+b
a <- 2
b <- 3
c <- 5
d <- a*b*c
d <- 'Anil'
class(d)
Vector(Homogenous)
a<-c(2,3,4,5,6)

class(a)
List(Heterogenous)
B<-c("Prakhar",3,4,5,6)

a <- '13/05/2008'
a
format(a, format="yyyy-mm-dd")
install.packages(RMySQL)
library(RMySQL)

#How to make connection with Mysql
con <- dbConnect(
  MySQL(),
  user = "***",
  password = "***",
  dbname = "****",
  host = "***"
)




dp_data <- dbGetQuery(
  con,
  statement = paste(
    "Select * from table",
    sep = ""
  )
  )
dp_data$DP<-as.factor(dp_data$DP)
class(dp_data$DP)
Summary(dp_data)
z<-subset(dp_data,make=="HONDA")
Z
a <-subset(dp_data,make=="MARUTI SUZUKI")
a
#dplyr
#lubridate
#reshape
library(dplyr)
a <- dp_data %>%
select(make,model,DP) %>%
  filter(make=="MARUTI SUZUKI" | make =="TOYOTA") %>%
  mutate(mmv = paste(make,model,sep="_")) %>%
  mutate(flag = ifelse(mmv =="MARUTI SUZUKI_SWIFT",1,0)) %>%
  group_by(mmv)%>%
  summarise(avg_dp = sum(flag))
