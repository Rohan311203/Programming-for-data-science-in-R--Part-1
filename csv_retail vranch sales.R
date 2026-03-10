#creating vectors for each column

BranchID <- c("BR001","BR002","BR003","BR004","BR005","BR006","BR007","BR008","BR009","BR010")
BranchName <- c("Vellore Town","Chennai Central","Mumbai Andheri","Pune Hinjewadi","Delhi Karol Bagh","Noida Sector 18","Kolkata Park St","Hyderabad Hitech","Ahmedabad CG Rd","Jaipur MI Road")
Region <- c("South","South","West","West","North","North","East","South","West","North")
Segment <- c("Grocery","Electronics","Grocery","Home","Apparel", "Electronics","Grocery","Home","Apparel","Home")
Q1 <- c(120,140,110,95,150,132,105,128,115,108)
Q2 <- c(115,150,118,100,142,138,107,131,120,112)
Q3 <- c(130,145,122,108,155,136,112,134,125,118)
Q4 <- c(125,160,120,112,158,140,115,137,129,121)
# duplicate column
Q3_Sales <- Q3

#creating data frames for the vectors above 

branches <- data.frame(
  BranchID,
  BranchName,
  Region,
  Segment,
  Q1,
  Q2,
  Q3,
  Q4,
  Q3_Sales,
  stringsAsFactors = FALSE
)

str(branches)
head(branches)

#creating a csv file for the above data frame
write.csv(branches, "branches_input.csv", row.names = FALSE, na = "")

#reading the csv file 
branches_in <- read.csv("branches_input.csv", stringsAsFactors = FALSE)

# Validate columns
required_cols <- c("BranchID","BranchName","Region","Segment","Q1","Q2","Q3","Q4")
if(!all(required_cols %in% names(branches_in))){
  stop("Required columns missing in CSV")
}

# Ensure numeric type
branches_in$Q1 <- as.numeric(branches_in$Q1)
branches_in$Q2 <- as.numeric(branches_in$Q2)
branches_in$Q3 <- as.numeric(branches_in$Q3)
branches_in$Q4 <- as.numeric(branches_in$Q4)


# Sum of quarterly sales
branches_in$Sum <- rowSums(branches_in[,c("Q1","Q2","Q3","Q4")])

# Average
branches_in$Average <- branches_in$Sum / 4

# Rank (highest total = rank 1)
branches_in$Rank <- rank(-branches_in$Sum, ties.method = "min")

# Sort by rank and BranchID
branches_sorted <- branches_in[order(branches_in$Rank,
                                     branches_in$BranchID),]

# Save ranked output
write.csv(branches_sorted, "branches_by_rank.csv", row.names = FALSE)

#finding the quaterwise average 

test_cols <- c("Q1","Q2","Q3","Q4")
quarter_avg <- colMeans(branches_in[,test_cols],na.rm = TRUE)
quarter_df <- data.frame(Quarter = names(quarter_avg),Average = as.numeric(quarter_avg))

write.csv(quarter_df,"quarter_wise_averages.csv",row.names = FALSE)


#region-wise average
region_avg <- aggregate(branches_in[,test_cols],by = list(Region = branches_in$Region),FUN = function(x) mean(x, na.rm = TRUE))

# Overall regional average
region_avg$Overall_Average <- rowMeans(region_avg[,test_cols],na.rm = TRUE)

# Sort by overall average
region_avg <- region_avg[order(-region_avg$Overall_Average),]
write.csv(region_avg,"region_wise_averages.csv",row.names = FALSE)

