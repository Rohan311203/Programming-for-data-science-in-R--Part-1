#crteating the vectors of height 

heights<-c(150,160,165,155,170,175,180)

#mean and median
mean_height<-mean(heights)
median_height<-median(heights)

#max and min height
maximum_height<-max(heights)
minimum_height<-min(heights)

#print results
cat("the mean of the heights is:",mean_height,"\n\n")
cat("the median of the heights is:", median_height,"\n\n")
cat("the maximum height is:",maximum_height,"\n\n")
cat("the minimum height is:",minimum_height,"\n\n")
