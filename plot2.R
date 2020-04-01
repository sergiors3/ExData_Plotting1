#WEEK 1 - PLOT 2
setwd (C:/Users/sergi/Desktop/Curso R coursera")
df<-read.table("household_power_consumption.txt", header = T, sep=";", comment.char="%", stringsAsFactors=FALSE, na.strings="?") ## reads data (given command)
dataplott<- subset(df, df$Date=="1/2/2007"|df$Date=="2/2/2007") # selection of specific dates from the whole set of data
dataplott$Date <- as.Date(dataplott$Date, format="%d/%m/%Y") #Date conversion into d/m/Y format
dataplott <- transform(dataplott, timeconversion=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S") #new column in variable dataplot with date and time in the right format 
png(filename="Plot2.png",width = 480, height = 480 ) #create png file with plot2 name and specified dimension
plot(dataplott$timeconversion,dataplott$Global_active_power, type="l", xlab= "", ylab = "Global Active Power (kilowatts)") #plot design
dev.off()