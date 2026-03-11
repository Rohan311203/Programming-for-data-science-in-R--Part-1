#loading required library
library(dplyr)

#Creating Customers dataset
customers <- data.frame(
  CustomerName = c("John Doe","Jane Smith","Robert Brown","Emily Davis","Michael Green"),
  Email = c("john.doe@example.com","jane.smith@example.com","robert.brown@example.com","emily.davis@example.com","michael.green@example.com")
)

# Step 3: Create Purchases dataset
purchases <- data.frame(
  CustomerName = c("John Doe","Jane Smith","Robert Brown","Sarah Johnson","Emily Davis"),
  PurchaseAmount = c(150,200,120,180,220),
  Date = as.Date(c("2023-01-01","2023-01-02","2023-01-03","2023-01-04","2023-01-05"))
)

# View datasets
View(customers)
View(purchases)



#performing left join 
left_join_result <- left_join(customers, purchases, by = "CustomerName")
print("Left Join Result:")
print(left_join_result)

#performing right join 
right_join_result <- right_join(customers, purchases, by = "CustomerName")
print("Right Join Result:")
print(right_join_result)

#performing inner join 
inner_join_result <- inner_join(customers, purchases, by = "CustomerName")
print("Inner Join Result:")
print(inner_join_result)

#performing full join (Outer Join)
full_join_result <- full_join(customers, purchases, by = "CustomerName")
print("Full Join Result:")
print(full_join_result)