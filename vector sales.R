#creating  vector with sales figures in thousands
sales<-c(12,15,10,18,20,22,25,28,30,35,40,45)

#total sales for the year
total_sales<-sum(sales)

#average monthly sales
avg_sales<-mean(sales)

#months_sales_above25k
months_above_25k<-which(sales>25)

#print results
cat("total sales for the year:",total_sales,"\n\n")
cat("avg monthly sales for the year:",avg_sales,"\n\n")
cat("months with sales above 25k:",months_above_25k,"\n\n")
