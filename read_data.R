read_data<- function(directory){
        
        #read data from original file
        data <- read.table(directory,sep = ";",na.strings = "?",header= TRUE)
        
        # change date format d/m/y
        data$Date <- as.Date(data$Date, "%d/%m/%Y")
        # get data from 1/2/2007 to 2/2/2007
        dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
        #get data in specified range
        data <- subset(data, Date %in% dates)
        
        return(data)
        
}
