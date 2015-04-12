plot2 <- function() {
     ## Plot 2
     
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
     png(filename="Plot2.png",width=480,height=480,units="px")
     
     ##Plot the Global_active_power against time
     plot(y,my.data$Global_active_power,type="l", ylab="Global Active Power (kilowatts)",xlab="")
     dev.off()     
}