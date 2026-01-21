# function to make full name from first and last names
make_full_name<-function(first_name,last_name){
  return(paste(first_name,last_name))
}
# testing the function with different inputs
name1<-make_full_name("John","Doe")
name2<-make_full_name("Alice","Smith")
name3<-make_full_name("Rahul","Sharma")
name4<-make_full_name("Mary","Anne")
# printing the results
cat("Fullname1:",name1,"\n")
cat("Fullname2:",name2,"\n")
cat("Fullname3:",name3,"\n")
cat("Fullname4:",name4,"\n")