plot1 <-function() {
mydf<-read.table("household_power_consumption.txt",sep=";",na.strings="?",head=TRUE)
mydf$Datetime <- strptime(paste(mydf$Date, mydf$Time), "%d/%m/%Y %H:%M:%S")
mydf$Date1<-as.Date(mydf$Date, "%d/%m/%Y")
mydf1<-subset(mydf,Date1 >= "2007-02-01" & Date1<="2007-02-02")
png(file="plot1.png",width = 504, height = 504)
hist(mydf1$Global_active_power, main = "Global Active Power", ylab = "Frequency", xlab = "Global Active Power (kilowatts)",
col = "red", ylim = c(0, 1200), xlim = c(0, 8), xaxp = c(0, 6, 3))
dev.off()
} 

