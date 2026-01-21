#function to generate a fibonacci series upto user specified number 
gen_fib<-function(n){
  a<-0
  b<-1
  
  for(i in 1:n){
    cat(a,", ")
    temp<-a+b
    a<-b
    b<-temp
  }
  
  cat("\n")
}

#get the user input 
a<-readline(prompt = "enter the number")
a<-as.integer(a)

#test the function 
gen_fib(a)
