# Initial library data
library_system <- list(
  "The Hobbit" = c("Alice", "Bob"),
  "1984" = c("Charlie", "Alice"),
  "Moby Dick" = c("Bob")
)

# Function to add a new book with borrowers
add_book <- function(book, borrowers) {
  library_system[[book]] <<- borrowers
}

# Function to remove a book from the system
remove_book <- function(book) {
  library_system[[book]] <<- NULL
}

# Function to calculate total number of borrowers for each book
total_borrowers <- function() {
  sapply(library_system, length)
}

# Function to find book with highest and lowest number of borrowers
find_extremes <- function() {
  totals <- total_borrowers()
  list(
    highest = names(which.max(totals)),
    lowest = names(which.min(totals))
  )
}

# Example usage
add_book("Dune", c("Eve", "Frank", "Bob"))
remove_book("Moby Dick")

totals <- total_borrowers()
extremes <- find_extremes()

# Display results
cat("Total borrowers per book:\n")
print(totals)

cat("\nBook with highest borrowers:", extremes$highest, "\n")
cat("Book with lowest borrowers:", extremes$lowest, "\n")
