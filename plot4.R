source("read_data.R")

plot4 <- function(directory){
        data <-read_data(directory)
        
        png("plot4.png", width= 400, height= 400)
        
        datetime <- paste(as.Date(data$Date), data$Time)
        data$Datetime <- as.POSIXct(datetime)
        par(mfcol=c(2,2), mar=c(4,4,2,1))
        
        plot( data$Datetime,data$Global_active_power,
                    xlab ="",
              ylab = "Global Active Power (kilowatts)",
              type ="l"
        )
        
        with(data,{
                plot( data$Datetime,data$Sub_metering_1,xlab ="",
                      ylab = "energy sub metering",type ="l")
                lines( data$Datetime,data$Sub_metering_2,col= "red")
                lines( data$Datetime,data$Sub_metering_3, col= "blue")
        })
        legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",
               legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
        
        plot( data$Datetime,data$Voltage,
              xlab ="datetime",
              ylab = "voltage",
              type ="l"
        )
        
        plot( data$Datetime,data$Global_reactive_power,
              xlab ="datetime",
              ylab = "Global_reactive_power",
              type ="l"
        )
        
        dev.off()
        
}
