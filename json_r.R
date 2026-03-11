#Installing and loading the required package
install.packages("jsonlite")
library(jsonlite)

#Setting working directory 
setwd("C:/Users/Rohan Lekhak/Desktop/Programming for data science/json file")

#Read the existing inventory JSON file
inventory <- fromJSON("inventory.json")

print("Original Inventory:")
print(inventory)

#Add a new product to the inventory
new_product <- data.frame(
  product_id = 105,
  name = "Wireless Mouse",
  category = "Electronics",
  price = 799,
  stock = 50
)

# Append new product to inventory
updated_inventory <- rbind(inventory, new_product)

#Writing updated inventory to a new JSON file
write_json(updated_inventory, "updated_inventory.json", pretty = TRUE)

# Step 6: Verify updated JSON file
verified_inventory <- fromJSON("updated_inventory.json")

print("Updated Inventory:")
print(verified_inventory)