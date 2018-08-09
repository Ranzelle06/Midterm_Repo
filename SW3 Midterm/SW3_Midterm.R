data <- read.csv("midetrmseatwork_data.csv")

#1
value<-function(data, row_num, column_name){
  data[row_num, column_name]
}
value(data, 82, "Wind")


#2
total_missing <- function(dataset, column_name){
  table(is.na(dataset[ ,column_name]))
}
total_missing(data, "Wind")


#3
values<- function(data, column_name, min = 1, max=nrow(dataset)){
  mean(na.omit(data[min, column_name]), na.omit(data[max,column_name]))
}
values(data, "Ozone",20,70)
