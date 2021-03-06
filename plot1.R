plot1 <- function() {
     ## Plot 1
     
     #Read the required data
     
     my.data <- read.table("household_power_consumption.txt",sep=";",na.strings="?",
                           nrows=2880,skip=66637,
                           col.names=c("Date","Time","Global_active_power",
                                       "Global_reactive_power","Voltage",
                                       "Global_intensity","Sub_metering_1",
                                       "Sub_metering_2","Sub_metering_3"))
     
     ##Open the PNG device
     png(filename="Plot1.png",width=480,height=480,units="px")
     
     ##Plot the histogram of Global_active_power
     hist(my.data$Global_active_power,col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)")
     dev.off()     
}