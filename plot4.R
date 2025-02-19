png("plot4.png", width = 480, height = 480)

par(mfrow = c(2, 2))  # Create 2x2 plotting area

# Top-left: Global Active Power
plot(df_subset$Time, df_subset$Global_active_power, 
     type = "l", 
     xlab = "", 
     ylab = "Global Active Power",
     xaxt = "n")

axis.POSIXct(1, 
             at = seq(as.POSIXct("2007-02-01"), as.POSIXct("2007-02-03 23:59:59"), by = "day"), 
             format = "%a")
# Top-right: Voltage over time
plot(df_subset$Time, df_subset$Voltage, 
     type = "l", 
     xlab = "datetime", 
     ylab = "Voltage",
     xaxt = "n")

axis.POSIXct(1, 
             at = seq(as.POSIXct("2007-02-01"), as.POSIXct("2007-02-03 23:59:59"), by = "day"), 
             format = "%a")

# Bottom-left: Energy sub metering
plot(df_subset$Time, df_subset$Sub_metering_1, 
     type = "l", 
     col = "black",
     xlab = "", 
     ylab = "Energy sub metering",
     xaxt = "n")

axis.POSIXct(1, 
             at = seq(as.POSIXct("2007-02-01"), as.POSIXct("2007-02-03 23:59:59"), by = "day"), 
             format = "%a")

lines(df_subset$Time, df_subset$Sub_metering_2, col = "red")
lines(df_subset$Time, df_subset$Sub_metering_3, col = "blue")

legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), 
       lty = 1, bty = "n")

# Bottom-right: Global Reactive Power
plot(df_subset$Time, df_subset$Global_reactive_power, 
     type = "l", 
     xlab = "datetime", 
     ylab = "Global Reactive Power",
     xaxt = "n")

axis.POSIXct(1, 
             at = seq(as.POSIXct("2007-02-01"), as.POSIXct("2007-02-03 23:59:59"), by = "day"), 
             format = "%a")

dev.off()
