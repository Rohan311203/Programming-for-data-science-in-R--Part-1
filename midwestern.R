library(ggplot2)

#load dataset
data("midwest")

#scatter-plot with trend line
ggplot(midwest, aes(x=percollege, y=percadultpoverty, color=state))+geom_point(alpha = 0.6) + geom_smooth(method = "lm", se = FALSE, color = "black") +
  labs(title = "College Education vs Adult Poverty",x = "Percent College Educated", y = "Percent Adult Poverty")

#bar chart for population by state
ggplot(midwest, aes(x=state, y=poptotal, fill=state))+geom_bar(stat = "identity") + 
  labs(title = "total population by state",x = "State", y = "Population")

#hexagonal heat map
ggplot(midwest, aes(x = percollege, y = percadultpoverty)) +geom_hex() +
  labs(title = "Hexbin Plot: College Education vs Poverty")

#shared mapping 
ggplot(midwest, aes(x = percollege)) +
  geom_point(aes(y = percadultpoverty), color = "blue") +
  geom_point(aes(y = percchildbelowpovert), color = "red") +
  labs(title = "Adult vs Child Poverty Comparison",x = "Percent College Educated",y = "Poverty Percentage")

#with custom color
ggplot(midwest, aes(x = percollege, y = percadultpoverty)) +
  geom_point(color = "red", alpha = 0.4) +
  labs(title = "Customized Scatter Plot")
                                                                                                                                    