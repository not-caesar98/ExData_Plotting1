##PLOT 2

# Open PNG device to save the plot
png("plot2.png", width = 480, height = 480)

# Create the plot
plot(df_subset$Time, df_subset$Global_active_power, 
     type = "l",  # Line plot
     xlab = "",   # No x-axis label
     ylab = "Global Active Power (kilowatts)",
     main = "Plot 2", 
     xaxt = "n")

# Add custom x-axis with weekdays
axis.POSIXct(1, 
             at = seq(as.POSIXct("2007-02-01"), as.POSIXct("2007-02-03 23:59:59"), by = "day"), 
             format = "%a")

# Close the PNG device
dev.off()
