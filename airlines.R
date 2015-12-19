airline<-read.csv("C:/Users/Ruo/Documents/Courses-2015/5400 Lab/lab project/1996-2014.csv")


# remove missing values
sum(is.na(airline))
airline <- na.omit(airline)
head(airline)
str(airline)

fit_low<-lm(fare_low ~nsmiles+passengers+lf_ms+fuel_price+if_hub+busy_season, data=airline)

fit_low<-lm(fare_low ~nsmiles+passengers+lf_ms+fuel_price+if_hub, data=airline)
summary(fit_low)

fit_low<-lm(fare_low ~busy_season, data=airline)
