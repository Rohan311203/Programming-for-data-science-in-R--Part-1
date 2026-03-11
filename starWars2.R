# Loading the library and dataset
library(dplyr)
data("starwars", package = "dplyr")

# Select required columns
sw_data <- starwars %>%
  select(name, species, height, mass, homeworld, gender)

# Filter species having more than 2 characters
sw_filtered <- sw_data %>%
  group_by(species) %>%
  filter(n() > 2) %>%
  ungroup()

# Create new columns: height in meters and weight categories
sw_transformed <- sw_filtered %>%
  mutate(
    height_m = height / 100,
    weight_category = case_when(
      mass < 50 ~ "Underweight",
      mass >= 50 & mass < 80 ~ "Normal",
      mass >= 80 & mass < 100 ~ "Overweight",
      mass >= 100 ~ "Obese",
      TRUE ~ NA_character_
    )
  )

# Average height for each species–gender combination
avg_height_species_gender <- sw_transformed %>%
  group_by(species, gender) %>%
  summarise(avg_height = mean(height_m, na.rm = TRUE))

# Top 3 species with highest average height
top3_species <- sw_transformed %>%
  group_by(species) %>%
  summarise(avg_height = mean(height_m, na.rm = TRUE)) %>%
  arrange(desc(avg_height)) %>%
  slice(1:3)

# View results
View(sw_transformed)
View(avg_height_species_gender)
View(top3_species)