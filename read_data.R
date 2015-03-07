read_data<- function(directory){
        
        
        data <- read.table(directory,sep = ";",na.strings = "?",header= TRUE)
        
        data$Date <- as.Date(data$Date, "%d/%m/%Y")
        
        dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
        data <- subset(data, Date %in% dates)
        return(data)
        
}
