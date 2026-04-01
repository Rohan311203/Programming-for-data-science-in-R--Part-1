#installing and loading the required packages

install.packages("plotly")

library(ggplot2)
library(plotly)

#load the required data set
data("iris")

#making a static scatterplot

p<- ggplot(iris, aes(x=Sepal.Width, y=Petal.Length, color=Species))+geom_point()+
  labs(title="Seapl Width vs Petal Width",x="Sepal Width", y="Petal Width")

#displaying the plot
p

#making the plot interactive 
ggplotly(p)

#making the plot using plotly
plot_ly(
  data = iris,
  x = ~Sepal.Width,
  y = ~Petal.Width,
  color = ~Species,
  type = "scatter",
  mode = "markers"
) %>%
  layout(
    title = "Iris Data Set Visualization",
    xaxis = list(title = "Sepal Width", ticksuffix = " cm"),
    yaxis = list(title = "Petal Width", ticksuffix = " cm")
  )


