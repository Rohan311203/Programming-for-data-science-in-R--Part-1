#loading the required library
library(tidyr)

# Creating the messy dataset
data <- data.frame(
  StudentID = c(1,2,3,4),
  Name = c("Alice","Bob","Charlie","Dana"),
  Math_2020 = c(85,90,NA,70),
  Math_2021 = c(88,NA,78,75),
  Eng_2020 = c(80,92,85,NA),
  Eng_2021 = c(82,95,NA,77),
  ExtraInfo = c("A-2020-S1","B-2021-S2","C-2020-S1",NA)
)

print("Original Messy Data:")
print(data)

# Step 3: Convert wide subject-year columns into long format
long_data <- gather(data, key = "Subject_Year", value = "Score",Math_2020, Math_2021, Eng_2020, Eng_2021)

print("After Gather (Wide to Long):")
print(long_data)

# Step 4: Separate Subject_Year column into Subject and Year
separated_data <- separate(long_data, Subject_Year, into = c("Subject","Year"), sep = "_")

print("After Separate:")
print(separated_data)

# Step 5: Spread subject column back to wide format
spread_data <- spread(separated_data, key = "Subject", value = "Score")

print("After Spread:")
print(spread_data)

# Step 6: Separate ExtraInfo column into Grade, YearInfo, Section
extra_sep <- separate(spread_data, ExtraInfo, into = c("Grade","YearInfo","Section"), sep = "-", fill = "right")

print("After Separating ExtraInfo:")
print(extra_sep)

# Step 7: Unite columns (example: combine Grade and Section)
united_data <- unite(extra_sep, "Grade_Section", Grade, Section, sep = "_", remove = FALSE)

print("After Unite:")
print(united_data)

# Step 8: Fill missing values downward
filled_data <- fill(united_data, Grade_Section)

print("After Fill:")
print(filled_data)

# Step 9: Remove rows with missing values
clean_data <- drop_na(filled_data)

print("Final Clean Data:")
print(clean_data)