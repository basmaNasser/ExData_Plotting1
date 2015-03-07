source("read_data.R")
plot3 <- function(directory){
        #read data 
        data <-read_data(directory)
        
        png("plot3.png", width= 400, height= 400)
        datetime <- paste(as.Date(data$Date), data$Time)
        data$Datetime <- as.POSIXct(datetime)
        
        with(data,{
                plot( data$Datetime,data$Sub_metering_1,xlab ="",
                      ylab = "energy sub metering",type ="l")
                lines( data$Datetime,data$Sub_metering_2,col= "red")
                lines( data$Datetime,data$Sub_metering_3, col= "blue")
        })
        #define legend
        legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2,
               legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
        
        #close device
        dev.off()
        
}
