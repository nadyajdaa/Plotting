#Calling ReadingData function that I have previously created in a script called ReadingData.R
ReadingData()

par(mfrow = c(2,2))

par(mar= c(4,4,2,1))

with(DataSet, {
  plot(Global_active_power~ datetime, ylab = "Global Active Power", xlab = "")
  plot(Voltage~datetime, ylab = "Voltage", xlab = "dateTime")
  plot(Sub_metering_1 ~ datetime,ylab = "Energy sub metering", xlab = "")
  
  lines(Sub_metering_2 ~ datetime, col = 'Red')
  lines(Sub_metering_3 ~ datetime, col = 'Blue')
  legend("topright",col = c("black", "red", "blue"),lty = 1, lwd = 2, legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3") )
  
  plot(Global_reactive_power~datetime, ylab = "Global reactive Power", xlab = "datetime")
})

#Saving the Plot into PNG Graphich Device
dev.copy(png,"plot3.png", width=480, height=480)
dev.off()