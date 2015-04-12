plot4 <- function() {
     ## Plot 4
     
     #Read the required data
     
     my.data <- read.table("household_power_consumption.txt",sep=";",na.strings="?",
                           nrows=2880,skip=66637,
                           col.names=c("Date","Time","Global_active_power",
                                       "Global_reactive_power","Voltage",
                                       "Global_intensity","Sub_metering_1",
                                       "Sub_metering_2","Sub_metering_3"))
     x<-paste(as.Date(my.data[[1]],"%d/%m/%Y"),my.data[[2]])
     y<-strptime(x, "%Y-%m-%d %H:%M:%S")
     
     ##Open the PNG device
     png(filename="Plot4.png",width=480,height=480,units="px")
     
     ##Plot the Enery sub metering against time
     par(mfrow=c(2,2))
     ###1st plot
     plot(y,my.data$Global_active_power,type="l", ylab="Global Active Power (kilowatts",xlab="")
     ###2nd plot
     plot(y,my.data$Voltage,type="l", ylab="Voltage",xlab="datatime")
     ###3rd plot
     plot(y,my.data$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
     points(y,my.data$Sub_metering_1,col="black",type="l")
     points(y,my.data$Sub_metering_2,col="red",type="l")
     points(y,my.data$Sub_metering_3,col="blue",type="l")
     legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"),bty="n")
     ###4th plot
     plot(y,my.data$Global_reactive_power,type="l", ylab="Global_reactive_power",xlab="datatime")
     dev.off()     
}