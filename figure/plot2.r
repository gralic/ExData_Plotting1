cat("Reading file, please wait...\n")
hpc <- read.table("household_power_consumption.txt", stringsAsFactors = FALSE, header=TRUE, sep=';')
hpc2 <- subset(hpc, Date=="1/2/2007" | Date=="2/2/2007")

png(file="plot2.png")
dt <- strptime(paste(hpc2$Date, hpc2$Time), "%d/%m/%Y %H:%M:%S")
plot(dt, as.numeric(hpc2$Global_active_power), type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
