plot3 <-function() {
  mydf<-read.csv("household_power_consumption.txt",sep=";",na.strings="?")
  mydf$Datetime <- strptime(paste(mydf$Date, mydf$Time), "%d/%m/%Y %H:%M:%S")
  mydf$Date1<-as.Date(mydf$Date, "%d/%m/%Y")
  mydf1<-subset(mydf,Date1 >= "2007-02-01" & Date1<="2007-02-02")
  png(file="plot3.png",width = 480, height = 480)
  plot(mydf1$Datetime, mydf1$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
  lines(mydf1$Datetime, mydf1$Sub_metering_2,col="red")
  lines(mydf1$Datetime, mydf1$Sub_metering_3,col="blue")
  legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  dev.off()
} 
