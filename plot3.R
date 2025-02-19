png("plot3.png", width = 480, height = 480)

plot(df_subset$Time, df_subset$Sub_metering_1, 
     type = "l", 
     col = "black",
     xlab = "", 
     ylab = "Energy sub metering", 
     xaxt = "n")

lines(df_subset$Time, df_subset$Sub_metering_2, col = "red")
lines(df_subset$Time, df_subset$Sub_metering_3, col = "blue")

legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), 
       lty = 1)

# Custom x-axis
axis.POSIXct(1, 
             at = seq(as.POSIXct("2007-02-01"), as.POSIXct("2007-02-03 23:59:59"), by = "day"), 
             format = "%a")
dev.off()
