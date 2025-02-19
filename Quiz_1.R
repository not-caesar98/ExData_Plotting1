data <- download.file(url = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile = "Electric Power Consumption.zip")

unzip("Electric Power Consumption.zip")

rm("Electric Power Consumption.zip")

# Load necessary package
library(data.table)

# Read data (assuming it's a semicolon-separated file)
df <- fread("household_power_consumption.txt", na.strings = "?", sep = ";")

# Convert Date and Time columns
df$Date <- as.Date(df$Date, format = "%d/%m/%Y")
df$Time <- as.POSIXct(paste(df$Date, df$Time), format = "%Y-%m-%d %H:%M:%S")

# Subset the required date range (2007-02-01 to 2007-02-02)
df_subset <- df[df$Date >= as.Date("2007-02-01") & df$Date <= as.Date("2007-02-02"), ]

# Convert Global Active Power to numeric
df_subset$Global_active_power <- as.numeric(df_subset$Global_active_power)


