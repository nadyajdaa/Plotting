#Calling ReadingData function that I have previously created in a script called ReadingData.R
ReadingData()

par(mar= c(4,4,4,4))

hist(DataSet$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")

#Saving the Plot into PNG Graphich Device
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()



