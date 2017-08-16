## Plot 1 on the screen device
hist(subDF$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

## copy and save to PNG file.
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()