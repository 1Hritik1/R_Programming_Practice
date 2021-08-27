library(dplyr)
library(nycflights13)
dim(flights)
flights
filter(flights, month==1, day==1)
flights<-flights
arrange(flights, year, month, day)
head(flights, 10)
select(flights, year, month, day)
data_new<-mutate(flights, gain=arr_delay-dep_delay, speed=gain/(air_time*60))
data_new1<-mutate(flights, gain=arr_delay-dep_delay, gain_per_hour=gain/(air_time*60))
