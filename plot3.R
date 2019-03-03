#Calling ReadingData function that I have previously created in a script called ReadingData.R
ReadingData()

datetime <- paste(DataSet$Date, DataSet$Time)
DataSet$datetime <- as.POSIXct(datetime)

plot(DataSet$Global_active_power~DataSet$datetime, ylab="Global Active Power (kilowatts)", xlab = "")

with(DataSet, {
  plot(Sub_metering_1 ~ datetime,ylab = "Global Active Power (kilowatts)", xlab = "")
  
  lines(Sub_metering_2 ~ datetime, col = 'Red')
  lines(Sub_metering_3 ~ datetime, col = 'Blue')
  legend("topright",col = c("black", "red", "blue"), lty = 1, lwd = 2, legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3") )
})

#Saving the Plot into PNG Graphich Device
dev.copy(png,"plot3.png", width=480, height=480)
dev.off()