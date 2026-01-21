# function to get float input and return it as numeric
getfloatinpt <- function() {
  usertxt <- readline(prompt = "Enter a floating-point number: ")
  floatnum <- as.numeric(usertxt)
  return(floatnum)
}

# Testing the function with different sets of inputs
cat("Test Case 1: User input is '3.14'\n")
cat("Returned numeric:", getfloatinpt(), "\n\n")

cat("Test Case 2: User input is '45.67'\n")
cat("Returned numeric:", getfloatinpt(), "\n\n")

cat("Test Case 3: User input is '0.001'\n")
cat("Returned numeric:", getfloatinpt(), "\n\n")
