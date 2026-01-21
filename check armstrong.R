#function to check if armstrong
is_armstrong<-function(num){
  #unpacking each digit in the entered number ibnto a list 
  digits<-as.numeric(unlist(strsplit(as.character(num),"")))
  pow<-length(digits)
  sum_val<-sum(digits^pow)
  
  if(sum_val==num){
    cat("Entered number is armstrong\n")
  }
  else{
    cat("Entered number is not armstrong\n")
  }
}

#testing function
print(is_armstrong(153))  # Armstrong number
print(is_armstrong(370))  # Armstrong number
print(is_armstrong(9474)) # Armstrong number
print(is_armstrong(123))  # Not Armstrong
