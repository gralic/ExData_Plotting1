cat("Reading file, please wait...\n")
hpc <- read.table("household_power_consumption.txt", stringsAsFactors = FALSE, header=TRUE, sep=';')
hpc2 <- subset(hpc, Date=="1/2/2007" | Date=="2/2/2007")

png(file="plot1.png")
with(hpc2, hist(as.numeric(Global_active_power), col='Red',
 main=paste("Global Active Power"), xlab="Global Active Power (kilowatts)"))
dev.off()
