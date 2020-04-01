#WEEK 1 - PLOT 1
setwd (C:/Users/sergi/Desktop/Curso R coursera")
df<-read.table("household_power_consumption.txt", header = T, sep=";", comment.char="%", stringsAsFactors=FALSE, na.strings="?") ## reads data (given command)
dataplott<- subset(df, df$Date=="1/2/2007"|df$Date=="2/2/2007") # select specific time and date from the whole set of data
png(filename="Plot1.png",width = 480, height = 480 ) #create png file with plot1 name and specified dimension
hist(dataplott$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frecuency", main="Global Active Power") #building histogram 
dev.off()