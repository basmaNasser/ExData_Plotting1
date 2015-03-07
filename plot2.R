source("read_data.R")
plot2 <- function(directory){
        #read data 
        data <-read_data(directory)
        
        
        png("plot2.png", width= 400, height= 400)
        
        datetime <- paste(as.Date(data$Date), data$Time)
        data$Datetime <- as.POSIXct(datetime)
        
        
        plot( data$Datetime,data$Global_active_power,
           
             xlab ="",
             ylab = "Global Active Power (kilowatts)",
             type ="l"
             )
        
        #close device
        dev.off()
        
}
