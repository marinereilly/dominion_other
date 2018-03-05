#####load Packages#####
library(tidyverse)

#####load data#####
pc <- read.csv("H:/0_HarrisLab/1_CURRENT PROJECT FOLDERS/Dominion/DATA/2017 Data/percent_cover_plot_data.csv")

#For plotting purposes removing NAs so that the lines connect.  Not necessarily the 
#best idea for real life but thats why I am leaving the NA in the data
pc<-pc[!is.na(pc$Percent),]
#####Make Plots?#####
pc_pal<-c("Berm"="sienna2", "Fresh Water Marsh"="purple3", "Salt Water Marsh"="forestgreen")

a<-pc %>% 
  filter(Transect=="Transect 1") %>% 
  ggplot(., aes(x=Year, y=Percent*100, color=Habitat)) + 
  geom_line(size=1) + 
  geom_point(size=2)+
  scale_color_manual(values = pc_pal)+
  ylab("Summer Percent Coverage")+
  ggtitle("Transect 1")+theme(legend.position="none")+
  scale_x_continuous(limits = c(2011, 2017), breaks = c(2011, 2012, 2013, 2014, 2015, 2016, 2017))
a

b<-pc %>% 
  filter(Transect=="Transect 2") %>% 
  ggplot(., aes(x=Year, y=Percent*100, color=Habitat)) + 
  geom_line(size=1) + 
  geom_point(size=2)+
  scale_color_manual(values = pc_pal)+
  ylab("Summer Percent Coverage")+
  ggtitle("Transect 2")+theme(legend.position="none")+
  scale_x_continuous(limits = c(2011, 2017), breaks = c(2011, 2012, 2013, 2014, 2015, 2016, 2017))
b

c<-pc %>% 
  filter(Transect=="Transect 3") %>% 
  ggplot(., aes(x=Year, y=Percent*100, color=Habitat)) + 
  geom_line(size=1) + 
  geom_point(size=2)+
  scale_color_manual(values = pc_pal)+
  ylab("Summer Percent Coverage")+
  ggtitle("Transect 3")+theme(legend.position="none")+
  scale_x_continuous(limits = c(2011, 2017), breaks = c(2011, 2012, 2013, 2014, 2015, 2016, 2017))
c

d<-pc %>% 
  filter(Transect=="Transect 4") %>% 
  ggplot(., aes(x=Year, y=Percent*100, color=Habitat)) + 
  geom_line(size=1) + 
  geom_point(size=2)+
  scale_color_manual(values = pc_pal)+
  ylab("Summer Percent Coverage")+
  ggtitle("Transect 4")+theme(legend.position="none")+
  scale_x_continuous(limits = c(2011, 2017), breaks = c(2011, 2012, 2013, 2014, 2015, 2016, 2017))
d

e<-pc %>% 
  filter(Transect=="Transect 5") %>% 
  ggplot(., aes(x=Year, y=Percent*100, color=Habitat)) + 
  geom_line(size=1) + 
  geom_point(size=2)+
  scale_color_manual(values = pc_pal)+
  ylab("Summer Percent Coverage")+
  ggtitle("Transect 5")+theme(legend.position="none")+
  scale_x_continuous(limits = c(2011, 2017), breaks = c(2011, 2012, 2013, 2014, 2015, 2016, 2017))
e

f<-pc %>% 
  filter(Transect=="Transect 6") %>% 
  ggplot(., aes(x=Year, y=Percent*100, color=Habitat)) + 
  geom_line(size=1) + 
  geom_point(size=2)+
  scale_color_manual(values = pc_pal)+
  ylab("Summer Percent Coverage")+
  ggtitle("Transect 6")+theme(legend.position="none")+
  scale_x_continuous(limits = c(2011, 2017), breaks = c(2011, 2012, 2013, 2014, 2015, 2016, 2017))
f
