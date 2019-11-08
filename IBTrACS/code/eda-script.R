library(readr)

dat <- read_csv("data/ibtracs-2010-2015.csv", skip = 1, na = c("-999.","-1.0","0.0"), col_names = c("serial_num","season","num","basin","sub_basin","name","iso_time","nature","latitude","longitude","wind","press"), col_types = cols("c","i","c","f","c","c","c","c","d","d","d","d"))
sink("output/data-summary.txt")
summary(dat)
sink()

library(ggplot2,maps)

pdf("images/map-all-storms.pdf")
map("world", interior = FALSE,fill = TRUE, col = "#228B22", bg = "#67CBFF")
points(x=dat$longitude,y=dat$latitude, pch=16, cex=0.1, col="#FF0000")
title("Recorded Storm Trajectories (2010-2015)")
dev.off()

png("images/map-all-storms.png")
map("world", interior = FALSE,fill = TRUE, col = "#228B22", bg = "#67CBFF")
points(x=dat$longitude,y=dat$latitude, pch=16, cex=0.1, col="#FF0000")
title("Recorded Storm Trajectories (2010-2015)")
dev.off()

pdf("images/map-ep-na-storms-by-year.pdf")
ggplot(dat[dat$basin=="EP"|dat$basin=="NA",],aes(x=longitude,y=latitude))+geom_point(aes(color=basin))+facet_wrap(.~season)
dev.off()

png("images/map-ep-na-storms-by-year.png")
ggplot(dat[dat$basin=="EP"|dat$basin=="NA",],aes(x=longitude,y=latitude))+geom_point(aes(color=basin))+facet_wrap(.~season)
dev.off()

library(dplyr,lubridate)
dat2 <- mutate(dat,month=month(dat$iso_time,label=TRUE))

pdf("images/map-ep-na-storms-by-month.pdf")
ggplot(dat2[dat2$basin=="EP"|dat2$basin=="NA",],aes(x=longitude,y=latitude))+geom_point(aes(color=basin))+facet_wrap(.~month)
dev.off()

png("images/map-ep-na-storms-by-month.png")
ggplot(dat2[dat2$basin=="EP"|dat2$basin=="NA",],aes(x=longitude,y=latitude))+geom_point(aes(color=basin))+facet_wrap(.~month)
dev.off()