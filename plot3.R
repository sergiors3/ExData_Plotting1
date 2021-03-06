#WEEK 1 - PLOT 3
#Sys.setenv("LANGUAGE"="En")  // Only if necessary: set english as default language (for graphics)
#Sys.setlocale("LC_ALL", "English") // set english as default language (for graphics)
setwd (C:/Users/sergi/Desktop/Curso R coursera")
df<-read.table("household_power_consumption.txt", header = T, sep=";", comment.char="%", stringsAsFactors=FALSE, na.strings="?") ## reads data (given command)
dataplott<- subset(df, df$Date=="1/2/2007"|df$Date=="2/2/2007") # selection of specific dates from the whole set of data
dataplott$Date <- as.Date(dataplott$Date, format="%d/%m/%Y") #Date conversion into d/m/Y format
dataplott <- transform(dataplott, timeconversion=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S") #new column in variable dataplot with date and time in the right format 
png(filename="Plot3.png",width = 480, height = 480 ) #create png file with plot3 name and specified dimension
plot(dataplott$timeconversion,dataplott$Sub_metering_1, xlab= "", ylab = "Energy sub metering", type="n") # empty graphic
lines(dataplott$timeconversion, dataplott$Sub_metering_1, col = "black") # sub_metering_1
lines(dataplott$timeconversion, dataplott$Sub_metering_2, col = "red") # sub_metering_2
lines(dataplott$timeconversion, dataplott$Sub_metering_3, col = "blue") # sub_metering_3
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"),lty="solid")
dev.off()
