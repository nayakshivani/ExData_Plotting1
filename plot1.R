power_data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetpower_data <- power_data[power_data$Date %in% c("1/2/2007","2/2/2007") ,]

globalActivePower <- as.numeric(subsetpower_data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()