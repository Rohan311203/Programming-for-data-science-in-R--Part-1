#function to get integer input as text and to return it as integer 
getintinpt<-function(){
  userint<-readline(prompt = "Enter the number")
  inint<-as.integer(userint)
  return(inint)
}

# Test the function with different sets of inputs 
cat("Test Case 1: User input is '42'\n")
cat("User input as integer:", getintinpt(), "\n\n") 
cat("Test Case 2: User input is '100'\n") 
cat("User input as integer:", getintinpt(), "\n\n") 
cat("Test Case 3: User input is '7'\n") 
cat("User input as integer:", getintinpt(), "\n\n")
