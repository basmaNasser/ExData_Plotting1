source("read_data.R")
plot1 <- function(directory){
        data <-read_data(directory)
        
        png("plot1.png", width=400, height=400)
        hist(data$Global_active_power,
             main = "Global Active Power",
             xlab = "Global Active Power (kilowatts)",
             col = "red")
        dev.off()
        
}
