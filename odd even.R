# creating a function to check odd or even
check_odd_even <- function(a) {
  if (a %% 2 == 0) {
    cat("The entered number is even\n")
  } else {
    cat("The entered number is odd\n")
  }
}

# get user input
a <- readline(prompt = "Enter the number: ")
a <- as.integer(a)

# test the function
check_odd_even(a)
