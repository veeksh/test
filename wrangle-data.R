library(tidyverse)
test<-read.csv("data/murders.csv")
test<-test%>%mutate(region=factor(region),rate=total/population*10^5)
save(test,file="rda/murders.rda")
