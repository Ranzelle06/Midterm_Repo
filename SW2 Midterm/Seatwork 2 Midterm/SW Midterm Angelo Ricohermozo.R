data <- read.csv("Seatwork 2 Midterm/midetrmseatwork_data.csv")
MeanFunction <- function(data, removeNA = TRUE){
  col_num <- ncol(data)
  means_per_col <- numeric(col_num)
  for(element in 1:col_num){
    means_per_col[element] <- mean(data[ ,element], na.rm = removeNA)
  }
  means_per_col
}
MeanFunction(data)


subset_data <- funtion(data$Wind, data$Ozone = 25, data$Temp = 70){
  subset_param <- (data$Wind>data$Ozone)&(data$Wind<data$Temp)
  data$Wind[subset_param]
}
subset_data(x)



#1

data <- read.csv("Seatwork 2 Midterm/midetrmseatwork_data.csv")
subset_data <- function(data, min, max){
  y <- ifelse(data$Ozone>min & data$Temp>max , data$Wind, NA)
  mean(y, na.rm = TRUE)
}
 subset_data(data, 25, 70)
 
 
#2

MeanFunction <- function(data, Month, Day ){
  z <- 0
  row_num <- nrow(data)
  for(row in 1:row_num){
    z[row] <- ifelse(data[row, 5]==Month & data[row, 6]==Day, data[row,4], NA)
  }
  mean(z, na.rm = TRUE)
}
MeanFunction(data, 9, 8)
 
MinFunction <- function(data, Month){
  z<-0
  row_num <- nrow(data)
  for(row in 1:row_num){
    z[row] <- ifelse(data[row, 5]== Month, data[row, 1], NA)
  }
  min(z , na.rm =TRUE)
}

MinFunction(data, 5)
MinFunction(data, 6)
MinFunction(data, 7)
MinFunction(data, 8)
MinFunction(data, 9)
MinFunction(data, 10)








