#creating a function to calculate the degree in F when c is given
calf<-function(c){
  return((c*(9/5))+32)
}
#testing the function
f1=calf(100)
#printing the result
cat("thetempinFwhentheinputis100degreecelciusis",f1,"\n")