#Calling ReadingData function that I have previously created in a script called ReadingData.R
ReadingData()

plot(DataSet$Global_active_power~DataSet$datetime, ylab="Global Active Power (kilowatts)", xlab = "", par(mar= c(4,4,2,2)))

#Saving the Plot into PNG Graphich Device

dev.copy(png,"plot2.png", width=480, height=480)
dev.off()