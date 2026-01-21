# function to calculate the square of a number
calculate_square<-function(number){
  return(number^2)
}
# testing the function with different inputs
sq1 <-calculate_square(5)
sq2 <-calculate_square(-4)
sq3 <-calculate_square(0)
sq4 <-calculate_square(3.5)
# printing the results
cat("Squareof5:",sq1,"\n")
cat("Squareof-4:",sq2,"\n")
cat("Squareof0:",sq3,"\n")
cat("Squareof3.5:",sq4,"\n")