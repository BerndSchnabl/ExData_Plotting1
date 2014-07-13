setwd("~/R/Coursera/assignments/C04-AW1")

d <- read.csv("household_power_consumption.txt",sep=";", na.strings="?",header=TRUE,
              colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
              )
d$DateTime <- strptime(paste(d$Date,d$Time),format="%d/%m/%Y %H:%M:%S")

d$Date1 <- as.Date(d$Date, format="%d/%m/%Y")
d1 <- d[ (d$Date == "1/2/2007") | (d$Date == "2/2/2007"),]

##png(filename="plot1.png",width=480,height=480,units = "px")
hist( d1$Global_active_power, 
      col = "red",
      main = "Global Actice Power",
      xlab = "Global Active Power (kilowatts)", 
      ylab = "Frequency"
)


##dev.off()
