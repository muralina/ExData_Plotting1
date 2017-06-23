##file name stored in variable
consfile <- "household_power_consumption.txt"

##read data and subset the data and plot
data <- read.table(consfile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(subData$Global_active_power)
dt <- strptime(paste(subData$Date, subData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
gPower <- as.numeric(subData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(dt, gPower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
