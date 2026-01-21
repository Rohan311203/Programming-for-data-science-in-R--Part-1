# creating vector for temp in Celsius
temps_celsius <- c(0, 20, 25, 30, 35, 40)

# count the number of elements in the vector 
len_vec <- length(temps_celsius)

# convert each temp to Fahrenheit
for(i in 1:len_vec){
  temps_celsius[i] <- (temps_celsius[i] * (9/5)) + 32
}

# printing the converted vector 
temps_celsius
