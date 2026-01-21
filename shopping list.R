# Initialize an empty shopping list
shopping_list <- list()

# Function to add items to the shopping list
add_item <- function(item) {
  shopping_list <<- c(shopping_list, item)
}

# Function to view the shopping list
view_list <- function() {
  print(shopping_list)
}

# Example usage
add_item("Milk")
add_item("Bread")

#print the list 
view_list() 

#remove an item
shopping_list[-1]

#print the list again after deletion 
view_list()

