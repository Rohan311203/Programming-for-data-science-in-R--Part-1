#installing reqd packages and loading the data set and the library
install.packages("dplyr")
library(dplyr)
data("starwars", package = "dplyr")
View(starwars)

#find the nrow, ncols, dim, head, and tail
nrow(starwars)
ncol(starwars)
dim(starwars)
head(starwars)
tail(starwars)

#select specified columns from the dataset
starwars_data<-starwars %>%
  select(name, species, height, mass, homeworld)
View(starwars_data)

#filtering the data to select those records where species=human
human_data<- starwars_data %>%
  filter(species=="Human")
View(human_data)

#adding a new col BMI
human_data<-human_data %>%
  mutate(BMI= mass/(height/100)^2)
View(human_data)

#summarize data: find avg BMI for human characters
summary_data<- human_data %>%
  group_by(homeworld) %>%
  summarize(avg_BMI=mean(BMI, na.rm=TRUE))
View(summary_data)


