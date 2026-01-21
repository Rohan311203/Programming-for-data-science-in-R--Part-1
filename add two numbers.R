#function to add 2 numbers
add<-function(a,b){
  return(a+b)
}
#testing the function
result1<-add(5,10)
result2<-add(-3,7)
result3<-add(0,0)
result4<-add(3.5,2.1)
#print the results of addition of 2 numbers
cat("resultofadding5and10:",result1,"\n")
cat("resultofadding-3and7:",result2,"\n")
cat("resultofadding0and0:",result3,"\n")
cat("resultofadding3.5and2.1:",result4,"\n")