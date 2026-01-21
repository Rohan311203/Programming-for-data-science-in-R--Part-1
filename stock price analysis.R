# given vector
numbers <- c(5, 3, 8, 3, 9, 5, 2, 8)

# 1. find the unique elements
unique_elements <- unique(numbers)

# 2. identify duplicated elements
duplicated_elements <- numbers[duplicated(numbers)]

# 3. remove duplicates and keep only one occurrence
numbers_no_duplicates <- unique(numbers)

# printing results
cat("Unique elements:", unique_elements, "\n")
cat("Duplicated elements:", duplicated_elements, "\n")
cat("Vector without duplicates:", numbers_no_duplicates, "\n")
