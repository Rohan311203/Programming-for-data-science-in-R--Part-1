#install and load the required library
install.packages("tidyr")
library(tidyr)


# Create wide format dataset
wide_data <- data.frame(
  ID = c(1,2,3),
  Year2019 = c(10,15,20),
  Year2020 = c(12,18,24)
)

# View wide dataset
print("Wide Format Data:")
print(wide_data)

# Convert wide format to long format using gather()
long_data <- gather(wide_data, key = "Year", value = "Value", Year2019, Year2020)

print("Long Format Data:")
print(long_data)

# Create long format dataset
long_dataset <- data.frame(
  ID = c(1,1,2,2,3,3),
  Year = c(2019,2020,2019,2020,2019,2020),
  Value = c(10,12,15,18,20,24)
)

print("Original Long Data:")
print(long_dataset)

# Convert long format to wide format using spread()
wide_dataset <- spread(long_dataset, key = "Year", value = "Value")

print("Wide Format Data:")
print(wide_dataset)