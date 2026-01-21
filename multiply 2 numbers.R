#funtion to multiply two numbers
mul<-function(a,b){
  return(a*b)
}
#testing the mulfunction
result1<-mul(5,10)
result2<-mul(-3,7)
result3<-mul(0,0)
result4<-mul(3.5,2.1)
#printing the result
cat("resultofmul5and10:",result1,"\n")
cat("resultofmul-3and7:",result2,"\n")
cat("resultofmul0and0:",result3,"\n")
cat("resultofmul3.5and2.1:",result4,"\n")