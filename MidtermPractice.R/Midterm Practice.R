#function 
add5number <- function (num1,num2,num3,num4,num5){
  sum = num1 + num2 +num3 +num4 +num5
  sum 
  
}
subset_data <- function (datasit,min_datasit=15,max_datasit=100){
  subset_param <-(datasit>min_datasit)&(datasit<max_datasit)
  datasit[subset_param]
  
}

MeanFunction <- function (dataset_csv, removeNA=TRUE){
  col_num <-ncol(dataset_csv)
  means_per_col = numeric (col_num)
  for(element in 1:col_num){
    means_per_col[element] <- mean(dataset_csv[ , element], na.rm = removeNA)
  }
   means_per_col 
  
  
}
