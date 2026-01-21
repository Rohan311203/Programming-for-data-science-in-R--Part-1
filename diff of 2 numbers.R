#functiont of diff of two numbers
subt<-function(a,b){
  return(a-b)
}
#testing the subtraction function
result1<-subt(5,10)
result2<-subt(-3,7)
result3<-subt(0,0)
result4<-subt(3.5,2.1)
#printing thee result of 2 numbers
cat("resultofsubtracting5and10:",result1,"\n")
cat("resultofsubtracting-3and7:",result2,"\n")
cat("resultofsubtracting0and0:",result3,"\n")
cat("resultofsubtracting3.5and2.1:",result4,"\n")