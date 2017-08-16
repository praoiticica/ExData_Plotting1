## Plot 4
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
with(subDF, {
  plot(Global_active_power~DateTime, type="l",xlab="")
  plot(Voltage~DateTime, type="l")
  plot(Sub_metering_1~DateTime, type="l",xlab="")
  lines(Sub_metering_2~DateTime,col='Red')
  lines(Sub_metering_3~DateTime,col='Blue')
  legend("topright", col=c("black", "red", "blue"), 
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty=1, lwd=2, bty="n"
         )
  plot(Global_reactive_power~DateTime, type="l")
})

## Saving to file
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()