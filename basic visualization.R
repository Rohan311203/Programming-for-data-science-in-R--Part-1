#installiong and loading the required library
install.packages("ggplot2")
library(ggplot2)


#creating a sample dataset 
df<- data.frame(
  x=1:10,
  y = c(2,5,3,7,9,4,6,8,10,12),
  category = rep(c("A","B"), each = 5)
)

#making a scatter plot
ggplot(df, aes(x=x, y=y))+geom_point()+labs(title = "x vs y")

#making a line graph
ggplot(df, aes(x=x, y=y))+geom_line(color="red", linewidth = 5)+labs(title="X vs Y")

#making a bar graph 
ggplot(df, aes(x=x, y=y))+geom_bar(stat="identity", fill="blue")+labs(title = "X vs Y")

#making a scatter plot with smooth line
ggplot(df, aes(x=x, y=y))+geom_point()+labs(title = "x vs y")+geom_smooth(method = "lm", se=FALSE)


