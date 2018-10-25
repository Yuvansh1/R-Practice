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
  user = "yuvansh",
  password = "yuvansh123",
  dbname = "dealerEngine_prod",
  host = "13.126.177.49"
)




dp_data <- dbGetQuery(
  con,
  statement = paste(
    "Select lead_id,make,model,variant,DP from
    (select oo.lead_id,make,model,variant,fk_app_auction,
    count(distinct case when dealer_type = 'External' then dealer_code end) as DP
    from orders  oo
    left join BI.Centre_List cl on cl.Centre_ID = oo.store_id
    left join app_bid bd on bd.carId = oo.car_id
    left join dealer dl on dl.id = bd.fk_dealer_id
    where cl.region = 'HYD' and date(bought_at) >= '2018-07-01' group by 5 order by 5 desc)gg group by 1",
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
