##Plot4
library(dplyr)
library(tidyr)
library(lubridate)
setwd("C:/Users/bbates.FIDELITONE/Documents/DataScience")
data1 <- read.table("household_power_consumption.txt",header = FALSE,sep = ";",skip = 66637, nrows = 2880)
date <- with(data1,dmy(data1$V1) + hms(data1$V2))
data1 <- cbind(data1,date)
data1<- tbl_df(data1)
png(filename="Plot4.png",width = 480, height = 480)
par(mfrow = c(2,2))
plot(data1$date,data1$V3,type="l",main = "",xlab = "", ylab = "Global Active Power (kilowatts)")
plot(data1$date,data1$V5,type = "l",ylab="Voltage",xlab = "datetime")
plot(data1$date,data1$V7,type = "l", ylab = "Energy sub metering", xlab = "")
lines(data1$date,data1$V8,col = "red")
lines(data1$date,data1$V9, col = "blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col = c("black","red","blue"), text.col = "black", lty = 1)
plot(data1$date,data1$V4, type = "l", ylab = "Global_reactive_power",xlab = "datetime")
dev.off()
