data<-read.csv("household_power_consumption.txt",sep=";",stringsAsFactors = FALSE)
d<-rbind(data[data$Date=="1/2/2007",] ,data[data$Date=="2/2/2007",])
png(filename = "plot2.png",width = 480, height = 480)  

plot(d$Global_active_power,type="l",ylab="Global active power (kilowatts)",xlab="",xaxt = "n")
axis(1,xaxp=c(0,2800,2),at=c(0,1400,2800),labels=c("Thu","Fri","Sat"))
dev.off()
