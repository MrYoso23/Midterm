seatworkdata = read.csv ("midetrmseatwork_data.csv")
#1
value_of_wind <- function (data,nrow,ncol){
  data[nrow,ncol]
}
value_of_wind (seatworkdata,82, "Wind")

#2
missing_value <- function(data,wind_column){
  table(is.na(data[ ,wind_column]))
}
missing_value(seatworkdata, "Wind")

#3

mean_value <- function (dataset, ncol, min =1, max=nrow(dataset)){
  mean(na.omit(dataset[min, ncol]), na.omit(dataset[max,ncol]))
}
mean_value (seatworkdata, "Ozone", 20,70)
