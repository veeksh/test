library(tidyverse)
load("rda/murders.rda")
test<-test%>%mutate(abb=reorder(abb,rate))%>%ggplot(aes(abb,rate))+geom_bar(width = 0.5,start="identity",color="black")+coord_flip()
ggsave("figs/barplot.png")