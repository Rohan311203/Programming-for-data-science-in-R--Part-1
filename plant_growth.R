#load the required library
library(ggplot2)

#creating a dataframe for the given scenario
plant_data <- data.frame(
  Plant_ID = c(1, 2, 3, 4, 5),
  Growth_Rate = c(3.2, 1.8, 2.6, 0.9, 3.8),
  Condition_Label = c("Sunny", "Shade", "Rainy", "Drought", "Cloudy")
)

#creating a scatter plot with labels
ggplot(plant_data, aes(x=Plant_ID, y=Growth_Rate))+geom_point(color="dodgerblue", size=4)+geom_text(aes(label = Condition_Label),color = "darkorange",vjust = 1.5) +
  labs(title = "Scatter Plot of Plant Growth Data",x = "Plant ID",y = "Growth Rate")


