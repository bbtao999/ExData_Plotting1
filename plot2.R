plot2 <-function() {
  mydf<-read.csv("household_power_consumption.txt",sep=";",na.strings="?")
  mydf$Datetime <- strptime(paste(mydf$Date, mydf$Time), "%d/%m/%Y %H:%M:%S")
  mydf$Date1<-as.Date(mydf$Date, "%d/%m/%Y")
  mydf1<-subset(mydf,Date1 >= "2007-02-01" & Date1<="2007-02-02")
  png(file="plot2.png",width = 480, height = 480)
  plot(mydf1$Datetime, mydf1$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
  dev.off()
} 