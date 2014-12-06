data<-read.csv("household_power_consumption.txt",sep=";",stringsAsFactors = FALSE)
d<-rbind(data[data$Date=="1/2/2007",] ,data[data$Date=="2/2/2007",])
png(filename = "plot3.png",width = 480, height = 480)  
plot(d$Sub_metering_1,xlab="",xaxt = "n",type="l",ylab="Energy sub metering")
points(d$Sub_metering_2,type="l",col="red")
points(d$Sub_metering_3,type="l",col="blue")
axis(1,xaxp=c(0,2800,2),at=c(0,1400,2800),labels=c("Thu","Fri","Sat"))
legend("topright",col=c("black","red", "blue"), lty=c(1,1,1),legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))


dev.off()
