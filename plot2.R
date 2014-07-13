setwd("~/R/Coursera/assignments/C04-AW1/ExData_Plotting1")

d <- read.csv("household_power_consumption.txt",sep=";", na.strings="?",header=TRUE,
              colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
)
d$DateTime <- strptime(paste(d$Date,d$Time),format="%d/%m/%Y %H:%M:%S")

d$Date1 <- as.Date(d$Date, format="%d/%m/%Y")
d1 <- d[ (d$Date == "1/2/2007") | (d$Date == "2/2/2007"),]

png(filename="plot2.png",width=480,height=480,units = "px")
Sys.setlocale("LC_TIME", "English") ## x axis time values in english
plot( d1$DateTime, ## X axis
      d1$Global_active_power,  ## y axis
      type = "l", ## line
      ylab = "Global Active Power (kilowatts)", 
      xlab = ""
)


dev.off()
