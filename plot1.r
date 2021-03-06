df <- read.csv2("/home/thomas/Coursera/Exploratory_Data_Analysis/Assignments/household_power_consumption.txt")
df$Date <- as.Date(df$Date,format="%d/%m/%Y")
df.sub2 <- subset(df, Date == as.Date("2007-02-01") | Date == as.Date("2007-02-02") )
df.sub2$Global_active_power<- as.numeric(as.character(df.sub2$Global_active_power))
png(file="plot1.png")
hist(df.sub2$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col = "red")
#dev.copy(png,file="./plot1.png")
dev.off()
