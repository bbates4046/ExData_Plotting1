##Plot1
library(dplyr)
library(tidyr)
setwd("C:/Users/bbates.FIDELITONE/Documents/DataScience")
data1 <- read.table("household_power_consumption.txt",header = FALSE,sep = ";",skip = 66637, nrows = 2880)
png(filename="Plot1.png",width = 480, height = 480)
plot(hist(data1$V3),main = "Global Active Power",xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()