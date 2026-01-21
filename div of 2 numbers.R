#funtion to divide two numbers
div<-function(a,b){
  return(a/b)
}
#testing the div function
result1<-div(5,10)
result2<-div(-3,7)
result3<-div(0,0)
result4<-div(3.5,2.1)
#printing theresult
cat("resultofdiv5and10:",result1,"\n")
cat("resultofdiv-3and7:",result2,"\n")
cat("resultofdiv0and0:",result3,"\n")
cat("resultofdiv3.5and2.1:",result4,"\n")