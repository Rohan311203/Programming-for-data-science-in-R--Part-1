# Initialize customer purchase list
customers <- list(
  Alice = c(200, 150, 300),
  Bob = c(100, 80, 150),
  Charlie = c(250, 300, 100)
)

# Function to add a new customer and their purchases
add_customer <- function(name, purchases) {
  customers[[name]] <<- purchases
}

# Function to remove a customer
remove_customer <- function(name) {
  customers[[name]] <<- NULL
}

# Function to calculate total purchases per customer
total_purchases <- function() {
  sapply(customers, sum)
}

# Function to find highest and lowest purchasing customer
find_extremes <- function() {
  totals <- total_purchases()
  list(
    highest = names(which.max(totals)),
    lowest = names(which.min(totals))
  )
}

# Example usage
add_customer("David", c(400, 220))
remove_customer("Bob")

totals <- total_purchases()
extremes <- find_extremes()

# Display results
cat("Total purchases:\n")
print(totals)

cat("\nHighest purchaser:", extremes$highest, "\n")
cat("Lowest purchaser:", extremes$lowest, "\n")
